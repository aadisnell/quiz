-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2018 at 05:28 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'sunnygkp10@gmail.com', '123456'),
(2, 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5b34f3bac5bc8', '5b34f3baefb26'),
('5b364adc8e9db', '5b364adcbbb7d'),
('5b364cdde4a81', '5b364cde0d43c'),
('5b364d7908096', '5b364d792808d'),
('5b364e3819455', '5b364e384ba95');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('55846be776610', 'testing', 'sunnygkp10@gmail.com', 'testing', 'testing stART', '2015-06-19', '09:22:15pm'),
('5584ddd0da0ab', 'netcamp', 'sunnygkp10@gmail.com', 'feedback', ';mLBLB', '2015-06-20', '05:28:16am'),
('558510a8a1234', 'sunnygkp10', 'sunnygkp10@gmail.com', 'dl;dsnklfn', 'fmdsfld fdj', '2015-06-20', '09:05:12am'),
('5585509097ae2', 'sunny', 'sunnygkp10@gmail.com', 'kcsncsk', 'l.mdsavn', '2015-06-20', '01:37:52pm'),
('5586ee27af2c9', 'vikas', 'vikas@gmail.com', 'trial feedback', 'triaal feedbak', '2015-06-21', '07:02:31pm'),
('5589858b6c43b', 'nik', 'nik1@gmail.com', 'good', 'good site', '2015-06-23', '06:12:59pm');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('rdsowah@st.ug.edu.gh', '5b34f36536e54', 1, 1, 1, 0, '2018-06-29 10:26:51'),
('faith@gmail.com', '5b34f36536e54', 1, 1, 1, 0, '2018-06-29 13:41:37');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5b34f3bac5bc8', ' 3', '5b34f3baefb1c'),
('5b34f3bac5bc8', ' 4', '5b34f3baefb26'),
('5b34f3bac5bc8', ' 5', '5b34f3baefb27'),
('5b34f3bac5bc8', ' 6', '5b34f3baefb28'),
('5b34f3bac5bc8', ' 7', '5b34f3baefb2a'),
('5b364adc8e9db', 'Manchester United', '5b364adcbbb74'),
('5b364adc8e9db', 'Manchester City', '5b364adcbbb7d'),
('5b364adc8e9db', 'Liverpool', '5b364adcbbb7e'),
('5b364adc8e9db', 'Chelsea', '5b364adcbbb7f'),
('5b364adc8e9db', 'Arsenal', '5b364adcbbb81'),
('5b364cdde4a81', ' Mexico', '5b364cde0d424'),
('5b364cdde4a81', ' Uruguay', '5b364cde0d436'),
('5b364cdde4a81', ' Paraguay', '5b364cde0d439'),
('5b364cdde4a81', ' France', '5b364cde0d43c'),
('5b364cdde4a81', ' Spain', '5b364cde0d43e'),
('5b364d7908096', ' Cristiano Ronaldo', '5b364d7928080'),
('5b364d7908096', ' Lionel Messi', '5b364d792808a'),
('5b364d7908096', ' Benzema', '5b364d792808b'),
('5b364d7908096', ' Luis Suarez', '5b364d792808d'),
('5b364d7908096', ' Neymar', '5b364d792808e'),
('5b364e3819455', ' Stadio Olimpico', '5b364e384ba8a'),
('5b364e3819455', ' Estadio da Luz', '5b364e384ba94'),
('5b364e3819455', ' Olympiastadion', '5b364e384ba95'),
('5b364e3819455', ' Wembley Stadium', '5b364e384ba96'),
('5b364e3819455', ' Allianz Arena', '5b364e384ba97');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5b34f36536e54', '5b34f3bac5bc8', 'How many venues were used for the 2010 African cup of Nations?\r\n', 5, 1),
('5b364a5edb8c2', '5b364adc8e9db', 'Which team won the 2011/2012 English Premier League?\r\n\r\n', 4, 1),
('5b364c5f85dfa', '5b364cdde4a81', 'Which country hosted the 1998 FIFA World Cup?\r\n\r\n', 4, 1),
('5b364d073e00d', '5b364d7908096', 'Who was the top scorer in the 2015/2016 Spanish La Liga?\r\n\r\n', 4, 1),
('5b364dd190c6b', '5b364e3819455', 'In which stadium was the 2014/2015 UEFA Champions league final played?\r\n', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('5b34f36536e54', 'African Cup Of Nations', 1, 1, 1, 15, '', '', '2018-06-28 14:40:37'),
('5b364a5edb8c2', 'English Premier League', 1, 0, 1, 15, '', 'epl', '2018-06-29 15:03:58'),
('5b364c5f85dfa', 'Fifa World Cup', 1, 0, 1, 15, '', 'fwc', '2018-06-29 15:12:31'),
('5b364d073e00d', 'Spanish La Liga', 1, 0, 1, 15, '', 'sll', '2018-06-29 15:15:19'),
('5b364dd190c6b', 'Uefa Champions League', 1, 0, 1, 15, '', 'ucl', '2018-06-29 15:18:41');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('rdsowah@st.ug.edu.gh', 1, '2018-06-29 10:26:51'),
('faith@gmail.com', 1, '2018-06-29 13:41:37');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` text NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `email`, `mob`, `password`) VALUES
('Mark Zukarburg', 'M', 'ceo@facebook.com', '987654321', 'e10adc3949ba59abbe56e057f20f883e'),
('Faith', 'F', 'faith@gmail.com', '200851486', 'ecee7df9bbac50b9b428483bfea1dd7c'),
('Richmond', 'M', 'rdsowah@st.ug.edu.gh', '540819824', 'aa4bbe632574e4a96cddc259086b20dc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
