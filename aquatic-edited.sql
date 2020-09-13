-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2020 at 12:34 PM
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
-- Database: `aquatic`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(5) UNSIGNED ZEROFILL NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(7) UNSIGNED ZEROFILL NOT NULL,
  `ques` text NOT NULL,
  `choiceA` text NOT NULL,
  `choiceB` text NOT NULL,
  `choiceC` text NOT NULL,
  `choiceD` text NOT NULL,
  `answer` text NOT NULL,
  `quizId` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `ques`, `choiceA`, `choiceB`, `choiceC`, `choiceD`, `answer`, `quizId`) VALUES
(0000034, 'Which animal is an aquatic animal?', 'Dog', 'Cat', 'Snail', 'Dolphin', 'D', 25),
(0000035, 'Dolphins sleep with only one side of their brain at a time.', 'True', 'False', '', '', 'A', 25),
(0000036, 'Which one is a habitat of aquatic animals?', 'Jungle', 'Cave ', 'Sea', 'Desert', 'C', 25),
(0000037, 'Test 1', 'True', 'False', '', '', 'A', 34),
(0000038, 'Testing 222222222', 'something here', 'sdasdasd', 'forest', 'river', 'B', 34);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(5) UNSIGNED ZEROFILL NOT NULL,
  `name` varchar(500) NOT NULL,
  `date` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `numOfQues` int(2) NOT NULL,
  `timeLimit` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `name`, `date`, `time`, `numOfQues`, `timeLimit`) VALUES
(00005, 'Animal Parts ', '17/01/2020', '03:20am', 4, 4),
(00019, 'Animal Parts 2', '04/02/2020', '06:52pm', 2, 10),
(00025, 'New Quiz', '19/02/2020', '10:58pm', 3, 10),
(00034, 'General knowledge', '20/03/2020', '11:07pm', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `quizrecords`
--

CREATE TABLE `quizrecords` (
  `id` int(7) UNSIGNED ZEROFILL NOT NULL,
  `username` varchar(100) NOT NULL,
  `mark` int(2) NOT NULL,
  `time` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `quizId` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quizrecords`
--

INSERT INTO `quizrecords` (`id`, `username`, `mark`, `time`, `date`, `quizId`) VALUES
(0000003, 'abu', 5, '09:00AM', '22/02/2020', 5),
(0000006, 'Vanessa', 2, '08:53AM', '22/03/2020', 5),
(0000018, 'John Doe', 3, '08:16 PM', '06/03/2020', 25),
(0000019, 'Ali', 1, '08:18 PM', '06/03/2020', 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizrecords`
--
ALTER TABLE `quizrecords`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(7) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `quizrecords`
--
ALTER TABLE `quizrecords`
  MODIFY `id` int(7) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
