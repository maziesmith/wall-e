-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 24, 2019 at 08:57 AM
-- Server version: 10.2.25-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u288413145_wallE`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `ip` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `ip`) VALUES
('sarasu', 'a5e3bfb209fedbf14f6c5cd9687d7a12', '183.82.99.100'),
('Team3', '58e6f2c12f1d05253b663c6744b9e93c', '183.83.82.184');

-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE `certificate` (
  `cid` int(11) NOT NULL,
  `request_type` varchar(50) NOT NULL,
  `purpose` varchar(30) NOT NULL,
  `request_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `certificate`
--

INSERT INTO `certificate` (`cid`, `request_type`, `purpose`, `request_date`) VALUES
(1, 'Bonafide_certificate', 'hjk', '2019-05-29'),
(2, 'Fee_Reciept_certificate', '16ajja', '2019-05-29'),
(3, 'Bonafide_certificate', '16', '2019-06-14'),
(4, 'Hostel_Resident_certificate', '16', '2019-06-14'),
(5, 'Fee_Reciept_certificate', 'inc', '2019-06-14'),
(6, 'Hostel_Resident_certificate', 'inc', '2019-06-14'),
(7, 'Bonafide_certificate', '16inc', '2019-06-14'),
(8, 'Hostel_Resident_certificate', '16incj', '2019-06-14'),
(9, 'Fee_Reciept_certificate', '16dwasvd', '2019-06-14'),
(10, 'Bonafide_certificate', '16savbnmraevcxz', '2019-06-14'),
(11, 'Hostel_Resident_certificate', 'asdfghjkl', '2019-07-04'),
(12, 'Bonafide_certificate', 'hari124567', '2019-07-10'),
(13, 'Fee_Reciept_certificate', '16sdfgh', '2019-07-11');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `complaint_id` int(11) NOT NULL,
  `sid` varchar(20) NOT NULL,
  `apply_date` datetime NOT NULL DEFAULT current_timestamp(),
  `request_type` enum('academic','mess','hostel','transport') NOT NULL DEFAULT 'academic',
  `subject_description` varchar(30) NOT NULL,
  `no_of_days` int(11) NOT NULL,
  `status` varchar(12) NOT NULL,
  `reply` varchar(100) NOT NULL,
  `Action` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`complaint_id`, `sid`, `apply_date`, `request_type`, `subject_description`, `no_of_days`, `status`, `reply`, `Action`) VALUES
(1, '999', '2019-07-11 20:27:05', 'mess', 'hjlk', 0, 'Rejected', '', 1),
(2, '17J21A0562', '2019-07-18 15:42:10', 'academic', 'faculty bad', 0, 'Rejected', 'accept', 1),
(3, '17J21A0588', '2019-08-23 16:18:23', 'academic', 'bad faculty', 0, 'Accepted', 'need more information', 1);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` varchar(10) NOT NULL,
  `course_name` varchar(10) NOT NULL,
  `course_credit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course_faculty`
--

CREATE TABLE `course_faculty` (
  `fid` varchar(30) NOT NULL,
  `course_id` varchar(10) NOT NULL,
  `acadyear` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cse_ma`
--

CREATE TABLE `cse_ma` (
  `ma_id` int(11) NOT NULL,
  `sid` varchar(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `mid_1` varchar(11) DEFAULT NULL,
  `mid_2` varchar(11) DEFAULT NULL,
  `avg` varchar(11) DEFAULT NULL,
  `end_sem_marks` varchar(5) DEFAULT NULL,
  `f1` varchar(11) DEFAULT NULL,
  `f2` int(11) DEFAULT NULL,
  `f3` int(11) DEFAULT NULL,
  `f4` int(11) DEFAULT NULL,
  `f5` int(11) DEFAULT NULL,
  `f6` int(11) DEFAULT NULL,
  `f7` int(11) DEFAULT NULL,
  `f8` int(11) DEFAULT NULL,
  `f9` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cse_ma`
--

INSERT INTO `cse_ma` (`ma_id`, `sid`, `subject_id`, `mid_1`, `mid_2`, `avg`, `end_sem_marks`, `f1`, `f2`, `f3`, `f4`, `f5`, `f6`, `f7`, `f8`, `f9`) VALUES
(389, '17J21A0588', 111, '25', '25', '25', 'A+', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(390, '17J21A0588', 112, '0', '0', '0', 'a', '50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(391, '17J21A0588', 113, '25', '0', '0', '', '20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(392, '17J21A0588', 114, '12', '15', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(393, '17J21A0588', 115, NULL, NULL, NULL, NULL, '40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(394, '17J21A0588', 116, NULL, NULL, NULL, NULL, '60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(395, '17J21A0588', 117, NULL, NULL, NULL, NULL, '70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(396, '17J21A0588', 118, NULL, NULL, NULL, NULL, '80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(397, '17J21A0588', 121, '23', '0', '0', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(398, '17J21A0588', 122, '25', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(399, '17J21A0588', 123, '25', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(400, '17J21A0588', 124, '25', '0', '0', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(401, '17J21A0588', 125, '25', '0', '0', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(402, '17J21A0588', 126, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(403, '17J21A0588', 127, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(404, '17J21A0588', 128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(405, '17J21A0588', 211, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(406, '17J21A0588', 212, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(407, '17J21A0588', 213, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(408, '17J21A0588', 214, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(409, '17J21A0588', 215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(410, '17J21A0588', 216, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(411, '17J21A0588', 217, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(412, '17J21A0588', 218, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(413, '17J21A0588', 221, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(414, '17J21A0588', 222, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(415, '17J21A0588', 223, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(416, '17J21A0588', 224, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(417, '17J21A0588', 225, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(418, '17J21A0588', 226, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(419, '17J21A0588', 227, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(420, '17J21A0588', 228, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(421, '17J21A0588', 311, '25', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(422, '17J21A0588', 312, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(423, '17J21A0588', 313, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(424, '17J21A0588', 314, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(425, '17J21A0588', 315, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(426, '17J21A0588', 316, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(427, '17J21A0588', 317, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(428, '17J21A0588', 318, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(429, '17J21A0588', 321, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(430, '17J21A0588', 322, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(431, '17J21A0588', 323, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(432, '17J21A0588', 324, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(433, '17J21A0588', 325, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(434, '17J21A0588', 326, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(435, '17J21A0588', 327, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(436, '17J21A0588', 328, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(437, '17J21A0588', 411, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(438, '17J21A0588', 412, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(439, '17J21A0588', 413, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(440, '17J21A0588', 414, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(441, '17J21A0588', 415, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(442, '17J21A0588', 416, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(443, '17J21A0588', 417, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(444, '17J21A0588', 418, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(445, '17J21A0588', 419, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(446, '17J21A0588', 421, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(447, '17J21A0588', 422, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(448, '17J21A0588', 423, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(449, '17J21A0588', 424, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(450, '17J21A0518', 111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(451, '17J21A0518', 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(452, '17J21A0518', 113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(453, '17J21A0518', 114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(454, '17J21A0518', 115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(455, '17J21A0518', 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(456, '17J21A0518', 117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(457, '17J21A0518', 118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(458, '17J21A0518', 121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(459, '17J21A0518', 122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(460, '17J21A0518', 123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(461, '17J21A0518', 124, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(462, '17J21A0518', 125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(463, '17J21A0518', 126, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(464, '17J21A0518', 127, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(465, '17J21A0518', 128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(466, '17J21A0518', 211, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(467, '17J21A0518', 212, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(468, '17J21A0518', 213, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(469, '17J21A0518', 214, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(470, '17J21A0518', 215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(471, '17J21A0518', 216, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(472, '17J21A0518', 217, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(473, '17J21A0518', 218, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(474, '17J21A0518', 221, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(475, '17J21A0518', 222, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(476, '17J21A0518', 223, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(477, '17J21A0518', 224, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(478, '17J21A0518', 225, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(479, '17J21A0518', 226, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(480, '17J21A0518', 227, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(481, '17J21A0518', 228, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(482, '17J21A0518', 311, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(483, '17J21A0518', 312, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(484, '17J21A0518', 313, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(485, '17J21A0518', 314, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(486, '17J21A0518', 315, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(487, '17J21A0518', 316, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(488, '17J21A0518', 317, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(489, '17J21A0518', 318, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(490, '17J21A0518', 321, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(491, '17J21A0518', 322, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(492, '17J21A0518', 323, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(493, '17J21A0518', 324, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(494, '17J21A0518', 325, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(495, '17J21A0518', 326, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(496, '17J21A0518', 327, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(497, '17J21A0518', 328, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(498, '17J21A0518', 411, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(499, '17J21A0518', 412, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(500, '17J21A0518', 413, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(501, '17J21A0518', 414, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(502, '17J21A0518', 415, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(503, '17J21A0518', 416, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(504, '17J21A0518', 417, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(505, '17J21A0518', 418, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(506, '17J21A0518', 419, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(507, '17J21A0518', 421, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(508, '17J21A0518', 422, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(509, '17J21A0518', 423, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(510, '17J21A0518', 424, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ece_ma`
--

CREATE TABLE `ece_ma` (
  `ma_id` int(11) NOT NULL,
  `sid` varchar(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `mid_1` int(11) DEFAULT NULL,
  `mid_2` int(11) DEFAULT NULL,
  `avg` int(11) DEFAULT NULL,
  `end_sem_marks` varchar(4) DEFAULT NULL,
  `f1` int(11) DEFAULT NULL,
  `f2` int(11) DEFAULT NULL,
  `f3` int(11) DEFAULT NULL,
  `f4` int(11) DEFAULT NULL,
  `f5` int(11) DEFAULT NULL,
  `f6` int(11) DEFAULT NULL,
  `f7` int(11) DEFAULT NULL,
  `f8` int(11) DEFAULT NULL,
  `f9` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eee_ma`
--

CREATE TABLE `eee_ma` (
  `ma_id` int(11) NOT NULL,
  `sid` varchar(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `mid_1` int(11) DEFAULT NULL,
  `mid_2` int(11) DEFAULT NULL,
  `avg` int(11) DEFAULT NULL,
  `end_sem_marks` varchar(4) DEFAULT NULL,
  `f1` int(11) DEFAULT NULL,
  `f2` int(11) DEFAULT NULL,
  `f3` int(11) DEFAULT NULL,
  `f4` int(11) DEFAULT NULL,
  `f5` int(11) DEFAULT NULL,
  `f6` int(11) DEFAULT NULL,
  `f7` int(11) DEFAULT NULL,
  `f8` int(11) DEFAULT NULL,
  `f9` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `fid` varchar(30) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gender` enum('m','f') NOT NULL DEFAULT 'f',
  `degree` varchar(10) NOT NULL,
  `degree_field` varchar(35) NOT NULL,
  `f_mob_no` varchar(10) DEFAULT NULL,
  `f_email` varchar(50) DEFAULT NULL,
  `address` varchar(60) NOT NULL,
  `city` varchar(6) NOT NULL,
  `state` varchar(25) NOT NULL,
  `pin` varchar(6) NOT NULL,
  `join_date` date NOT NULL,
  `blood_group` enum('ABP','ABN','AP','AN','BP','BN','OP','ON') DEFAULT 'OP',
  `ip` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`fid`, `firstname`, `lastname`, `password`, `gender`, `degree`, `degree_field`, `f_mob_no`, `f_email`, `address`, `city`, `state`, `pin`, `join_date`, `blood_group`, `ip`) VALUES
('999', 'j', 'g', '5f4dcc3b5aa765d61d8327deb882cf99', 'm', 'j', 'f', '1234567899', 'j', 'gj', 'g', 'ap', '123456', '2019-05-29', '', '223.228.121.126'),
('sarath', '', '', 'cab91b3d53e28a8268ae74d5bcfff5af', 'm', '', '', NULL, NULL, '', '', '', '', '0000-00-00', 'OP', '183.82.99.100');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `fee_id` int(11) NOT NULL,
  `fee_type` enum('academic','mess','hostel','transport') NOT NULL DEFAULT 'academic',
  `paymode` enum('NEFT','online','offline','RTGS','DD') NOT NULL DEFAULT 'offline',
  `bank` varchar(40) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `uploaddate` date NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `gid` varchar(2) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE `hostel` (
  `hostel_no` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hostel_residents`
--

CREATE TABLE `hostel_residents` (
  `hostel_no` varchar(2) NOT NULL,
  `room_no` varchar(2) NOT NULL,
  `sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hostel_room`
--

CREATE TABLE `hostel_room` (
  `hostel_no` varchar(10) NOT NULL,
  `room_no` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `it_ma`
--

CREATE TABLE `it_ma` (
  `ma_id` int(11) NOT NULL,
  `sid` varchar(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `mid_1` int(11) DEFAULT NULL,
  `mid_2` int(11) DEFAULT NULL,
  `avg` int(11) DEFAULT NULL,
  `end_sem_marks` varchar(4) DEFAULT NULL,
  `f1` int(11) DEFAULT NULL,
  `f2` int(11) DEFAULT NULL,
  `f3` int(11) DEFAULT NULL,
  `f4` int(11) DEFAULT NULL,
  `f5` int(11) DEFAULT NULL,
  `f6` int(11) DEFAULT NULL,
  `f7` int(11) DEFAULT NULL,
  `f8` int(11) DEFAULT NULL,
  `f9` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mba_ma`
--

CREATE TABLE `mba_ma` (
  `ma_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `mid_1` int(11) NOT NULL,
  `mid_2` int(11) NOT NULL,
  `avg` int(11) NOT NULL,
  `end_sem_marks` int(11) NOT NULL,
  `f1` int(11) NOT NULL,
  `f2` int(11) NOT NULL,
  `f3` int(11) NOT NULL,
  `f4` int(11) NOT NULL,
  `f5` int(11) NOT NULL,
  `f6` int(11) NOT NULL,
  `f7` int(11) NOT NULL,
  `f8` int(11) NOT NULL,
  `f9` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mech_ma`
--

CREATE TABLE `mech_ma` (
  `ma_id` int(11) NOT NULL,
  `sid` varchar(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `mid_1` int(11) DEFAULT NULL,
  `mid_2` int(11) DEFAULT NULL,
  `avg` int(11) DEFAULT NULL,
  `end_sem_marks` varchar(4) DEFAULT NULL,
  `f1` int(11) DEFAULT NULL,
  `f2` int(11) DEFAULT NULL,
  `f3` int(11) DEFAULT NULL,
  `f4` int(11) DEFAULT NULL,
  `f5` int(11) DEFAULT NULL,
  `f6` int(11) DEFAULT NULL,
  `f7` int(11) DEFAULT NULL,
  `f8` int(11) DEFAULT NULL,
  `f9` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mech_ma`
--

INSERT INTO `mech_ma` (`ma_id`, `sid`, `subject_id`, `mid_1`, `mid_2`, `avg`, `end_sem_marks`, `f1`, `f2`, `f3`, `f4`, `f5`, `f6`, `f7`, `f8`, `f9`) VALUES
(1, '123', 111, 0, 0, 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '17J21A0563', 111, 15, 20, 30, '0', 99, 999, 99, 999, 99, 999, 99, 99, 99),
(3, '17J21A0563', 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '17J21A0563', 113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '17J21A0563', 114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '17J21A0563', 115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '17J21A0563', 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '17J21A0563', 117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '17J21A0563', 118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '17J21A0563', 121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '17J21A0563', 122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '17J21A0563', 123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '17J21A0563', 124, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '17J21A0563', 125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '17J21A0563', 126, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '17J21A0563', 127, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '17J21A0563', 128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '17J21A0563', 211, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '17J21A0563', 212, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '17J21A0563', 213, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '17J21A0563', 214, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '17J21A0563', 215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '17J21A0563', 216, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, '17J21A0563', 217, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '17J21A0563', 218, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '17J21A0563', 221, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '17J21A0563', 222, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, '17J21A0563', 223, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, '17J21A0563', 224, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, '17J21A0563', 225, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, '17J21A0563', 226, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, '17J21A0563', 227, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, '17J21A0563', 228, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, '17J21A0563', 311, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, '17J21A0563', 312, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, '17J21A0563', 313, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, '17J21A0563', 314, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, '17J21A0563', 315, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, '17J21A0563', 316, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, '17J21A0563', 317, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, '17J21A0563', 318, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, '17J21A0563', 321, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, '17J21A0563', 322, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, '17J21A0563', 323, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, '17J21A0563', 324, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, '17J21A0563', 325, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, '17J21A0563', 326, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, '17J21A0563', 327, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, '17J21A0563', 328, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, '17J21A0563', 411, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, '17J21A0563', 412, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, '17J21A0563', 413, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, '17J21A0563', 414, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, '17J21A0563', 415, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, '17J21A0563', 416, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, '17J21A0563', 417, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, '17J21A0563', 418, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, '17J21A0563', 419, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, '17J21A0563', 421, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, '17J21A0563', 422, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, '17J21A0563', 423, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, '17J21A0563', 424, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mtech_ma`
--

CREATE TABLE `mtech_ma` (
  `ma_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `mid_1` int(11) NOT NULL,
  `mid_2` int(11) NOT NULL,
  `avg` int(11) NOT NULL,
  `end_sem_marks` int(11) NOT NULL,
  `f1` int(11) NOT NULL,
  `f2` int(11) NOT NULL,
  `f3` int(11) NOT NULL,
  `f4` int(11) NOT NULL,
  `f5` int(11) NOT NULL,
  `f6` int(11) NOT NULL,
  `f7` int(11) NOT NULL,
  `f8` int(11) NOT NULL,
  `f9` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `note_id` int(11) NOT NULL,
  `note` varchar(200) NOT NULL,
  `app` varchar(100) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(15) NOT NULL DEFAULT 'Active',
  `usr_typ` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`note_id`, `note`, `app`, `date`, `status`, `usr_typ`) VALUES
(1, 'New Certificate Requests', 'admin_request_certificate.php', '2019-07-11 00:05:29', 'Active', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `output_images`
--

CREATE TABLE `output_images` (
  `imageId` tinyint(3) NOT NULL,
  `imageType` varchar(25) NOT NULL DEFAULT '',
  `imageData` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `output_images`
--

INSERT INTO `output_images` (`imageId`, `imageType`, `imageData`) VALUES
INSERT INTO `output_images` (`imageId`, `imageType`, `imageData`) VALUES

-- --------------------------------------------------------

--
-- Table structure for table `r16`
--

CREATE TABLE `r16` (
  `sem_id` int(1) NOT NULL,
  `subject_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r16`
--

INSERT INTO `r16` (`sem_id`, `subject_id`) VALUES
(1, 111),
(1, 112),
(1, 113),
(1, 114),
(1, 115),
(1, 116),
(1, 117),
(1, 118),
(2, 121),
(2, 122),
(2, 123),
(2, 124),
(2, 125),
(2, 126),
(2, 127),
(2, 128),
(3, 211),
(3, 212),
(3, 213),
(3, 214),
(3, 215),
(3, 216),
(3, 217),
(3, 218),
(4, 221),
(4, 222),
(4, 223),
(4, 224),
(4, 225),
(4, 226),
(4, 227),
(4, 228),
(5, 311),
(5, 312),
(5, 313),
(5, 314),
(5, 315),
(5, 316),
(5, 317),
(5, 318),
(6, 321),
(6, 322),
(6, 323),
(6, 324),
(6, 325),
(6, 326),
(6, 327),
(6, 328),
(7, 411),
(7, 412),
(7, 413),
(7, 414),
(7, 415),
(7, 416),
(7, 417),
(7, 418),
(7, 419),
(8, 421),
(8, 422),
(8, 423),
(8, 424);

-- --------------------------------------------------------

--
-- Table structure for table `r18_cse`
--

CREATE TABLE `r18_cse` (
  `sem_id` int(1) NOT NULL,
  `subject_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r18_cse`
--

INSERT INTO `r18_cse` (`sem_id`, `subject_id`) VALUES
(1, 111),
(1, 112),
(1, 113),
(1, 114),
(1, 115),
(1, 116),
(1, 117),
(1, 118),
(2, 121),
(2, 122),
(2, 123),
(2, 124),
(2, 125),
(2, 126),
(3, 211),
(3, 212),
(3, 213),
(3, 214),
(3, 215),
(3, 216),
(3, 217),
(3, 218),
(3, 219),
(4, 221),
(4, 222),
(4, 223),
(4, 224),
(4, 225),
(4, 226),
(4, 227),
(4, 228),
(5, 311),
(5, 312),
(5, 313),
(5, 314),
(5, 315),
(5, 316),
(5, 317),
(5, 318),
(5, 319),
(6, 321),
(6, 322),
(6, 323),
(6, 324),
(6, 325),
(6, 326),
(6, 327),
(6, 328),
(6, 329),
(7, 411),
(7, 412),
(7, 413),
(7, 414),
(7, 415),
(7, 416),
(7, 417),
(7, 418),
(7, 419),
(8, 421),
(8, 422),
(8, 423),
(8, 424),
(8, 425),
(8, 426),
(8, 427),
(8, 428),
(8, 429);

-- --------------------------------------------------------

--
-- Table structure for table `r18_ece`
--

CREATE TABLE `r18_ece` (
  `sem_id` int(1) NOT NULL,
  `subject_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r18_ece`
--

INSERT INTO `r18_ece` (`sem_id`, `subject_id`) VALUES
(1, 111),
(1, 112),
(1, 113),
(1, 114),
(1, 115),
(1, 116),
(2, 121),
(2, 122),
(2, 123),
(2, 124),
(2, 125),
(2, 126),
(2, 127),
(2, 128),
(3, 211),
(3, 212),
(3, 213),
(3, 214),
(3, 215),
(3, 216),
(3, 217),
(3, 218),
(4, 221),
(4, 222),
(4, 223),
(4, 224),
(4, 225),
(4, 226),
(4, 227),
(4, 228),
(5, 311),
(5, 312),
(5, 313),
(5, 314),
(5, 315),
(5, 316),
(5, 317),
(5, 318),
(5, 319),
(6, 321),
(6, 322),
(6, 323),
(6, 324),
(6, 325),
(6, 326),
(6, 327),
(6, 328),
(6, 329),
(7, 411),
(7, 412),
(7, 413),
(7, 414),
(7, 415),
(7, 416),
(7, 417),
(7, 418),
(7, 419),
(8, 421),
(8, 422),
(8, 423),
(8, 424),
(8, 425),
(8, 426),
(8, 427),
(8, 428),
(8, 429);

-- --------------------------------------------------------

--
-- Table structure for table `r18_eee`
--

CREATE TABLE `r18_eee` (
  `sem_id` int(1) NOT NULL,
  `subject_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r18_eee`
--

INSERT INTO `r18_eee` (`sem_id`, `subject_id`) VALUES
(1, 111),
(1, 112),
(1, 113),
(1, 114),
(1, 115),
(1, 116),
(1, 117),
(1, 118),
(2, 121),
(2, 122),
(2, 123),
(2, 124),
(2, 125),
(2, 126),
(3, 211),
(3, 212),
(3, 213),
(3, 214),
(3, 215),
(3, 216),
(3, 217),
(3, 218),
(4, 221),
(4, 222),
(4, 223),
(4, 224),
(4, 225),
(4, 226),
(4, 227),
(4, 228),
(5, 311),
(5, 312),
(5, 313),
(5, 314),
(5, 315),
(5, 316),
(5, 317),
(5, 318),
(5, 319),
(6, 321),
(6, 322),
(6, 323),
(6, 324),
(6, 325),
(6, 326),
(6, 327),
(6, 328),
(6, 329),
(7, 411),
(7, 412),
(7, 413),
(7, 414),
(7, 415),
(7, 416),
(7, 417),
(7, 418),
(7, 419),
(8, 421),
(8, 422),
(8, 423),
(8, 424),
(8, 425),
(8, 426),
(8, 427),
(8, 428),
(8, 429);

-- --------------------------------------------------------

--
-- Table structure for table `r18_it`
--

CREATE TABLE `r18_it` (
  `sem_id` int(1) NOT NULL,
  `subject_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r18_it`
--

INSERT INTO `r18_it` (`sem_id`, `subject_id`) VALUES
(1, 111),
(1, 112),
(1, 113),
(1, 114),
(1, 115),
(1, 116),
(1, 117),
(1, 118),
(2, 121),
(2, 122),
(2, 123),
(2, 124),
(2, 125),
(2, 126),
(3, 211),
(3, 212),
(3, 213),
(3, 214),
(3, 215),
(3, 216),
(3, 217),
(3, 218),
(3, 219),
(4, 221),
(4, 222),
(4, 223),
(4, 224),
(4, 225),
(4, 226),
(4, 227),
(4, 228),
(5, 311),
(5, 312),
(5, 313),
(5, 314),
(5, 315),
(5, 316),
(5, 317),
(5, 318),
(5, 319),
(6, 321),
(6, 322),
(6, 323),
(6, 324),
(6, 325),
(6, 326),
(6, 327),
(6, 328),
(6, 329),
(7, 411),
(7, 412),
(7, 413),
(7, 414),
(7, 415),
(7, 416),
(7, 417),
(7, 418),
(7, 419),
(8, 421),
(8, 422),
(8, 423),
(8, 424),
(8, 425),
(8, 426),
(8, 427),
(8, 428),
(8, 429);

-- --------------------------------------------------------

--
-- Table structure for table `r18_mech`
--

CREATE TABLE `r18_mech` (
  `sem_id` int(1) NOT NULL,
  `subject_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r18_mech`
--

INSERT INTO `r18_mech` (`sem_id`, `subject_id`) VALUES
(1, 111),
(1, 112),
(1, 113),
(1, 114),
(1, 115),
(1, 116),
(2, 121),
(2, 122),
(2, 123),
(2, 124),
(2, 125),
(2, 126),
(2, 127),
(3, 211),
(3, 212),
(3, 213),
(3, 214),
(3, 215),
(3, 216),
(3, 217),
(3, 218),
(4, 221),
(4, 222),
(4, 223),
(4, 224),
(4, 225),
(4, 226),
(4, 227),
(4, 228),
(5, 311),
(5, 312),
(5, 313),
(5, 314),
(5, 315),
(5, 316),
(5, 317),
(5, 318),
(5, 319),
(6, 321),
(6, 322),
(6, 323),
(6, 324),
(6, 325),
(6, 326),
(6, 327),
(6, 328),
(6, 329),
(7, 411),
(7, 412),
(7, 413),
(7, 414),
(7, 415),
(7, 416),
(7, 417),
(7, 418),
(7, 419),
(8, 421),
(8, 422),
(8, 423),
(8, 424),
(8, 425),
(8, 426),
(8, 427),
(8, 428),
(8, 429);

-- --------------------------------------------------------

--
-- Table structure for table `rebate`
--

CREATE TABLE `rebate` (
  `rid` int(11) NOT NULL,
  `st_id` int(10) NOT NULL,
  `apply_date` date NOT NULL,
  `from_date` date NOT NULL,
  `no_of_days` int(10) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` varchar(12) NOT NULL,
  `Action` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `resource_id` varchar(2) NOT NULL,
  `resource` varchar(10) NOT NULL,
  `count` int(11) NOT NULL,
  `purchase_date` date NOT NULL,
  `warranty_period` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result_1_1`
--

CREATE TABLE `result_1_1` (
  `rid` int(10) NOT NULL,
  `sid` varchar(11) NOT NULL,
  `subject_id` varchar(10) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `grade` varchar(5) NOT NULL,
  `grade_points` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result_1_2`
--

CREATE TABLE `result_1_2` (
  `rid` int(10) NOT NULL,
  `sid` varchar(11) NOT NULL,
  `subject_id` varchar(10) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `grade` varchar(5) NOT NULL,
  `grade_points` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result_2_1`
--

CREATE TABLE `result_2_1` (
  `rid` int(10) NOT NULL,
  `sid` varchar(11) NOT NULL,
  `subject_id` varchar(10) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `grade` varchar(5) NOT NULL,
  `grade_points` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result_2_2`
--

CREATE TABLE `result_2_2` (
  `rid` int(10) NOT NULL,
  `sid` varchar(11) NOT NULL,
  `subject_id` varchar(10) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `grade` varchar(5) NOT NULL,
  `grade_points` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result_2_2`
--

INSERT INTO `result_2_2` (`rid`, `sid`, `subject_id`, `subject_name`, `grade`, `grade_points`) VALUES
(1, '15J21A0560', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'F', 0),
(2, '15J21A0560', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(3, '16J21A0515', '134AK', 'COMPUTER ORGANIZATION', 'F', 0),
(4, '16J21A0515', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(5, '16J21A0515', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(6, '16J21A0523', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'C', 5),
(7, '16J21A0525', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'Ab', 0),
(8, '16J21A0525', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'Ab', 0),
(9, '16J21A0525', '134BU', 'OPERATING SYSTEMS', 'Ab', 0),
(10, '16J21A0531', '134AK', 'COMPUTER ORGANIZATION', 'F', 0),
(11, '16J21A0531', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'F', 0),
(12, '16J21A0531', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(13, '16J21A0531', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(14, '16J21A0539', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'Ab', 0),
(15, '16J21A0539', '134AK', 'COMPUTER ORGANIZATION', 'F', 0),
(16, '16J21A0539', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'F', 0),
(17, '16J21A0539', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(18, '16J21A0539', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(19, '16J21A0540', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'C', 5),
(20, '16J21A0542', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'C', 5),
(21, '16J21A0542', '134AK', 'COMPUTER ORGANIZATION', 'F', 0),
(22, '16J21A0542', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'C', 5),
(23, '16J21A0547', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'F', 0),
(24, '16J21A0547', '134AK', 'COMPUTER ORGANIZATION', 'F', 0),
(25, '16J21A0547', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'F', 0),
(26, '16J21A0547', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(27, '16J21A0551', '13408', 'COMPUTER ORGANIZATION LAB', 'B', 6),
(28, '16J21A0551', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'A+', 9),
(29, '16J21A0551', '13432', 'OPERATING SYSTEMS LAB', 'A', 8),
(30, '16J21A0551', '13440', 'GENDER SENSITIZATION LAB', 'C', 5),
(31, '16J21A0551', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'F', 0),
(32, '16J21A0551', '134AK', 'COMPUTER ORGANIZATION', 'F', 0),
(33, '16J21A0551', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'F', 0),
(34, '16J21A0551', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(35, '16J21A0551', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(36, '16J21A0554', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'F', 0),
(37, '16J21A0554', '134AK', 'COMPUTER ORGANIZATION', 'F', 0),
(38, '16J21A0554', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'F', 0),
(39, '16J21A0565', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'F', 0),
(40, '16J21A0565', '134AK', 'COMPUTER ORGANIZATION', 'C', 5),
(41, '16J21A0565', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'F', 0),
(42, '16J21A0565', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(43, '16J21A0565', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(44, '16J21A0568', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'F', 0),
(45, '16J21A0568', '134AK', 'COMPUTER ORGANIZATION', 'F', 0),
(46, '16J21A0568', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'F', 0),
(47, '16J21A0568', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'Ab', 0),
(48, '16J21A0568', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(49, '16J21A0574', '13408', 'COMPUTER ORGANIZATION LAB', 'B+', 7),
(50, '16J21A0574', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'B+', 7),
(51, '16J21A0574', '13432', 'OPERATING SYSTEMS LAB', 'B+', 7),
(52, '16J21A0574', '13440', 'GENDER SENSITIZATION LAB', 'Ab', 0),
(53, '16J21A0574', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'F', 0),
(54, '16J21A0574', '134AK', 'COMPUTER ORGANIZATION', 'F', 0),
(55, '16J21A0574', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'F', 0),
(56, '16J21A0574', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(57, '16J21A0574', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(58, '16J21A0576', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(59, '16J21A0578', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'F', 0),
(60, '16J21A0578', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(61, '16J21A0579', '134AK', 'COMPUTER ORGANIZATION', 'F', 0),
(62, '16J21A0579', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(63, '16J21A0580', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(64, '16J21A0582', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(65, '16J21A0591', '134AK', 'COMPUTER ORGANIZATION', 'F', 0),
(66, '16J21A0591', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'F', 0),
(67, '16J21A0591', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'Ab', 0),
(68, '16J21A0597', '134AK', 'COMPUTER ORGANIZATION', 'F', 0),
(69, '16UR1A0506', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'C', 5),
(70, '16UR1A0506', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(71, '16UR1A0506', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(72, '17J21A0501', '13408', 'COMPUTER ORGANIZATION LAB', 'A+', 9),
(73, '17J21A0501', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'A+', 9),
(74, '17J21A0501', '13432', 'OPERATING SYSTEMS LAB', 'A+', 9),
(75, '17J21A0501', '13440', 'GENDER SENSITIZATION LAB', 'B+', 7),
(76, '17J21A0501', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'B', 6),
(77, '17J21A0501', '134AK', 'COMPUTER ORGANIZATION', 'B', 6),
(78, '17J21A0501', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B', 6),
(79, '17J21A0501', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'C', 5),
(80, '17J21A0501', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(81, '17J21A0502', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(82, '17J21A0502', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(83, '17J21A0502', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(84, '17J21A0502', '13440', 'GENDER SENSITIZATION LAB', 'A', 8),
(85, '17J21A0502', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'B', 6),
(86, '17J21A0502', '134AK', 'COMPUTER ORGANIZATION', 'B', 6),
(87, '17J21A0502', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B', 6),
(88, '17J21A0502', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'B+', 7),
(89, '17J21A0502', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(90, '17J21A0503', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(91, '17J21A0503', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(92, '17J21A0503', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(93, '17J21A0503', '13440', 'GENDER SENSITIZATION LAB', 'A', 8),
(94, '17J21A0503', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'B+', 7),
(95, '17J21A0503', '134AK', 'COMPUTER ORGANIZATION', 'B', 6),
(96, '17J21A0503', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B', 6),
(97, '17J21A0503', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'B', 6),
(98, '17J21A0503', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(99, '17J21A0504', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(100, '17J21A0504', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(101, '17J21A0504', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(102, '17J21A0504', '13440', 'GENDER SENSITIZATION LAB', 'A', 8),
(103, '17J21A0504', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'A', 8),
(104, '17J21A0504', '134AK', 'COMPUTER ORGANIZATION', 'B', 6),
(105, '17J21A0504', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B', 6),
(106, '17J21A0504', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'B+', 7),
(107, '17J21A0504', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(108, '17J21A0505', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(109, '17J21A0505', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(110, '17J21A0505', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(111, '17J21A0505', '13440', 'GENDER SENSITIZATION LAB', 'A+', 9),
(112, '17J21A0505', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'B', 6),
(113, '17J21A0505', '134AK', 'COMPUTER ORGANIZATION', 'B', 6),
(114, '17J21A0505', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B', 6),
(115, '17J21A0505', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'B+', 7),
(116, '17J21A0505', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(117, '17J21A0506', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(118, '17J21A0506', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'A+', 9),
(119, '17J21A0506', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(120, '17J21A0506', '13440', 'GENDER SENSITIZATION LAB', 'A', 8),
(121, '17J21A0506', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'C', 5),
(122, '17J21A0506', '134AK', 'COMPUTER ORGANIZATION', 'F', 0),
(123, '17J21A0506', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'C', 5),
(124, '17J21A0506', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(125, '17J21A0506', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(126, '17J21A0507', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(127, '17J21A0507', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(128, '17J21A0507', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(129, '17J21A0507', '13440', 'GENDER SENSITIZATION LAB', 'O', 10),
(130, '17J21A0507', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'A+', 9),
(131, '17J21A0507', '134AK', 'COMPUTER ORGANIZATION', 'B+', 7),
(132, '17J21A0507', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B', 6),
(133, '17J21A0507', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'B+', 7),
(134, '17J21A0507', '134BU', 'OPERATING SYSTEMS', 'B+', 7),
(135, '17J21A0508', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(136, '17J21A0508', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(137, '17J21A0508', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(138, '17J21A0508', '13440', 'GENDER SENSITIZATION LAB', 'A', 8),
(139, '17J21A0508', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'A+', 9),
(140, '17J21A0508', '134AK', 'COMPUTER ORGANIZATION', 'A', 8),
(141, '17J21A0508', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B+', 7),
(142, '17J21A0508', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'A+', 9),
(143, '17J21A0508', '134BU', 'OPERATING SYSTEMS', 'B+', 7),
(144, '17J21A0509', '13408', 'COMPUTER ORGANIZATION LAB', 'A+', 9),
(145, '17J21A0509', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'A', 8),
(146, '17J21A0509', '13432', 'OPERATING SYSTEMS LAB', 'A', 8),
(147, '17J21A0509', '13440', 'GENDER SENSITIZATION LAB', 'B', 6),
(148, '17J21A0509', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'C', 5),
(149, '17J21A0509', '134AK', 'COMPUTER ORGANIZATION', 'F', 0),
(150, '17J21A0509', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'F', 0),
(151, '17J21A0509', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(152, '17J21A0509', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(153, '17J21A0510', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(154, '17J21A0510', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(155, '17J21A0510', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(156, '17J21A0510', '13440', 'GENDER SENSITIZATION LAB', 'A', 8),
(157, '17J21A0510', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'B+', 7),
(158, '17J21A0510', '134AK', 'COMPUTER ORGANIZATION', 'F', 0),
(159, '17J21A0510', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'C', 5),
(160, '17J21A0510', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'C', 5),
(161, '17J21A0510', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(162, '17J21A0511', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(163, '17J21A0511', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(164, '17J21A0511', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(165, '17J21A0511', '13440', 'GENDER SENSITIZATION LAB', 'B+', 7),
(166, '17J21A0511', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'B+', 7),
(167, '17J21A0511', '134AK', 'COMPUTER ORGANIZATION', 'B', 6),
(168, '17J21A0511', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'C', 5),
(169, '17J21A0511', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'B', 6),
(170, '17J21A0511', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(171, '17J21A0512', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(172, '17J21A0512', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(173, '17J21A0512', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(174, '17J21A0512', '13440', 'GENDER SENSITIZATION LAB', 'O', 10),
(175, '17J21A0512', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'A', 8),
(176, '17J21A0512', '134AK', 'COMPUTER ORGANIZATION', 'B', 6),
(177, '17J21A0512', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B+', 7),
(178, '17J21A0512', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'A', 8),
(179, '17J21A0512', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(180, '17J21A0513', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(181, '17J21A0513', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'A+', 9),
(182, '17J21A0513', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(183, '17J21A0513', '13440', 'GENDER SENSITIZATION LAB', 'B', 6),
(184, '17J21A0513', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'C', 5),
(185, '17J21A0513', '134AK', 'COMPUTER ORGANIZATION', 'F', 0),
(186, '17J21A0513', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'C', 5),
(187, '17J21A0513', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'C', 5),
(188, '17J21A0513', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(189, '17J21A0514', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(190, '17J21A0514', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'A+', 9),
(191, '17J21A0514', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(192, '17J21A0514', '13440', 'GENDER SENSITIZATION LAB', 'B', 6),
(193, '17J21A0514', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'C', 5),
(194, '17J21A0514', '134AK', 'COMPUTER ORGANIZATION', 'F', 0),
(195, '17J21A0514', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B', 6),
(196, '17J21A0514', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'B', 6),
(197, '17J21A0514', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(198, '17J21A0515', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(199, '17J21A0515', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'A+', 9),
(200, '17J21A0515', '13432', 'OPERATING SYSTEMS LAB', 'A+', 9),
(201, '17J21A0515', '13440', 'GENDER SENSITIZATION LAB', 'A', 8),
(202, '17J21A0515', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'F', 0),
(203, '17J21A0515', '134AK', 'COMPUTER ORGANIZATION', 'F', 0),
(204, '17J21A0515', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'C', 5),
(205, '17J21A0515', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(206, '17J21A0515', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(207, '17J21A0516', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(208, '17J21A0516', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(209, '17J21A0516', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(210, '17J21A0516', '13440', 'GENDER SENSITIZATION LAB', 'B', 6),
(211, '17J21A0516', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'C', 5),
(212, '17J21A0516', '134AK', 'COMPUTER ORGANIZATION', 'F', 0),
(213, '17J21A0516', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B', 6),
(214, '17J21A0516', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'C', 5),
(215, '17J21A0516', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(216, '17J21A0517', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(217, '17J21A0517', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'B+', 7),
(218, '17J21A0517', '13432', 'OPERATING SYSTEMS LAB', 'B+', 7),
(219, '17J21A0517', '13440', 'GENDER SENSITIZATION LAB', 'B', 6),
(220, '17J21A0517', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'F', 0),
(221, '17J21A0517', '134AK', 'COMPUTER ORGANIZATION', 'F', 0),
(222, '17J21A0517', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'C', 5),
(223, '17J21A0517', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(224, '17J21A0517', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(225, '17J21A0518', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(226, '17J21A0518', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(227, '17J21A0518', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(228, '17J21A0518', '13440', 'GENDER SENSITIZATION LAB', 'B+', 7),
(229, '17J21A0518', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'A', 8),
(230, '17J21A0518', '134AK', 'COMPUTER ORGANIZATION', 'B+', 7),
(231, '17J21A0518', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B', 6),
(232, '17J21A0518', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'B+', 7),
(233, '17J21A0518', '134BU', 'OPERATING SYSTEMS', 'B+', 7),
(234, '17J21A0519', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(235, '17J21A0519', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(236, '17J21A0519', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(237, '17J21A0519', '13440', 'GENDER SENSITIZATION LAB', 'B+', 7),
(238, '17J21A0519', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'A+', 9),
(239, '17J21A0519', '134AK', 'COMPUTER ORGANIZATION', 'B', 6),
(240, '17J21A0519', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B+', 7),
(241, '17J21A0519', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'A', 8),
(242, '17J21A0519', '134BU', 'OPERATING SYSTEMS', 'B+', 7),
(243, '17J21A0521', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(244, '17J21A0521', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(245, '17J21A0521', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(246, '17J21A0521', '13440', 'GENDER SENSITIZATION LAB', 'B+', 7),
(247, '17J21A0521', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'A', 8),
(248, '17J21A0521', '134AK', 'COMPUTER ORGANIZATION', 'B', 6),
(249, '17J21A0521', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B', 6),
(250, '17J21A0521', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'B', 6),
(251, '17J21A0521', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(252, '17J21A0523', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(253, '17J21A0523', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'A', 8),
(254, '17J21A0523', '13432', 'OPERATING SYSTEMS LAB', 'A', 8),
(255, '17J21A0523', '13440', 'GENDER SENSITIZATION LAB', 'B+', 7),
(256, '17J21A0523', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'C', 5),
(257, '17J21A0523', '134AK', 'COMPUTER ORGANIZATION', 'F', 0),
(258, '17J21A0523', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'C', 5),
(259, '17J21A0523', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'C', 5),
(260, '17J21A0523', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(261, '17J21A0524', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(262, '17J21A0524', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(263, '17J21A0524', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(264, '17J21A0524', '13440', 'GENDER SENSITIZATION LAB', 'B+', 7),
(265, '17J21A0524', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'B', 6),
(266, '17J21A0524', '134AK', 'COMPUTER ORGANIZATION', 'B', 6),
(267, '17J21A0524', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B+', 7),
(268, '17J21A0524', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'B', 6),
(269, '17J21A0524', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(270, '17J21A0527', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(271, '17J21A0527', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(272, '17J21A0527', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(273, '17J21A0527', '13440', 'GENDER SENSITIZATION LAB', 'A', 8),
(274, '17J21A0527', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'A', 8),
(275, '17J21A0527', '134AK', 'COMPUTER ORGANIZATION', 'B', 6),
(276, '17J21A0527', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B', 6),
(277, '17J21A0527', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'B+', 7),
(278, '17J21A0527', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(279, '17J21A0528', '13408', 'COMPUTER ORGANIZATION LAB', 'B', 6),
(280, '17J21A0528', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'A', 8),
(281, '17J21A0528', '13432', 'OPERATING SYSTEMS LAB', 'A+', 9),
(282, '17J21A0528', '13440', 'GENDER SENSITIZATION LAB', 'B+', 7),
(283, '17J21A0528', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'C', 5),
(284, '17J21A0528', '134AK', 'COMPUTER ORGANIZATION', 'F', 0),
(285, '17J21A0528', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'C', 5),
(286, '17J21A0528', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(287, '17J21A0528', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(288, '17J21A0529', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(289, '17J21A0529', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(290, '17J21A0529', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(291, '17J21A0529', '13440', 'GENDER SENSITIZATION LAB', 'B', 6),
(292, '17J21A0529', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'B+', 7),
(293, '17J21A0529', '134AK', 'COMPUTER ORGANIZATION', 'B', 6),
(294, '17J21A0529', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B', 6),
(295, '17J21A0529', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'A', 8),
(296, '17J21A0529', '134BU', 'OPERATING SYSTEMS', 'B', 6),
(297, '17J21A0530', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(298, '17J21A0530', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(299, '17J21A0530', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(300, '17J21A0530', '13440', 'GENDER SENSITIZATION LAB', 'A', 8),
(301, '17J21A0530', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'C', 5),
(302, '17J21A0530', '134AK', 'COMPUTER ORGANIZATION', 'F', 0),
(303, '17J21A0530', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'C', 5),
(304, '17J21A0530', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(305, '17J21A0530', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(306, '17J21A0531', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(307, '17J21A0531', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(308, '17J21A0531', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(309, '17J21A0531', '13440', 'GENDER SENSITIZATION LAB', 'B', 6),
(310, '17J21A0531', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'B+', 7),
(311, '17J21A0531', '134AK', 'COMPUTER ORGANIZATION', 'B', 6),
(312, '17J21A0531', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B', 6),
(313, '17J21A0531', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'B+', 7),
(314, '17J21A0531', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(315, '17J21A0532', '13408', 'COMPUTER ORGANIZATION LAB', 'A+', 9),
(316, '17J21A0532', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(317, '17J21A0532', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(318, '17J21A0532', '13440', 'GENDER SENSITIZATION LAB', 'B', 6),
(319, '17J21A0532', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'A', 8),
(320, '17J21A0532', '134AK', 'COMPUTER ORGANIZATION', 'B', 6),
(321, '17J21A0532', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B+', 7),
(322, '17J21A0532', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'B+', 7),
(323, '17J21A0532', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(324, '17J21A0533', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(325, '17J21A0533', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(326, '17J21A0533', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(327, '17J21A0533', '13440', 'GENDER SENSITIZATION LAB', 'A', 8),
(328, '17J21A0533', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'C', 5),
(329, '17J21A0533', '134AK', 'COMPUTER ORGANIZATION', 'B', 6),
(330, '17J21A0533', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B+', 7),
(331, '17J21A0533', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'B', 6),
(332, '17J21A0533', '134BU', 'OPERATING SYSTEMS', 'B', 6),
(333, '17J21A0534', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(334, '17J21A0534', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(335, '17J21A0534', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(336, '17J21A0534', '13440', 'GENDER SENSITIZATION LAB', 'B+', 7),
(337, '17J21A0534', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'C', 5),
(338, '17J21A0534', '134AK', 'COMPUTER ORGANIZATION', 'B', 6),
(339, '17J21A0534', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B', 6),
(340, '17J21A0534', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'B+', 7),
(341, '17J21A0534', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(342, '17J21A0536', '13408', 'COMPUTER ORGANIZATION LAB', 'B+', 7),
(343, '17J21A0536', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'A+', 9),
(344, '17J21A0536', '13432', 'OPERATING SYSTEMS LAB', 'A+', 9),
(345, '17J21A0536', '13440', 'GENDER SENSITIZATION LAB', 'B+', 7),
(346, '17J21A0536', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'C', 5),
(347, '17J21A0536', '134AK', 'COMPUTER ORGANIZATION', 'F', 0),
(348, '17J21A0536', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B', 6),
(349, '17J21A0536', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(350, '17J21A0536', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(351, '17J21A0538', '13408', 'COMPUTER ORGANIZATION LAB', 'B', 6),
(352, '17J21A0538', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(353, '17J21A0538', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(354, '17J21A0538', '13440', 'GENDER SENSITIZATION LAB', 'B+', 7),
(355, '17J21A0538', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'B', 6),
(356, '17J21A0538', '134AK', 'COMPUTER ORGANIZATION', 'B', 6),
(357, '17J21A0538', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B', 6),
(358, '17J21A0538', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'C', 5),
(359, '17J21A0538', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(360, '17J21A0539', '13408', 'COMPUTER ORGANIZATION LAB', 'B+', 7),
(361, '17J21A0539', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'A+', 9),
(362, '17J21A0539', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(363, '17J21A0539', '13440', 'GENDER SENSITIZATION LAB', 'B', 6),
(364, '17J21A0539', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'Ab', 0),
(365, '17J21A0539', '134AK', 'COMPUTER ORGANIZATION', 'B', 6),
(366, '17J21A0539', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'F', 0),
(367, '17J21A0539', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'C', 5),
(368, '17J21A0539', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(369, '17J21A0540', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(370, '17J21A0540', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(371, '17J21A0540', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(372, '17J21A0540', '13440', 'GENDER SENSITIZATION LAB', 'A', 8),
(373, '17J21A0540', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'B', 6),
(374, '17J21A0540', '134AK', 'COMPUTER ORGANIZATION', 'B+', 7),
(375, '17J21A0540', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B+', 7),
(376, '17J21A0540', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'A', 8),
(377, '17J21A0540', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(378, '17J21A0541', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(379, '17J21A0541', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(380, '17J21A0541', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(381, '17J21A0541', '13440', 'GENDER SENSITIZATION LAB', 'A', 8),
(382, '17J21A0541', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'B+', 7),
(383, '17J21A0541', '134AK', 'COMPUTER ORGANIZATION', 'B+', 7),
(384, '17J21A0541', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B+', 7),
(385, '17J21A0541', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'B', 6),
(386, '17J21A0541', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(387, '17J21A0542', '13408', 'COMPUTER ORGANIZATION LAB', 'A+', 9),
(388, '17J21A0542', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(389, '17J21A0542', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(390, '17J21A0542', '13440', 'GENDER SENSITIZATION LAB', 'B', 6),
(391, '17J21A0542', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'F', 0),
(392, '17J21A0542', '134AK', 'COMPUTER ORGANIZATION', 'F', 0),
(393, '17J21A0542', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'C', 5),
(394, '17J21A0542', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(395, '17J21A0542', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(396, '17J21A0544', '13408', 'COMPUTER ORGANIZATION LAB', 'A+', 9),
(397, '17J21A0544', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(398, '17J21A0544', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(399, '17J21A0544', '13440', 'GENDER SENSITIZATION LAB', 'A', 8),
(400, '17J21A0544', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'B', 6),
(401, '17J21A0544', '134AK', 'COMPUTER ORGANIZATION', 'B', 6),
(402, '17J21A0544', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B', 6),
(403, '17J21A0544', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'C', 5),
(404, '17J21A0544', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(405, '17J21A0545', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(406, '17J21A0545', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'A+', 9),
(407, '17J21A0545', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(408, '17J21A0545', '13440', 'GENDER SENSITIZATION LAB', 'B', 6),
(409, '17J21A0545', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'C', 5),
(410, '17J21A0545', '134AK', 'COMPUTER ORGANIZATION', 'B', 6),
(411, '17J21A0545', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B', 6),
(412, '17J21A0545', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'C', 5),
(413, '17J21A0545', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(414, '17J21A0546', '13408', 'COMPUTER ORGANIZATION LAB', 'A+', 9),
(415, '17J21A0546', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'A+', 9),
(416, '17J21A0546', '13432', 'OPERATING SYSTEMS LAB', 'A+', 9),
(417, '17J21A0546', '13440', 'GENDER SENSITIZATION LAB', 'B', 6),
(418, '17J21A0546', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'F', 0),
(419, '17J21A0546', '134AK', 'COMPUTER ORGANIZATION', 'C', 5),
(420, '17J21A0546', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'C', 5),
(421, '17J21A0546', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(422, '17J21A0546', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(423, '17J21A0547', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(424, '17J21A0547', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(425, '17J21A0547', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(426, '17J21A0547', '13440', 'GENDER SENSITIZATION LAB', 'A', 8),
(427, '17J21A0547', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'B', 6),
(428, '17J21A0547', '134AK', 'COMPUTER ORGANIZATION', 'B', 6),
(429, '17J21A0547', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B', 6),
(430, '17J21A0547', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'B+', 7),
(431, '17J21A0547', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(432, '17J21A0550', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(433, '17J21A0550', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(434, '17J21A0550', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(435, '17J21A0550', '13440', 'GENDER SENSITIZATION LAB', 'B+', 7),
(436, '17J21A0550', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'B', 6),
(437, '17J21A0550', '134AK', 'COMPUTER ORGANIZATION', 'B+', 7),
(438, '17J21A0550', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B+', 7),
(439, '17J21A0550', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'B+', 7),
(440, '17J21A0550', '134BU', 'OPERATING SYSTEMS', 'B', 6),
(441, '17J21A0551', '13408', 'COMPUTER ORGANIZATION LAB', 'A+', 9),
(442, '17J21A0551', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(443, '17J21A0551', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(444, '17J21A0551', '13440', 'GENDER SENSITIZATION LAB', 'B', 6),
(445, '17J21A0551', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'B', 6),
(446, '17J21A0551', '134AK', 'COMPUTER ORGANIZATION', 'B', 6),
(447, '17J21A0551', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'C', 5),
(448, '17J21A0551', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'C', 5),
(449, '17J21A0551', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(450, '17J21A0552', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(451, '17J21A0552', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'A', 8),
(452, '17J21A0552', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(453, '17J21A0552', '13440', 'GENDER SENSITIZATION LAB', 'B', 6),
(454, '17J21A0552', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'C', 5),
(455, '17J21A0552', '134AK', 'COMPUTER ORGANIZATION', 'B', 6),
(456, '17J21A0552', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B', 6),
(457, '17J21A0552', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'B+', 7),
(458, '17J21A0552', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(459, '17J21A0554', '13408', 'COMPUTER ORGANIZATION LAB', 'B', 6),
(460, '17J21A0554', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(461, '17J21A0554', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(462, '17J21A0554', '13440', 'GENDER SENSITIZATION LAB', 'C', 5),
(463, '17J21A0554', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'F', 0),
(464, '17J21A0554', '134AK', 'COMPUTER ORGANIZATION', 'F', 0),
(465, '17J21A0554', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'F', 0),
(466, '17J21A0554', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(467, '17J21A0554', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(468, '17J21A0555', '13408', 'COMPUTER ORGANIZATION LAB', 'B', 6),
(469, '17J21A0555', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(470, '17J21A0555', '13432', 'OPERATING SYSTEMS LAB', 'A+', 9),
(471, '17J21A0555', '13440', 'GENDER SENSITIZATION LAB', 'C', 5),
(472, '17J21A0555', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'F', 0),
(473, '17J21A0555', '134AK', 'COMPUTER ORGANIZATION', 'C', 5),
(474, '17J21A0555', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'C', 5),
(475, '17J21A0555', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(476, '17J21A0555', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(477, '17J21A0556', '13408', 'COMPUTER ORGANIZATION LAB', 'A+', 9),
(478, '17J21A0556', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(479, '17J21A0556', '13432', 'OPERATING SYSTEMS LAB', 'A+', 9),
(480, '17J21A0556', '13440', 'GENDER SENSITIZATION LAB', 'B+', 7),
(481, '17J21A0556', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'C', 5),
(482, '17J21A0556', '134AK', 'COMPUTER ORGANIZATION', 'F', 0),
(483, '17J21A0556', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'C', 5),
(484, '17J21A0556', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(485, '17J21A0556', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(486, '17J21A0557', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(487, '17J21A0557', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(488, '17J21A0557', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(489, '17J21A0557', '13440', 'GENDER SENSITIZATION LAB', 'B', 6),
(490, '17J21A0557', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'C', 5),
(491, '17J21A0557', '134AK', 'COMPUTER ORGANIZATION', 'B', 6),
(492, '17J21A0557', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B', 6),
(493, '17J21A0557', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(494, '17J21A0557', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(495, '17J21A0558', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(496, '17J21A0558', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(497, '17J21A0558', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(498, '17J21A0558', '13440', 'GENDER SENSITIZATION LAB', 'B+', 7),
(499, '17J21A0558', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'B+', 7),
(500, '17J21A0558', '134AK', 'COMPUTER ORGANIZATION', 'A+', 9),
(501, '17J21A0558', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B+', 7),
(502, '17J21A0558', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'A+', 9),
(503, '17J21A0558', '134BU', 'OPERATING SYSTEMS', 'B', 6),
(504, '17J21A0559', '13408', 'COMPUTER ORGANIZATION LAB', 'B+', 7),
(505, '17J21A0559', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(506, '17J21A0559', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(507, '17J21A0559', '13440', 'GENDER SENSITIZATION LAB', 'C', 5),
(508, '17J21A0559', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'F', 0),
(509, '17J21A0559', '134AK', 'COMPUTER ORGANIZATION', 'C', 5),
(510, '17J21A0559', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B', 6),
(511, '17J21A0559', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'B', 6),
(512, '17J21A0559', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(513, '17J21A0560', '13408', 'COMPUTER ORGANIZATION LAB', 'A+', 9),
(514, '17J21A0560', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(515, '17J21A0560', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(516, '17J21A0560', '13440', 'GENDER SENSITIZATION LAB', 'B+', 7),
(517, '17J21A0560', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'B', 6),
(518, '17J21A0560', '134AK', 'COMPUTER ORGANIZATION', 'B', 6),
(519, '17J21A0560', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'C', 5),
(520, '17J21A0560', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'C', 5),
(521, '17J21A0560', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(522, '17J21A0561', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(523, '17J21A0561', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(524, '17J21A0561', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(525, '17J21A0561', '13440', 'GENDER SENSITIZATION LAB', 'A', 8),
(526, '17J21A0561', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'C', 5),
(527, '17J21A0561', '134AK', 'COMPUTER ORGANIZATION', 'B+', 7),
(528, '17J21A0561', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B+', 7),
(529, '17J21A0561', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'B+', 7),
(530, '17J21A0561', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(531, '17J21A0562', '13408', 'COMPUTER ORGANIZATION LAB', 'B', 6),
(532, '17J21A0562', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(533, '17J21A0562', '13432', 'OPERATING SYSTEMS LAB', 'A+', 9),
(534, '17J21A0562', '13440', 'GENDER SENSITIZATION LAB', 'B', 6),
(535, '17J21A0562', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'C', 5),
(536, '17J21A0562', '134AK', 'COMPUTER ORGANIZATION', 'C', 5),
(537, '17J21A0562', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B', 6),
(538, '17J21A0562', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(539, '17J21A0562', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(540, '17J21A0563', '13408', 'COMPUTER ORGANIZATION LAB', 'A+', 9),
(541, '17J21A0563', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(542, '17J21A0563', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(543, '17J21A0563', '13440', 'GENDER SENSITIZATION LAB', 'B+', 7),
(544, '17J21A0563', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'C', 5),
(545, '17J21A0563', '134AK', 'COMPUTER ORGANIZATION', 'B', 6),
(546, '17J21A0563', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B', 6),
(547, '17J21A0563', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'C', 5),
(548, '17J21A0563', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(549, '17J21A0564', '13408', 'COMPUTER ORGANIZATION LAB', 'B', 6),
(550, '17J21A0564', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'A+', 9),
(551, '17J21A0564', '13432', 'OPERATING SYSTEMS LAB', 'A+', 9),
(552, '17J21A0564', '13440', 'GENDER SENSITIZATION LAB', 'C', 5),
(553, '17J21A0564', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'C', 5),
(554, '17J21A0564', '134AK', 'COMPUTER ORGANIZATION', 'C', 5),
(555, '17J21A0564', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'C', 5),
(556, '17J21A0564', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(557, '17J21A0564', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(558, '17J21A0565', '13408', 'COMPUTER ORGANIZATION LAB', 'B', 6),
(559, '17J21A0565', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'A+', 9),
(560, '17J21A0565', '13432', 'OPERATING SYSTEMS LAB', 'A+', 9),
(561, '17J21A0565', '13440', 'GENDER SENSITIZATION LAB', 'B', 6),
(562, '17J21A0565', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'C', 5),
(563, '17J21A0565', '134AK', 'COMPUTER ORGANIZATION', 'C', 5),
(564, '17J21A0565', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'C', 5),
(565, '17J21A0565', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(566, '17J21A0565', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(567, '17J21A0566', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(568, '17J21A0566', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(569, '17J21A0566', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(570, '17J21A0566', '13440', 'GENDER SENSITIZATION LAB', 'A', 8),
(571, '17J21A0566', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'A', 8),
(572, '17J21A0566', '134AK', 'COMPUTER ORGANIZATION', 'B', 6),
(573, '17J21A0566', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B+', 7),
(574, '17J21A0566', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'A', 8),
(575, '17J21A0566', '134BU', 'OPERATING SYSTEMS', 'B', 6),
(576, '17J21A0567', '13408', 'COMPUTER ORGANIZATION LAB', 'B+', 7),
(577, '17J21A0567', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(578, '17J21A0567', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(579, '17J21A0567', '13440', 'GENDER SENSITIZATION LAB', 'B', 6),
(580, '17J21A0567', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'B+', 7),
(581, '17J21A0567', '134AK', 'COMPUTER ORGANIZATION', 'C', 5),
(582, '17J21A0567', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B', 6),
(583, '17J21A0567', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'C', 5),
(584, '17J21A0567', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(585, '17J21A0568', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(586, '17J21A0568', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(587, '17J21A0568', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(588, '17J21A0568', '13440', 'GENDER SENSITIZATION LAB', 'B', 6),
(589, '17J21A0568', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'A', 8),
(590, '17J21A0568', '134AK', 'COMPUTER ORGANIZATION', 'B+', 7),
(591, '17J21A0568', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B', 6),
(592, '17J21A0568', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'B', 6),
(593, '17J21A0568', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(594, '17J21A0569', '13408', 'COMPUTER ORGANIZATION LAB', 'B', 6),
(595, '17J21A0569', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'A+', 9),
(596, '17J21A0569', '13432', 'OPERATING SYSTEMS LAB', 'A+', 9),
(597, '17J21A0569', '13440', 'GENDER SENSITIZATION LAB', 'B', 6),
(598, '17J21A0569', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'C', 5),
(599, '17J21A0569', '134AK', 'COMPUTER ORGANIZATION', 'C', 5),
(600, '17J21A0569', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'C', 5),
(601, '17J21A0569', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(602, '17J21A0569', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(603, '17J21A0570', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(604, '17J21A0570', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(605, '17J21A0570', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(606, '17J21A0570', '13440', 'GENDER SENSITIZATION LAB', 'B', 6),
(607, '17J21A0570', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'B+', 7),
(608, '17J21A0570', '134AK', 'COMPUTER ORGANIZATION', 'B', 6),
(609, '17J21A0570', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B', 6),
(610, '17J21A0570', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'A', 8),
(611, '17J21A0570', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(612, '17J21A0571', '13408', 'COMPUTER ORGANIZATION LAB', 'A+', 9),
(613, '17J21A0571', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(614, '17J21A0571', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(615, '17J21A0571', '13440', 'GENDER SENSITIZATION LAB', 'A', 8),
(616, '17J21A0571', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'B+', 7),
(617, '17J21A0571', '134AK', 'COMPUTER ORGANIZATION', 'C', 5),
(618, '17J21A0571', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'C', 5),
(619, '17J21A0571', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'B+', 7),
(620, '17J21A0571', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(621, '17J21A0572', '13408', 'COMPUTER ORGANIZATION LAB', 'B+', 7),
(622, '17J21A0572', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(623, '17J21A0572', '13432', 'OPERATING SYSTEMS LAB', 'A+', 9),
(624, '17J21A0572', '13440', 'GENDER SENSITIZATION LAB', 'B+', 7),
(625, '17J21A0572', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'C', 5),
(626, '17J21A0572', '134AK', 'COMPUTER ORGANIZATION', 'F', 0),
(627, '17J21A0572', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B', 6),
(628, '17J21A0572', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'C', 5),
(629, '17J21A0572', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(630, '17J21A0573', '13408', 'COMPUTER ORGANIZATION LAB', 'B+', 7),
(631, '17J21A0573', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'A+', 9),
(632, '17J21A0573', '13432', 'OPERATING SYSTEMS LAB', 'A+', 9),
(633, '17J21A0573', '13440', 'GENDER SENSITIZATION LAB', 'B', 6),
(634, '17J21A0573', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'B', 6),
(635, '17J21A0573', '134AK', 'COMPUTER ORGANIZATION', 'F', 0),
(636, '17J21A0573', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'C', 5),
(637, '17J21A0573', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'C', 5),
(638, '17J21A0573', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(639, '17J21A0574', '13408', 'COMPUTER ORGANIZATION LAB', 'A+', 9),
(640, '17J21A0574', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(641, '17J21A0574', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(642, '17J21A0574', '13440', 'GENDER SENSITIZATION LAB', 'B+', 7),
(643, '17J21A0574', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'B', 6),
(644, '17J21A0574', '134AK', 'COMPUTER ORGANIZATION', 'B', 6),
(645, '17J21A0574', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B', 6),
(646, '17J21A0574', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'B', 6),
(647, '17J21A0574', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(648, '17J21A0576', '13408', 'COMPUTER ORGANIZATION LAB', 'C', 5),
(649, '17J21A0576', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'A+', 9),
(650, '17J21A0576', '13432', 'OPERATING SYSTEMS LAB', 'A+', 9),
(651, '17J21A0576', '13440', 'GENDER SENSITIZATION LAB', 'B', 6),
(652, '17J21A0576', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'C', 5),
(653, '17J21A0576', '134AK', 'COMPUTER ORGANIZATION', 'F', 0),
(654, '17J21A0576', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'C', 5),
(655, '17J21A0576', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'C', 5),
(656, '17J21A0576', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(657, '17J21A0577', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(658, '17J21A0577', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(659, '17J21A0577', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(660, '17J21A0577', '13440', 'GENDER SENSITIZATION LAB', 'A+', 9),
(661, '17J21A0577', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'A', 8),
(662, '17J21A0577', '134AK', 'COMPUTER ORGANIZATION', 'B', 6),
(663, '17J21A0577', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B', 6),
(664, '17J21A0577', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'A', 8),
(665, '17J21A0577', '134BU', 'OPERATING SYSTEMS', 'B', 6),
(666, '17J21A0578', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(667, '17J21A0578', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(668, '17J21A0578', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(669, '17J21A0578', '13440', 'GENDER SENSITIZATION LAB', 'B', 6),
(670, '17J21A0578', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'B+', 7),
(671, '17J21A0578', '134AK', 'COMPUTER ORGANIZATION', 'C', 5),
(672, '17J21A0578', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B', 6),
(673, '17J21A0578', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'C', 5),
(674, '17J21A0578', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(675, '17J21A0579', '13408', 'COMPUTER ORGANIZATION LAB', 'B', 6),
(676, '17J21A0579', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'A+', 9),
(677, '17J21A0579', '13432', 'OPERATING SYSTEMS LAB', 'A+', 9),
(678, '17J21A0579', '13440', 'GENDER SENSITIZATION LAB', 'C', 5),
(679, '17J21A0579', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'F', 0),
(680, '17J21A0579', '134AK', 'COMPUTER ORGANIZATION', 'C', 5),
(681, '17J21A0579', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'F', 0),
(682, '17J21A0579', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(683, '17J21A0579', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(684, '17J21A0580', '13408', 'COMPUTER ORGANIZATION LAB', 'B', 6),
(685, '17J21A0580', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'A+', 9),
(686, '17J21A0580', '13432', 'OPERATING SYSTEMS LAB', 'A+', 9),
(687, '17J21A0580', '13440', 'GENDER SENSITIZATION LAB', 'C', 5),
(688, '17J21A0580', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'F', 0),
(689, '17J21A0580', '134AK', 'COMPUTER ORGANIZATION', 'F', 0),
(690, '17J21A0580', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'F', 0),
(691, '17J21A0580', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(692, '17J21A0580', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(693, '17J21A0581', '13408', 'COMPUTER ORGANIZATION LAB', 'B', 6),
(694, '17J21A0581', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(695, '17J21A0581', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(696, '17J21A0581', '13440', 'GENDER SENSITIZATION LAB', 'B+', 7),
(697, '17J21A0581', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'A+', 9),
(698, '17J21A0581', '134AK', 'COMPUTER ORGANIZATION', 'A', 8),
(699, '17J21A0581', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B+', 7),
(700, '17J21A0581', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'A', 8),
(701, '17J21A0581', '134BU', 'OPERATING SYSTEMS', 'B', 6),
(702, '17J21A0582', '13408', 'COMPUTER ORGANIZATION LAB', 'Ab', 0),
(703, '17J21A0582', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'Ab', 0),
(704, '17J21A0582', '13432', 'OPERATING SYSTEMS LAB', 'Ab', 0),
(705, '17J21A0582', '13440', 'GENDER SENSITIZATION LAB', 'Ab', 0),
(706, '17J21A0582', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'Ab', 0),
(707, '17J21A0582', '134AK', 'COMPUTER ORGANIZATION', 'Ab', 0),
(708, '17J21A0582', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'Ab', 0),
(709, '17J21A0582', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'Ab', 0),
(710, '17J21A0582', '134BU', 'OPERATING SYSTEMS', 'Ab', 0),
(711, '17J21A0584', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(712, '17J21A0584', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(713, '17J21A0584', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(714, '17J21A0584', '13440', 'GENDER SENSITIZATION LAB', 'A+', 9),
(715, '17J21A0584', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'A', 8),
(716, '17J21A0584', '134AK', 'COMPUTER ORGANIZATION', 'B+', 7),
(717, '17J21A0584', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B', 6),
(718, '17J21A0584', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'B', 6),
(719, '17J21A0584', '134BU', 'OPERATING SYSTEMS', 'B', 6),
(720, '17J21A0585', '13408', 'COMPUTER ORGANIZATION LAB', 'B+', 7),
(721, '17J21A0585', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(722, '17J21A0585', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(723, '17J21A0585', '13440', 'GENDER SENSITIZATION LAB', 'B+', 7),
(724, '17J21A0585', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'C', 5),
(725, '17J21A0585', '134AK', 'COMPUTER ORGANIZATION', 'C', 5),
(726, '17J21A0585', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'C', 5),
(727, '17J21A0585', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(728, '17J21A0585', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(729, '17J21A0586', '13408', 'COMPUTER ORGANIZATION LAB', 'B+', 7),
(730, '17J21A0586', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(731, '17J21A0586', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(732, '17J21A0586', '13440', 'GENDER SENSITIZATION LAB', 'B', 6),
(733, '17J21A0586', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'C', 5),
(734, '17J21A0586', '134AK', 'COMPUTER ORGANIZATION', 'C', 5),
(735, '17J21A0586', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'C', 5),
(736, '17J21A0586', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'C', 5),
(737, '17J21A0586', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(738, '17J21A0587', '13408', 'COMPUTER ORGANIZATION LAB', 'B', 6),
(739, '17J21A0587', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'A+', 9),
(740, '17J21A0587', '13432', 'OPERATING SYSTEMS LAB', 'A', 8),
(741, '17J21A0587', '13440', 'GENDER SENSITIZATION LAB', 'C', 5),
(742, '17J21A0587', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'C', 5),
(743, '17J21A0587', '134AK', 'COMPUTER ORGANIZATION', 'F', 0);
INSERT INTO `result_2_2` (`rid`, `sid`, `subject_id`, `subject_name`, `grade`, `grade_points`) VALUES
(744, '17J21A0587', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'C', 5),
(745, '17J21A0587', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'C', 5),
(746, '17J21A0587', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(747, '17J21A0588', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(748, '17J21A0588', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(749, '17J21A0588', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(750, '17J21A0588', '13440', 'GENDER SENSITIZATION LAB', 'A', 8),
(751, '17J21A0588', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'A', 8),
(752, '17J21A0588', '134AK', 'COMPUTER ORGANIZATION', 'B', 6),
(753, '17J21A0588', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B+', 7),
(754, '17J21A0588', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'A+', 9),
(755, '17J21A0588', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(756, '17J21A0589', '13408', 'COMPUTER ORGANIZATION LAB', 'B+', 7),
(757, '17J21A0589', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(758, '17J21A0589', '13432', 'OPERATING SYSTEMS LAB', 'A+', 9),
(759, '17J21A0589', '13440', 'GENDER SENSITIZATION LAB', 'A', 8),
(760, '17J21A0589', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'F', 0),
(761, '17J21A0589', '134AK', 'COMPUTER ORGANIZATION', 'F', 0),
(762, '17J21A0589', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'C', 5),
(763, '17J21A0589', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(764, '17J21A0589', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(765, '17J21A0590', '13408', 'COMPUTER ORGANIZATION LAB', 'B+', 7),
(766, '17J21A0590', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'A+', 9),
(767, '17J21A0590', '13432', 'OPERATING SYSTEMS LAB', 'A+', 9),
(768, '17J21A0590', '13440', 'GENDER SENSITIZATION LAB', 'B', 6),
(769, '17J21A0590', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'C', 5),
(770, '17J21A0590', '134AK', 'COMPUTER ORGANIZATION', 'F', 0),
(771, '17J21A0590', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'C', 5),
(772, '17J21A0590', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(773, '17J21A0590', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(774, '17J21A0591', '13408', 'COMPUTER ORGANIZATION LAB', 'B', 6),
(775, '17J21A0591', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'A+', 9),
(776, '17J21A0591', '13432', 'OPERATING SYSTEMS LAB', 'A+', 9),
(777, '17J21A0591', '13440', 'GENDER SENSITIZATION LAB', 'C', 5),
(778, '17J21A0591', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'C', 5),
(779, '17J21A0591', '134AK', 'COMPUTER ORGANIZATION', 'C', 5),
(780, '17J21A0591', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'C', 5),
(781, '17J21A0591', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'C', 5),
(782, '17J21A0591', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(783, '17J21A0592', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(784, '17J21A0592', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(785, '17J21A0592', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(786, '17J21A0592', '13440', 'GENDER SENSITIZATION LAB', 'B+', 7),
(787, '17J21A0592', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'B+', 7),
(788, '17J21A0592', '134AK', 'COMPUTER ORGANIZATION', 'B+', 7),
(789, '17J21A0592', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B+', 7),
(790, '17J21A0592', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'B+', 7),
(791, '17J21A0592', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(792, '17J21A0593', '13408', 'COMPUTER ORGANIZATION LAB', 'B', 6),
(793, '17J21A0593', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'A+', 9),
(794, '17J21A0593', '13432', 'OPERATING SYSTEMS LAB', 'A', 8),
(795, '17J21A0593', '13440', 'GENDER SENSITIZATION LAB', 'C', 5),
(796, '17J21A0593', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'C', 5),
(797, '17J21A0593', '134AK', 'COMPUTER ORGANIZATION', 'C', 5),
(798, '17J21A0593', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'C', 5),
(799, '17J21A0593', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'C', 5),
(800, '17J21A0593', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(801, '17J21A0594', '13408', 'COMPUTER ORGANIZATION LAB', 'O', 10),
(802, '17J21A0594', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'O', 10),
(803, '17J21A0594', '13432', 'OPERATING SYSTEMS LAB', 'O', 10),
(804, '17J21A0594', '13440', 'GENDER SENSITIZATION LAB', 'B', 6),
(805, '17J21A0594', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'C', 5),
(806, '17J21A0594', '134AK', 'COMPUTER ORGANIZATION', 'B', 6),
(807, '17J21A0594', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'B', 6),
(808, '17J21A0594', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'B', 6),
(809, '17J21A0594', '134BU', 'OPERATING SYSTEMS', 'C', 5),
(810, '17J21A0595', '13408', 'COMPUTER ORGANIZATION LAB', 'C', 5),
(811, '17J21A0595', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'A+', 9),
(812, '17J21A0595', '13432', 'OPERATING SYSTEMS LAB', 'A+', 9),
(813, '17J21A0595', '13440', 'GENDER SENSITIZATION LAB', 'C', 5),
(814, '17J21A0595', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'F', 0),
(815, '17J21A0595', '134AK', 'COMPUTER ORGANIZATION', 'F', 0),
(816, '17J21A0595', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'F', 0),
(817, '17J21A0595', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'Ab', 0),
(818, '17J21A0595', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(819, '17J21A0596', '13408', 'COMPUTER ORGANIZATION LAB', 'C', 5),
(820, '17J21A0596', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'A+', 9),
(821, '17J21A0596', '13432', 'OPERATING SYSTEMS LAB', 'A', 8),
(822, '17J21A0596', '13440', 'GENDER SENSITIZATION LAB', 'B', 6),
(823, '17J21A0596', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'C', 5),
(824, '17J21A0596', '134AK', 'COMPUTER ORGANIZATION', 'F', 0),
(825, '17J21A0596', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'F', 0),
(826, '17J21A0596', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(827, '17J21A0596', '134BU', 'OPERATING SYSTEMS', 'F', 0),
(828, '17J21A0597', '13408', 'COMPUTER ORGANIZATION LAB', 'B', 6),
(829, '17J21A0597', '13410', 'DATABASE MANAGEMENT SYSTEMS LAB', 'A', 8),
(830, '17J21A0597', '13432', 'OPERATING SYSTEMS LAB', 'A+', 9),
(831, '17J21A0597', '13440', 'GENDER SENSITIZATION LAB', 'C', 5),
(832, '17J21A0597', '134AG', 'BUSINESS ECONOMICS & FINANCIAL ANALYSIS', 'F', 0),
(833, '17J21A0597', '134AK', 'COMPUTER ORGANIZATION', 'C', 5),
(834, '17J21A0597', '134AP', 'DATABASE MANAGEMENT SYSTEMS', 'F', 0),
(835, '17J21A0597', '134BD', 'FORMAL LANGUAGES AND AUTOMATA THEORY', 'F', 0),
(836, '17J21A0597', '134BU', 'OPERATING SYSTEMS', 'F', 0);

-- --------------------------------------------------------

--
-- Table structure for table `result_3_1`
--

CREATE TABLE `result_3_1` (
  `rid` int(10) NOT NULL,
  `sid` varchar(11) NOT NULL,
  `subject_id` varchar(10) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `grade` varchar(5) NOT NULL,
  `grade_points` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result_3_2`
--

CREATE TABLE `result_3_2` (
  `rid` int(10) NOT NULL,
  `sid` varchar(11) NOT NULL,
  `subject_id` varchar(10) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `grade` varchar(5) NOT NULL,
  `grade_points` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result_4_1`
--

CREATE TABLE `result_4_1` (
  `rid` int(10) NOT NULL,
  `sid` varchar(11) NOT NULL,
  `subject_id` varchar(10) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `grade` varchar(5) NOT NULL,
  `grade_points` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result_4_2`
--

CREATE TABLE `result_4_2` (
  `rid` int(10) NOT NULL,
  `sid` varchar(11) NOT NULL,
  `subject_id` varchar(10) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `grade` varchar(5) NOT NULL,
  `grade_points` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_no` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `room_resources`
--

CREATE TABLE `room_resources` (
  `room_no` varchar(10) NOT NULL,
  `rid` varchar(10) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `sem_id` varchar(10) NOT NULL,
  `season` enum('Autumn','Winter') NOT NULL DEFAULT 'Autumn'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`sem_id`, `season`) VALUES
('1-1', 'Autumn');

-- --------------------------------------------------------

--
-- Table structure for table `semester_courses`
--

CREATE TABLE `semester_courses` (
  `sem_id` int(1) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester_courses`
--

INSERT INTO `semester_courses` (`sem_id`, `subject_id`) VALUES
(1, 111),
(1, 112),
(1, 113),
(1, 114),
(1, 115),
(1, 116),
(1, 117),
(1, 118),
(1, 119),
(2, 121),
(2, 122),
(2, 123),
(2, 124),
(2, 125),
(2, 126),
(2, 127),
(2, 128),
(2, 129),
(3, 211),
(3, 212),
(3, 213),
(3, 214),
(3, 215),
(3, 216),
(3, 217),
(3, 218),
(3, 219),
(4, 221),
(4, 222),
(4, 223),
(4, 224),
(4, 225),
(4, 226),
(4, 227),
(4, 228),
(4, 229),
(5, 311),
(5, 312),
(5, 313),
(5, 314),
(5, 315),
(5, 316),
(5, 317),
(5, 318),
(5, 319),
(6, 321),
(6, 322),
(6, 323),
(6, 324),
(6, 325),
(6, 326),
(6, 327),
(6, 328),
(6, 329),
(7, 411),
(7, 412),
(7, 413),
(7, 414),
(7, 415),
(7, 416),
(7, 417),
(7, 418),
(7, 419),
(8, 421),
(8, 422),
(8, 423),
(8, 424),
(8, 425),
(8, 426),
(8, 427),
(8, 428),
(8, 429);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `gender` enum('m','f') NOT NULL DEFAULT 'f',
  `designation` varchar(20) NOT NULL,
  `join_date` date NOT NULL,
  `mob_no` varchar(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `address` varchar(40) NOT NULL,
  `city` varchar(6) NOT NULL,
  `state` varchar(25) NOT NULL,
  `pin` varchar(6) NOT NULL,
  `blood_group` enum('ABP','ABN','AP','AN','BP','BN','OP','ON') DEFAULT 'OP',
  `ip` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `sid` varchar(10) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `father_name` varchar(50) NOT NULL,
  `mother_name` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('m','f') NOT NULL DEFAULT 'f',
  `status_ARA` enum('0','1') NOT NULL DEFAULT '0',
  `status_MC` enum('0','1') NOT NULL DEFAULT '0',
  `category` enum('sc','st','obc','gen') NOT NULL DEFAULT 'gen',
  `s_mob_no` varchar(10) NOT NULL,
  `guardian_email` varchar(50) NOT NULL,
  `guardian_mob_no` varchar(10) NOT NULL,
  `branch` enum('it','cse','mba','eee','ece','mech') NOT NULL DEFAULT 'it',
  `jee_rank` varchar(10) NOT NULL,
  `jee_roll_no` varchar(30) DEFAULT NULL,
  `board` varchar(30) NOT NULL,
  `address` varchar(40) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(25) NOT NULL,
  `pin` varchar(6) NOT NULL,
  `batch` enum('2016-20','2017-21','2018-22','2019-23','2018-20','2019-21') NOT NULL,
  `blood_group` enum('ABP','ABN','AP','AN','BP','BN','OP','ON') DEFAULT 'OP',
  `ip` varchar(60) NOT NULL,
  `student_email` varchar(80) NOT NULL,
  `section` enum('','A','B') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sid`, `firstname`, `lastname`, `password`, `father_name`, `mother_name`, `dob`, `gender`, `status_ARA`, `status_MC`, `category`, `s_mob_no`, `guardian_email`, `guardian_mob_no`, `branch`, `jee_rank`, `jee_roll_no`, `board`, `address`, `city`, `state`, `pin`, `batch`, `blood_group`, `ip`, `student_email`, `section`) VALUES
('17J21A0518', 'SRI HARINADH BABU', 'THELAPROLU', '5f4dcc3b5aa765d61d8327deb882cf99', 'T V CHALAPATHI RAO', 'T SIVA PARVATHI', '2000-07-09', 'm', '1', '1', 'gen', '9515995606', 'chalapathirao056@gmail.com', '8464007663', 'cse', '86', '930', '18391', 'business', 'cpt', 'AP', '522616', '2017-21', 'OP', '1', '', 'A'),
('17J21A0588', 'SRI HARINADH BABU', 'THELAPROLU', '5f4dcc3b5aa765d61d8327deb882cf99', 'T V CHALAPATHI RAO', 'T SIVA PARVATHI', '2000-09-07', 'm', '1', '1', 'gen', '9515995606', 'chalapathirao056@gmail.com', '8464007663', 'cse', '86', '930', '18391', 'business', 'cpt', 'AP', '522616', '2017-21', 'OP', '183.83.82.184', '', 'B');

--
-- Triggers `student`
--
DELIMITER $$
CREATE TRIGGER `cse_ma` AFTER INSERT ON `student` FOR EACH ROW IF(new.branch='cse' and (new.batch='2017-21' or new.batch='2016-20')) THEN
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,111);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,112);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,113);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,114);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,115);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,116);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,117);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,118);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,121);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,122);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,123);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,124);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,125);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,126);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,127);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,128);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,211);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,212);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,213);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,214);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,215);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,216);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,217);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,218);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,221);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,222);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,223);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,224);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,225);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,226);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,227);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,228);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,311);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,312);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,313);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,314);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,315);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,316);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,317);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,318);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,321);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,322);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,323);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,324);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,325);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,326);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,327);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,328);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,411);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,412);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,413);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,414);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,415);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,416);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,417);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,418);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,419);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,421);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,422);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,423);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,424);
ELSEIF(new.branch='cse' and (new.batch='2018-22' or new.batch='2019-23') ) THEN
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,111);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,112);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,113);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,114);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,115);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,116);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,117);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,118);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,121);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,122);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,123);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,124);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,125);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,126);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,211);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,212);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,213);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,214);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,215);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,216);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,217);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,218);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,219);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,221);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,222);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,223);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,224);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,225);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,226);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,227);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,228);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,311);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,312);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,313);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,314);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,315);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,316);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,317);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,318);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,319);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,321);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,322);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,323);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,324);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,325);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,326);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,327);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,328);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,329);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,411);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,412);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,413);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,414);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,415);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,416);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,417);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,418);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,419);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,421);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,422);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,423);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,424);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,425);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,426);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,427);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,428);
INSERT INTO cse_ma(sid,subject_id)VALUES(new.sid,429);

ELSEIF(new.branch='it' and (new.batch='2017-21' or new.batch='2016-20')) THEN
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,111);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,112);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,113);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,114);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,115);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,116);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,117);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,118);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,121);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,122);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,123);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,124);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,125);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,126);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,127);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,128);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,211);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,212);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,213);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,214);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,215);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,216);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,217);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,218);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,221);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,222);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,223);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,224);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,225);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,226);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,227);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,228);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,311);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,312);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,313);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,314);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,315);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,316);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,317);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,318);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,321);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,322);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,323);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,324);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,325);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,326);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,327);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,328);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,411);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,412);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,413);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,414);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,415);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,416);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,417);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,418);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,419);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,421);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,422);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,423);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,424);
ELSEIF(new.branch='it' and (new.batch='2018-22' or new.batch='2019-23') ) THEN
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,111);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,112);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,113);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,114);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,115);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,116);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,117);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,118);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,121);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,122);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,123);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,124);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,125);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,126);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,211);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,212);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,213);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,214);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,215);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,216);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,217);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,218);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,219);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,221);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,222);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,223);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,224);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,225);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,226);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,227);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,228);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,311);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,312);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,313);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,314);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,315);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,316);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,317);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,318);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,319);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,321);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,322);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,323);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,324);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,325);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,326);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,327);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,328);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,329);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,411);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,412);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,413);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,414);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,415);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,416);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,417);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,418);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,419);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,421);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,422);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,423);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,424);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,425);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,426);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,427);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,428);
INSERT INTO it_ma(sid,subject_id)VALUES(new.sid,429);

ELSEIF(new.branch='mech' and (new.batch='2017-21' or new.batch='2016-20')) THEN
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,111);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,112);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,113);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,114);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,115);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,116);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,117);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,118);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,121);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,122);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,123);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,124);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,125);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,126);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,127);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,128);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,211);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,212);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,213);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,214);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,215);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,216);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,217);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,218);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,221);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,222);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,223);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,224);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,225);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,226);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,227);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,228);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,311);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,312);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,313);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,314);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,315);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,316);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,317);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,318);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,321);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,322);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,323);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,324);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,325);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,326);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,327);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,328);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,411);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,412);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,413);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,414);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,415);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,416);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,417);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,418);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,419);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,421);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,422);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,423);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,424);
ELSEIF(new.branch='mech' and (new.batch='2018-22' or new.batch='2019-23') ) THEN
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,111);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,112);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,113);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,114);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,115);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,116);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,121);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,122);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,123);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,124);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,125);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,126);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,127);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,211);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,212);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,213);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,214);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,215);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,216);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,217);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,218);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,221);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,222);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,223);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,224);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,225);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,226);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,227);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,228);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,311);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,312);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,313);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,314);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,315);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,316);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,317);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,318);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,319);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,321);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,322);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,323);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,324);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,325);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,326);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,327);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,328);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,329);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,411);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,412);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,413);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,414);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,415);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,416);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,417);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,418);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,419);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,421);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,422);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,423);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,424);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,425);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,426);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,427);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,428);
INSERT INTO mech_ma(sid,subject_id)VALUES(new.sid,429);
ELSEIF(new.branch='ece' and (new.batch='2017-21' or new.batch='2016-20')) THEN
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,111);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,112);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,113);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,114);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,115);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,116);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,117);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,118);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,121);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,122);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,123);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,124);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,125);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,126);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,127);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,128);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,211);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,212);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,213);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,214);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,215);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,216);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,217);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,218);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,221);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,222);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,223);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,224);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,225);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,226);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,227);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,228);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,311);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,312);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,313);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,314);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,315);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,316);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,317);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,318);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,321);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,322);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,323);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,324);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,325);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,326);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,327);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,328);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,411);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,412);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,413);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,414);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,415);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,416);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,417);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,418);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,419);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,421);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,422);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,423);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,424);
ELSEIF(new.branch='ece' and (new.batch='2018-22' or new.batch='2019-23') ) THEN
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,111);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,112);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,113);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,114);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,115);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,116);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,121);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,122);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,123);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,124);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,125);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,126);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,127);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,128);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,211);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,212);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,213);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,214);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,215);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,216);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,217);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,218);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,221);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,222);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,223);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,224);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,225);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,226);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,227);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,228);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,311);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,312);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,313);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,314);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,315);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,316);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,317);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,318);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,319);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,321);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,322);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,323);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,324);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,325);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,326);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,327);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,328);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,329);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,411);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,412);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,413);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,414);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,415);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,416);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,417);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,418);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,419);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,421);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,422);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,423);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,424);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,425);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,426);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,427);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,428);
INSERT INTO ece_ma(sid,subject_id)VALUES(new.sid,429);
ELSEIF(new.branch='eee' and (new.batch='2017-21' or new.batch='2016-20')) THEN
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,111);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,112);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,113);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,114);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,115);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,116);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,117);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,118);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,121);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,122);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,123);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,124);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,125);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,126);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,127);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,128);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,211);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,212);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,213);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,214);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,215);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,216);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,217);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,218);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,221);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,222);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,223);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,224);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,225);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,226);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,227);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,228);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,311);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,312);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,313);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,314);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,315);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,316);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,317);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,318);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,321);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,322);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,323);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,324);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,325);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,326);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,327);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,328);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,411);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,412);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,413);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,414);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,415);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,416);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,417);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,418);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,419);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,421);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,422);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,423);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,424);
ELSEIF(new.branch='eee' and (new.batch='2018-22' or new.batch='2019-23') ) THEN
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,111);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,112);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,113);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,114);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,115);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,116);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,117);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,118);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,121);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,122);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,123);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,124);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,125);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,126);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,211);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,212);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,213);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,214);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,215);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,216);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,217);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,218);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,221);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,222);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,223);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,224);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,225);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,226);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,227);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,228);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,311);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,312);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,313);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,314);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,315);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,316);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,317);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,318);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,319);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,321);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,322);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,323);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,324);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,325);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,326);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,327);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,328);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,329);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,411);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,412);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,413);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,414);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,415);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,416);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,417);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,418);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,419);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,421);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,422);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,423);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,424);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,425);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,426);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,427);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,428);
INSERT INTO eee_ma(sid,subject_id)VALUES(new.sid,429);


END IF
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `student_certificate_requests1`
--

CREATE TABLE `student_certificate_requests1` (
  `sid` varchar(10) NOT NULL,
  `c_id` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_certificate_requests1`
--

INSERT INTO `student_certificate_requests1` (`sid`, `c_id`, `status`) VALUES
('17J21A0562', '13', 'Accepted');

-- --------------------------------------------------------

--
-- Table structure for table `student_course_faculty_grade`
--

CREATE TABLE `student_course_faculty_grade` (
  `sid` varchar(10) NOT NULL,
  `course_id` varchar(10) NOT NULL,
  `fid` varchar(30) NOT NULL,
  `gid` varchar(10) NOT NULL,
  `acadyear` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_enrolls_course`
--

CREATE TABLE `student_enrolls_course` (
  `sid` varchar(10) NOT NULL,
  `course_id` varchar(10) NOT NULL,
  `acadyear` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_enrolls_course`
--

INSERT INTO `student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES
('1', '111', '2017-21');

-- --------------------------------------------------------

--
-- Table structure for table `student_pays_fees`
--

CREATE TABLE `student_pays_fees` (
  `sid` int(11) NOT NULL,
  `fee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_registers_for_semester`
--

CREATE TABLE `student_registers_for_semester` (
  `sid` int(11) NOT NULL,
  `sem_id` varchar(10) NOT NULL,
  `acadyear` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_room`
--

CREATE TABLE `student_room` (
  `sid` varchar(10) NOT NULL,
  `room_no` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_images`
--

CREATE TABLE `tbl_images` (
  `id` int(11) NOT NULL,
  `name` longblob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `certificate`
--
ALTER TABLE `certificate`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `course_faculty`
--
ALTER TABLE `course_faculty`
  ADD PRIMARY KEY (`fid`,`course_id`,`acadyear`);

--
-- Indexes for table `cse_ma`
--
ALTER TABLE `cse_ma`
  ADD PRIMARY KEY (`ma_id`);

--
-- Indexes for table `ece_ma`
--
ALTER TABLE `ece_ma`
  ADD PRIMARY KEY (`ma_id`);

--
-- Indexes for table `eee_ma`
--
ALTER TABLE `eee_ma`
  ADD PRIMARY KEY (`ma_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`fee_id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`hostel_no`);

--
-- Indexes for table `hostel_residents`
--
ALTER TABLE `hostel_residents`
  ADD PRIMARY KEY (`hostel_no`,`room_no`,`sid`);

--
-- Indexes for table `hostel_room`
--
ALTER TABLE `hostel_room`
  ADD PRIMARY KEY (`hostel_no`,`room_no`);

--
-- Indexes for table `it_ma`
--
ALTER TABLE `it_ma`
  ADD PRIMARY KEY (`ma_id`);

--
-- Indexes for table `mech_ma`
--
ALTER TABLE `mech_ma`
  ADD PRIMARY KEY (`ma_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD UNIQUE KEY `note_id` (`note_id`);

--
-- Indexes for table `output_images`
--
ALTER TABLE `output_images`
  ADD PRIMARY KEY (`imageId`);

--
-- Indexes for table `rebate`
--
ALTER TABLE `rebate`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`resource_id`);

--
-- Indexes for table `result_1_1`
--
ALTER TABLE `result_1_1`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `result_1_2`
--
ALTER TABLE `result_1_2`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `result_2_1`
--
ALTER TABLE `result_2_1`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `result_2_2`
--
ALTER TABLE `result_2_2`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `result_3_1`
--
ALTER TABLE `result_3_1`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `result_3_2`
--
ALTER TABLE `result_3_2`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `result_4_1`
--
ALTER TABLE `result_4_1`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `result_4_2`
--
ALTER TABLE `result_4_2`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_no`);

--
-- Indexes for table `room_resources`
--
ALTER TABLE `room_resources`
  ADD PRIMARY KEY (`room_no`,`rid`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`sem_id`);

--
-- Indexes for table `semester_courses`
--
ALTER TABLE `semester_courses`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `student_certificate_requests1`
--
ALTER TABLE `student_certificate_requests1`
  ADD PRIMARY KEY (`sid`,`c_id`);

--
-- Indexes for table `student_course_faculty_grade`
--
ALTER TABLE `student_course_faculty_grade`
  ADD PRIMARY KEY (`sid`,`course_id`,`fid`);

--
-- Indexes for table `student_enrolls_course`
--
ALTER TABLE `student_enrolls_course`
  ADD PRIMARY KEY (`sid`,`course_id`);

--
-- Indexes for table `student_pays_fees`
--
ALTER TABLE `student_pays_fees`
  ADD PRIMARY KEY (`sid`,`fee_id`);

--
-- Indexes for table `student_registers_for_semester`
--
ALTER TABLE `student_registers_for_semester`
  ADD PRIMARY KEY (`sid`,`sem_id`);

--
-- Indexes for table `student_room`
--
ALTER TABLE `student_room`
  ADD PRIMARY KEY (`sid`,`room_no`);

--
-- Indexes for table `tbl_images`
--
ALTER TABLE `tbl_images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `certificate`
--
ALTER TABLE `certificate`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cse_ma`
--
ALTER TABLE `cse_ma`
  MODIFY `ma_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=511;

--
-- AUTO_INCREMENT for table `ece_ma`
--
ALTER TABLE `ece_ma`
  MODIFY `ma_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eee_ma`
--
ALTER TABLE `eee_ma`
  MODIFY `ma_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `fee_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `it_ma`
--
ALTER TABLE `it_ma`
  MODIFY `ma_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mech_ma`
--
ALTER TABLE `mech_ma`
  MODIFY `ma_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `note_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `output_images`
--
ALTER TABLE `output_images`
  MODIFY `imageId` tinyint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rebate`
--
ALTER TABLE `rebate`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `result_1_1`
--
ALTER TABLE `result_1_1`
  MODIFY `rid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `result_1_2`
--
ALTER TABLE `result_1_2`
  MODIFY `rid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `result_2_1`
--
ALTER TABLE `result_2_1`
  MODIFY `rid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `result_2_2`
--
ALTER TABLE `result_2_2`
  MODIFY `rid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=837;

--
-- AUTO_INCREMENT for table `result_3_1`
--
ALTER TABLE `result_3_1`
  MODIFY `rid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `result_3_2`
--
ALTER TABLE `result_3_2`
  MODIFY `rid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `result_4_1`
--
ALTER TABLE `result_4_1`
  MODIFY `rid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `result_4_2`
--
ALTER TABLE `result_4_2`
  MODIFY `rid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_images`
--
ALTER TABLE `tbl_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;