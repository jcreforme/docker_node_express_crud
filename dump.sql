-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 13, 2020 at 12:41 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `employeedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

USE employeedb;

CREATE TABLE `employee` (
  `EmpID` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `EmpCode` varchar(45) NOT NULL,
  `Salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmpID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EmpID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmpID`, `Name`, `EmpCode`, `Salary`) VALUES
(1, 'carlos', 'EM001', 2000),
(2, 'Juan carlos', 'EM002', 5200),
(3, 'Chubaka', 'EM003',  4500),
(4, 'Pedro', 'EM004',  4700),
(5, 'Pablo', 'EM005',  8700),
(6, 'Amtonio', 'EM006', 3400),
(7, 'Lalo', 'EM007',  6600);  
