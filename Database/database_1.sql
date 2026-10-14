-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2026 at 04:34 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test 8`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(50) DEFAULT NULL,
  `credit_hours` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `credit_hours`, `teacher_id`) VALUES
(1, 'Programming Fundamentals', 3, 1),
(2, 'Calculus I', 3, 3),
(3, 'Physics I', 3, 3),
(4, 'Communication Skills', 2, 3),
(5, 'Database Systems', 3, 5),
(6, 'Biology Basics', 3, 6),
(7, 'Organic Chemistry', 3, 7),
(8, 'Probability & Statistics', 3, 8),
(9, 'Microeconomics', 3, 9),
(10, 'Object Oriented Programming', 3, 10);

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `enrollment_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `semester` varchar(10) DEFAULT NULL,
  `grade` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`enrollment_id`, `student_id`, `course_id`, `semester`, `grade`) VALUES
(2, 1, 5, 'Fall-24', 'B'),
(3, 2, 5, 'Fall-24', 'A'),
(4, 3, 5, 'Fall-24', 'B'),
(5, 4, 5, 'Fall-24', 'A'),
(6, 5, 5, 'Fall-24', 'B'),
(7, 6, 6, 'Fall-24', 'A'),
(8, 7, 7, 'Fall-24', 'C'),
(9, 8, 8, 'Fall-24', 'A'),
(10, 9, 9, 'Fall-24', 'B'),
(11, 10, 10, 'Fall-24', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `name`, `email`, `gender`, `department`) VALUES
(1, 'Hassan Ali', 'hassan.ali@student.bgnu.edu.pk', 'Male', 'Computer Science'),
(2, 'Ayesha Noor', 'ALIAHSAN@GMAIL.COM', 'Female', 'IT'),
(3, 'Zain Abbas', 'zain.abbas@student.bgnu.edu.pk', 'Male', 'IT'),
(4, 'Iqra Shah', 'iqra.shah@student.bgnu.edu.pk', 'Female', 'English'),
(5, 'Hamza Tariq', 'hamza.tariq@student.bgnu.edu.pk', 'Male', 'IT'),
(6, 'Sana Javed', 'sana.javed@student.bgnu.edu.pk', 'Female', 'Biology'),
(7, 'Usman Rafiq', 'usman.rafiq@student.bgnu.edu.pk', 'Male', 'Chemistry'),
(8, 'Maria Asad', 'maria.asad@student.bgnu.edu.pk', 'Female', 'Statistics'),
(9, 'Fahad Khan', 'fahad.khan@student.bgnu.edu.pk', 'Male', 'Economics'),
(10, 'Laiba Saeed', 'laiba.saeed@student.bgnu.edu.pk', 'Female', 'Computer Science');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `teacher_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`teacher_id`, `name`, `email`, `phone`, `department`) VALUES
(1, 'Ali Raza', 'ALIAHMAD@GMAIL.COM', '03297643761', 'iNFORMATION TECHNOLOGY'),
(2, 'Sara Khan', 'sara.khan@bgnu.edu.pk', '03007654321', 'Mathematics'),
(3, 'Ahmed Nawaz', 'ahmed.nawaz@bgnu.edu.pk', '03211234567', 'Physics'),
(4, 'Hina Aslam', 'hina.aslam@bgnu.edu.pk', '03122334455', 'English'),
(5, 'Zeeshan Tariq', 'zeeshan.tariq@bgnu.edu.pk', '03334445566', 'IT'),
(6, 'Fatima Noor', 'fatima.noor@bgnu.edu.pk', '03220011001', 'Biology'),
(7, 'Umer Saleem', 'umer.saleem@bgnu.edu.pk', '03451239876', 'Chemistry'),
(8, 'Nimra Shah', 'nimra.shah@bgnu.edu.pk', '03551239877', 'Statistics'),
(9, 'Bilal Ahmad', 'bilal.ahmad@bgnu.edu.pk', '03661239878', 'Economics'),
(10, 'Kiran Malik', 'kiran.malik@bgnu.edu.pk', '03771239879', 'Computer Science');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`enrollment_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `enrollment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`teacher_id`);

--
-- Constraints for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  ADD CONSTRAINT `enrollments_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
