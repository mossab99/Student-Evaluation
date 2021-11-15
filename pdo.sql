-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 15, 2021 at 06:16 AM
-- Server version: 10.4.21-MariaDB-1:10.4.21+maria~focal-log
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pdo`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblClasses`
--

CREATE TABLE `tblClasses` (
  `class_id` int(11) NOT NULL,
  `class_description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblClasses`
--

INSERT INTO `tblClasses` (`class_id`, `class_description`) VALUES
(1, 'First Class'),
(2, 'Second Class'),
(3, 'Eighth Grade'),
(4, '');

-- --------------------------------------------------------

--
-- Table structure for table `tblEvaluationMaster`
--

CREATE TABLE `tblEvaluationMaster` (
  `ev_id` int(11) NOT NULL,
  `ev_semester` varchar(50) NOT NULL,
  `ev_month` date NOT NULL,
  `ev_start_date` date NOT NULL,
  `ev_description` varchar(200) NOT NULL,
  `ev_target_class` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblMerits`
--

CREATE TABLE `tblMerits` (
  `merit_id` int(11) NOT NULL,
  `merit_description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblMerits`
--

INSERT INTO `tblMerits` (`merit_id`, `merit_description`) VALUES
(1, 'Excellent');

-- --------------------------------------------------------

--
-- Table structure for table `tblStdSubEval`
--

CREATE TABLE `tblStdSubEval` (
  `sse_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `ev_id` int(11) NOT NULL,
  `subev_id` int(11) NOT NULL,
  `merit_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblStudents`
--

CREATE TABLE `tblStudents` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `student_class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblStudents`
--

INSERT INTO `tblStudents` (`student_id`, `student_name`, `student_class_id`) VALUES
(101, 'Sarah Al Zoubi', 1),
(122, 'Jimmy the lord', 3),
(199, 'Sameera ', 2),
(200, 'Mortada', 2),
(989, 'Malek ', 1),
(500500, '500500', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblSubjectEvalItems`
--

CREATE TABLE `tblSubjectEvalItems` (
  `subev_id` int(11) NOT NULL,
  `subev_subject_id` int(11) NOT NULL,
  `subev_criterion_description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblSubjects`
--

CREATE TABLE `tblSubjects` (
  `subject_id` int(11) NOT NULL,
  `subject_description` varchar(50) NOT NULL,
  `subject_class_id` int(11) NOT NULL,
  `subject_teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblSubjects`
--

INSERT INTO `tblSubjects` (`subject_id`, `subject_description`, `subject_class_id`, `subject_teacher_id`) VALUES
(2, 'Math', 2, 33);

-- --------------------------------------------------------

--
-- Table structure for table `tblTeachers`
--

CREATE TABLE `tblTeachers` (
  `teacher_id` int(11) NOT NULL,
  `teacher_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblTeachers`
--

INSERT INTO `tblTeachers` (`teacher_id`, `teacher_name`) VALUES
(33, 'Ali Masoud'),
(35, 'Ayman Reda');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblClasses`
--
ALTER TABLE `tblClasses`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `tblEvaluationMaster`
--
ALTER TABLE `tblEvaluationMaster`
  ADD PRIMARY KEY (`ev_id`);

--
-- Indexes for table `tblMerits`
--
ALTER TABLE `tblMerits`
  ADD PRIMARY KEY (`merit_id`);

--
-- Indexes for table `tblStdSubEval`
--
ALTER TABLE `tblStdSubEval`
  ADD PRIMARY KEY (`sse_id`);

--
-- Indexes for table `tblStudents`
--
ALTER TABLE `tblStudents`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `student_class_id` (`student_class_id`);

--
-- Indexes for table `tblSubjectEvalItems`
--
ALTER TABLE `tblSubjectEvalItems`
  ADD PRIMARY KEY (`subev_id`);

--
-- Indexes for table `tblSubjects`
--
ALTER TABLE `tblSubjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `tblTeachers`
--
ALTER TABLE `tblTeachers`
  ADD PRIMARY KEY (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblClasses`
--
ALTER TABLE `tblClasses`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblEvaluationMaster`
--
ALTER TABLE `tblEvaluationMaster`
  MODIFY `ev_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblMerits`
--
ALTER TABLE `tblMerits`
  MODIFY `merit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblStdSubEval`
--
ALTER TABLE `tblStdSubEval`
  MODIFY `sse_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblSubjectEvalItems`
--
ALTER TABLE `tblSubjectEvalItems`
  MODIFY `subev_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblSubjects`
--
ALTER TABLE `tblSubjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblStudents`
--
ALTER TABLE `tblStudents`
  ADD CONSTRAINT `tblStudents_ibfk_1` FOREIGN KEY (`student_class_id`) REFERENCES `tblClasses` (`class_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
