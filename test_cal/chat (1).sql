-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2018 at 01:07 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(9) NOT NULL,
  `user_id` int(11) NOT NULL,
  `opponenet_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `usrname` varchar(255) NOT NULL,
  `color` varchar(6) NOT NULL,
  `chattext` text NOT NULL,
  `chattime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `user_id`, `opponenet_id`, `room_id`, `usrname`, `color`, `chattext`, `chattime`) VALUES
(1, 0, 0, 0, 'phani', '00FFFF', 'hai', '2018-08-01 12:35:44'),
(2, 0, 0, 0, 'phani', '00FFFF', 'how are you', '2018-08-01 12:36:04'),
(3, 0, 0, 0, 'phani', '00FFFF', 'hello', '2018-08-01 12:37:08'),
(4, 0, 0, 0, 'kumar', '000080', 'tell me', '2018-08-01 12:38:12'),
(5, 0, 0, 0, 'kumar', '000080', 'what u need..??', '2018-08-01 12:44:28'),
(6, 0, 0, 0, 'phani', '00FFFF', 'i dont need anything', '2018-08-01 12:44:45'),
(7, 0, 0, 0, 'kumar', '000080', 'thankyou then', '2018-08-01 12:45:04'),
(8, 0, 0, 0, '', 'FFA500', 'hi', '2018-08-02 05:41:01'),
(9, 0, 0, 0, 'Phani', '00FF00', 'hhhiii', '2018-08-02 08:03:23'),
(10, 0, 0, 0, 'Phani', '00FF00', 'hello', '2018-08-02 09:52:32'),
(11, 0, 0, 0, 'Phani', '00FF00', 'bhdfhdf', '2018-08-02 10:08:31'),
(12, 1, 1, 0, 'Phani', '00FF00', 'yujtru', '2018-08-02 11:37:07'),
(13, 1, 1, 0, 'Phani', '00FF00', 'dsgdsgdsg', '2018-08-02 11:37:25'),
(14, 1, 1, 42276, 'Phani', '00FF00', 'jjjhjhjhj', '2018-08-02 11:59:18'),
(15, 1, 1, 19500, 'phani', 'A52A2A', 'fdsfsdf', '2018-08-03 07:18:58'),
(16, 1, 1, 19500, 'Kumar', '00FFFF', 'asdsadasd', '2018-08-03 07:19:28'),
(17, 1, 1, 19500, 'Kumar', '00FFFF', 'asdasd', '2018-08-03 07:19:33'),
(18, 1, 1, 19500, 'phani', 'A52A2A', 'xzxcxzc', '2018-08-03 07:19:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
