-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2021 at 03:53 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mcqtest`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `password`, `status`) VALUES
(1, 'admin', 'MTIzNA==', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_qus_ans`
--

CREATE TABLE `tbl_qus_ans` (
  `id` int(11) NOT NULL,
  `reg_id` int(11) NOT NULL,
  `score_id` int(11) NOT NULL,
  `qustion` longtext NOT NULL,
  `qus_category` varchar(500) NOT NULL,
  `qus_type` varchar(500) NOT NULL,
  `qus_level` varchar(255) NOT NULL,
  `qus_corr_ans` varchar(500) NOT NULL COMMENT 'correct answer',
  `user_ans` varchar(500) DEFAULT NULL COMMENT 'answer by user',
  `publish_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_qus_ans`
--

INSERT INTO `tbl_qus_ans` (`id`, `reg_id`, `score_id`, `qustion`, `qus_category`, `qus_type`, `qus_level`, `qus_corr_ans`, `user_ans`, `publish_date`) VALUES
(1, 1, 1, 'In a standard game of Monopoly, what colour are the two cheapest properties?', 'Entertainment: Board Games', 'multiple', 'easy', 'Brown', 'Brown', '2021-03-23 10:24:35'),
(2, 1, 1, 'Which king was killed at the Battle of Bosworth Field in 1485? ', 'History', 'multiple', 'medium', 'Richard III', 'Richard III', '2021-03-23 10:24:35'),
(3, 1, 1, 'What country is the second largest in the world by area?', 'Geography', 'multiple', 'easy', 'Canada', 'Canada', '2021-03-23 10:24:35'),
(4, 1, 1, 'What is the most expensive weapon in Counter-Strike: Global Offensive?', 'Entertainment: Video Games', 'multiple', 'easy', 'Scar-20/G3SG1', 'M4A1', '2021-03-23 10:24:35'),
(5, 1, 1, 'The derisive acronym \"PIIGS\" refers to which of the following European countries and their economic statuses?', 'Geography', 'multiple', 'easy', 'Portugal, Ireland, Italy, Greece, Spain', 'Portugal, Iceland, Ireland, Greece, Serbia', '2021-03-23 10:24:35'),
(6, 1, 1, 'The 2014 movie \"The Raid 2: Berandal\" was mainly filmed in which Asian country?', 'Politics', 'multiple', 'medium', 'Indonesia', 'Brunei', '2021-03-23 10:24:35'),
(7, 1, 1, 'Who is attributed credit for recording the epic poem The Odyssey?', 'History', 'multiple', 'medium', 'Homer', NULL, '2021-03-23 10:24:35'),
(8, 1, 1, 'Whose greyscale face is on the kappa emoticon on Twitch?', 'General Knowledge', 'multiple', 'medium', 'Josh DeSeno', 'Justin DeSeno', '2021-03-23 10:24:35'),
(9, 1, 1, 'Which of these songs is NOT in The Beatles\' album \"Sgt. Pepper\'s Lonely Hearts Club Band\"?', 'Entertainment: Music', 'multiple', 'medium', 'Strawberry Fields Forever', 'Getting Better', '2021-03-23 10:24:35'),
(10, 1, 1, 'What does the \'S\' in the RSA encryption algorithm stand for?', 'Science: Computers', 'multiple', 'medium', 'Shamir', NULL, '2021-03-23 10:24:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration`
--

CREATE TABLE `tbl_registration` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(500) NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_registration`
--

INSERT INTO `tbl_registration` (`id`, `username`, `phone`, `password`, `timestamp`) VALUES
(1, 'guest', '1234567890', 'MTIz', '2021-03-22 10:41:54');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_score`
--

CREATE TABLE `tbl_user_score` (
  `id` int(11) NOT NULL,
  `reg_id` int(11) NOT NULL,
  `reg_name` varchar(200) NOT NULL,
  `total_score` varchar(100) NOT NULL,
  `publish_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user_score`
--

INSERT INTO `tbl_user_score` (`id`, `reg_id`, `reg_name`, `total_score`, `publish_date`) VALUES
(1, 1, 'guest', '3', '2021-03-23 10:24:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_qus_ans`
--
ALTER TABLE `tbl_qus_ans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_score`
--
ALTER TABLE `tbl_user_score`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_qus_ans`
--
ALTER TABLE `tbl_qus_ans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user_score`
--
ALTER TABLE `tbl_user_score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
