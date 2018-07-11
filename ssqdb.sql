-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2018 at 05:43 PM
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
-- Database: `ssqdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `acn_choices`
--

CREATE TABLE `acn_choices` (
  `id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT '0',
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acn_choices`
--

INSERT INTO `acn_choices` (`id`, `question_number`, `is_correct`, `text`) VALUES
(20, 1, 0, ' 3'),
(21, 1, 1, ' 4'),
(22, 1, 0, ' 5'),
(23, 1, 0, ' 6'),
(24, 1, 0, ' 7'),
(25, 2, 0, 'a'),
(26, 2, 1, 'b'),
(27, 2, 0, 'c'),
(28, 2, 0, 'd'),
(29, 2, 0, 'e'),
(30, 3, 0, 'b'),
(31, 3, 0, 'c'),
(32, 3, 1, 'd'),
(33, 3, 0, 'e'),
(34, 3, 0, 'f'),
(35, 4, 1, 'yes'),
(36, 4, 0, 'no'),
(37, 4, 0, 'it may be so'),
(38, 4, 0, 'yes sir'),
(39, 4, 0, 'good sir'),
(45, 5, 0, 'hy'),
(46, 5, 0, 'gh'),
(47, 5, 1, 'iu'),
(48, 5, 0, 'hj'),
(49, 5, 0, 'po'),
(50, 6, 0, 't'),
(51, 6, 1, 'y'),
(52, 6, 0, 'u'),
(53, 6, 0, 'i'),
(54, 6, 0, 'o'),
(55, 7, 0, 'good'),
(56, 7, 1, 'keep working'),
(57, 7, 0, 'never stop'),
(58, 7, 0, 'success'),
(59, 7, 0, 'always ');

-- --------------------------------------------------------

--
-- Table structure for table `acn_questions`
--

CREATE TABLE `acn_questions` (
  `question_number` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acn_questions`
--

INSERT INTO `acn_questions` (`question_number`, `text`) VALUES
(1, 'How many venues were used for the 2010 African cup of Nations?'),
(2, 'Where?'),
(3, 'How?'),
(4, 'Richmond Random Working?'),
(5, 'Adding a new question?'),
(6, 'new one'),
(7, 'Still Adding?');

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
-- Table structure for table `epl_choices`
--

CREATE TABLE `epl_choices` (
  `id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT '0',
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `epl_choices`
--

INSERT INTO `epl_choices` (`id`, `question_number`, `is_correct`, `text`) VALUES
(1, 1, 1, '1970'),
(2, 1, 0, '1234'),
(3, 1, 0, '3456'),
(4, 1, 0, '2313'),
(5, 1, 0, '2525'),
(6, 2, 0, 'Ghana'),
(7, 2, 0, 'Niger'),
(8, 2, 0, 'Togo'),
(9, 2, 1, 'Nigeria'),
(10, 2, 0, 'Congo');

-- --------------------------------------------------------

--
-- Table structure for table `epl_questions`
--

CREATE TABLE `epl_questions` (
  `question_number` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `epl_questions`
--

INSERT INTO `epl_questions` (`question_number`, `text`) VALUES
(1, 'What year did Ghana win the Afrian Cup?'),
(2, 'What is the most popular African Country?');

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
('5b3bac915e3d6', 'Richmond Sowah', 'rdsowah@st.ug.edu.gh', 'Complaint', 'My money is locked ', '2018-07-03', '05:04:17pm'),
('5b4331d864ee8', 'Ricci', 'rdsowah@st.ug.edu.gh', 'trial', 'dfbbdsfjhsbfjkfbksfbakfbkajbfksabfsfb  cxfbsfhbsjfbabajj', '2018-07-09', '09:58:48am');

-- --------------------------------------------------------

--
-- Table structure for table `fwc_choices`
--

CREATE TABLE `fwc_choices` (
  `id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT '0',
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fwc_choices`
--

INSERT INTO `fwc_choices` (`id`, `question_number`, `is_correct`, `text`) VALUES
(1, 1, 0, 'f'),
(2, 1, 0, 'i'),
(3, 1, 0, 'f'),
(4, 1, 0, 'a'),
(5, 1, 1, 'd'),
(6, 2, 0, 'fe'),
(7, 2, 0, 'de'),
(8, 2, 0, 'ra'),
(9, 2, 1, 'tion'),
(10, 2, 0, 'of');

-- --------------------------------------------------------

--
-- Table structure for table `fwc_questions`
--

CREATE TABLE `fwc_questions` (
  `question_number` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fwc_questions`
--

INSERT INTO `fwc_questions` (`question_number`, `text`) VALUES
(1, 'Where?'),
(2, 'FIFA?');

-- --------------------------------------------------------

--
-- Table structure for table `sll_choices`
--

CREATE TABLE `sll_choices` (
  `id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT '0',
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sll_choices`
--

INSERT INTO `sll_choices` (`id`, `question_number`, `is_correct`, `text`) VALUES
(1, 1, 1, 'C'),
(2, 1, 0, 'ri'),
(3, 1, 0, 'st'),
(4, 1, 0, 'ia'),
(5, 1, 0, 'no'),
(6, 2, 0, 'Nobody'),
(7, 2, 0, 'Player'),
(8, 2, 1, 'No Match for Ronaldo'),
(9, 2, 0, 'Swift'),
(10, 2, 0, 'Flash');

-- --------------------------------------------------------

--
-- Table structure for table `sll_questions`
--

CREATE TABLE `sll_questions` (
  `question_number` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sll_questions`
--

INSERT INTO `sll_questions` (`question_number`, `text`) VALUES
(1, 'La Liga?'),
(2, 'Who is Messi?');

-- --------------------------------------------------------

--
-- Table structure for table `ucl_choices`
--

CREATE TABLE `ucl_choices` (
  `id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT '0',
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ucl_choices`
--

INSERT INTO `ucl_choices` (`id`, `question_number`, `is_correct`, `text`) VALUES
(1, 1, 0, 'ue'),
(2, 1, 1, 'fa'),
(3, 1, 0, 'cha'),
(4, 1, 0, 'mpions'),
(5, 1, 0, 'league'),
(21, 2, 0, 'upp'),
(22, 2, 1, 'ear'),
(23, 2, 0, 'far'),
(24, 2, 0, 'asso'),
(25, 2, 0, 'ciates');

-- --------------------------------------------------------

--
-- Table structure for table `ucl_questions`
--

CREATE TABLE `ucl_questions` (
  `question_number` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ucl_questions`
--

INSERT INTO `ucl_questions` (`question_number`, `text`) VALUES
(1, 'UCL?'),
(2, 'UEFA?');

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
('Courage', 'F', 'c@gmail.com', '0200874441', 'ed8ce15da9b7b5e2ee70634cc235e363'),
('Mark Zukarburg', 'M', 'ceo@facebook.com', '987654321', 'e10adc3949ba59abbe56e057f20f883e'),
('Elliot', 'M', 'elliot@gmail.com', '0540819824', '46fa97a5b70681d5ac78efb60f0c6867'),
('Faith', 'F', 'faith@gmail.com', '200851486', 'ecee7df9bbac50b9b428483bfea1dd7c'),
('Jemima', 'F', 'jbt@gmail.com', '0501424074', '962bb25aa7ea6a808aad3a1dea0f4099'),
('Richmond', 'M', 'rdsowah@st.ug.edu.gh', '540819824', 'aa4bbe632574e4a96cddc259086b20dc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acn_choices`
--
ALTER TABLE `acn_choices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `acn_questions`
--
ALTER TABLE `acn_questions`
  ADD PRIMARY KEY (`question_number`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `epl_choices`
--
ALTER TABLE `epl_choices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `epl_questions`
--
ALTER TABLE `epl_questions`
  ADD PRIMARY KEY (`question_number`);

--
-- Indexes for table `fwc_choices`
--
ALTER TABLE `fwc_choices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fwc_questions`
--
ALTER TABLE `fwc_questions`
  ADD PRIMARY KEY (`question_number`);

--
-- Indexes for table `sll_choices`
--
ALTER TABLE `sll_choices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sll_questions`
--
ALTER TABLE `sll_questions`
  ADD PRIMARY KEY (`question_number`);

--
-- Indexes for table `ucl_choices`
--
ALTER TABLE `ucl_choices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ucl_questions`
--
ALTER TABLE `ucl_questions`
  ADD PRIMARY KEY (`question_number`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acn_choices`
--
ALTER TABLE `acn_choices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `epl_choices`
--
ALTER TABLE `epl_choices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `fwc_choices`
--
ALTER TABLE `fwc_choices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sll_choices`
--
ALTER TABLE `sll_choices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ucl_choices`
--
ALTER TABLE `ucl_choices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
