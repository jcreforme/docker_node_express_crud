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
CREATE DATABASE employeedb;

USE employeedb;

CREATE TABLE `employee` (
  `EmpID` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `EmpCode` varchar(45) NOT NULL,
  `Salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmpID`, `Name`, `EmpCode`, `Salary`) VALUES
(1, 'juan carlos', 'EM002', 52000),
(3, 'juan carlo', 'EM001', 52000);

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
