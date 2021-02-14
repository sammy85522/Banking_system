-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2021 at 04:09 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banking`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(5) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(9) NOT NULL,
  `datetime` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(0, 'Nivya', 'Rahul', 200, '2021-02-08'),
(0, 'John', 'james', 500, '2021-02-10'),
(0, 'Samarth ', 'Sanket', 200, '2021-02-10'),
(0, 'Samarth ', 'John', 400, '2021-02-13'),
(0, 'Nivya', 'Ayan', 600, '2021-02-13'),
(0, 'james', 'Ayan', 200, '2021-02-14'),
(0, 'pallavi', 'Samarth ', 300, '2021-02-14'),
(0, 'Samarth ', 'pallavi', 200, '2021-02-14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Samarth ', 'samarthbirajdar2408@gmail.com', 3700),
(2, 'Nivya', 'nivya123@gmail.com', 8200),
(3, 'Divya', 'divya56@gmail.com', 4000),
(4, 'Neeraj', 'neeraj23a@gmail.com', 5000),
(5, 'Rahul', 'rahul9@gmail.com', 2200),
(6, 'Sanket', 'sanket5@gmail.com', 6200),
(7, 'Ayan', 'ayan67@gmail.com', 7800),
(8, 'John', 'john@gmail.com', 4900),
(9, 'james', 'james00y@gmail.com', 1300),
(10, 'pallavi', 'pallvi89@gmail.com', 9700);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
