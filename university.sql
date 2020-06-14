-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 29, 2020 at 01:30 PM
-- Server version: 10.3.13-MariaDB
-- PHP Version: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `university`
--

-- --------------------------------------------------------

--
-- Table structure for table `dormitory`
--

CREATE TABLE `dormitory` (
  `id_dormitory` int(11) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `commandant` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id_faculty` int(11) NOT NULL,
  `faculty` varchar(255) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) NOT NULL,
  `dekan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id_faculty`, `faculty`, `fullName`, `phoneNumber`, `dekan`) VALUES
(1, 'ЮФ', 'Юридичний Факультет', '38-099-04-354', 'Курштейн В.О.'),
(2, 'ФІСТ', 'Факультет Інформаційних Систем та Технологій', '38-099-04-87-948', 'Кургузенкова Л.А.');

-- --------------------------------------------------------

--
-- Table structure for table `groupe`
--

CREATE TABLE `groupe` (
  `numGroupe` varchar(255) DEFAULT NULL,
  `id_faculty` varchar(255) DEFAULT NULL,
  `specialization` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groupe`
--

INSERT INTO `groupe` (`numGroupe`, `id_faculty`, `specialization`) VALUES
('101', '1', 'Юридичне Право'),
('232', '2', 'Інженерія програмного забезпечення');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `secondName` varchar(255) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dateOfBirth` date NOT NULL,
  `parentsPhoneNumber` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) NOT NULL,
  `faculty` varchar(255) NOT NULL,
  `dateOfReg` date DEFAULT NULL,
  `dateOfEviction` date DEFAULT NULL,
  `groupe` varchar(255) NOT NULL,
  `dormitory` varchar(255) NOT NULL DEFAULT '1',
  `room` varchar(255) NOT NULL,
  `photoRoot` varchar(255) NOT NULL DEFAULT 'man01.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `firstName`, `lastName`, `secondName`, `gender`, `dateOfBirth`, `parentsPhoneNumber`, `phoneNumber`, `faculty`, `dateOfReg`, `dateOfEviction`, `groupe`, `dormitory`, `room`, `photoRoot`) VALUES
(6, 'Олег', 'Воронов', 'Миколайович', 'Чоловіча', '2001-08-26', '38(098) 765 92 84', '38(098) 229 76 65', 'Інший ВНЗ', NULL, NULL, '0', '1', '225', 'man01.png'),
(7, 'Наталія', 'Кузінова', 'Юрівна', 'Жіноча', '2000-10-12', '38(068) 648 92 02', '38(068) 843 72 85', 'Інший ВНЗ', NULL, NULL, '0', '1', '202', 'man01.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `idu` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `adminLvl` int(11) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`idu`, `email`, `name`, `surname`, `adminLvl`, `password`) VALUES
(1, 'makedonsky3011@gmail.com', 'Олександр', 'Ятлук', 5, '1234'),
(2, 'jiroalex3@gmail.com', 'Іван', 'Іванов', 0, '1111'),
(5, 'sotss69@gmail.com', 'Аліна', 'Кулик', 1, '9256');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dormitory`
--
ALTER TABLE `dormitory`
  ADD PRIMARY KEY (`id_dormitory`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id_faculty`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dormitory`
--
ALTER TABLE `dormitory`
  MODIFY `id_dormitory` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id_faculty` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `idu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
