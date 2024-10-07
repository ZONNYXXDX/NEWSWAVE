-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 29, 2024 at 04:12 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newswave`
--

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

DROP TABLE IF EXISTS `agents`;
CREATE TABLE IF NOT EXISTS `agents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `agent_id` varchar(50) NOT NULL,
  `agent_name` varchar(100) NOT NULL,
  `agent_email` varchar(100) NOT NULL,
  `district` varchar(50) NOT NULL,
  `subdistrict` varchar(50) NOT NULL,
  `village` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`id`, `agent_id`, `agent_name`, `agent_email`, `district`, `subdistrict`, `village`) VALUES
(20, 'A-11', 'suvin vin', 'suvin1vinod@gmail.com', 'Palakkad', 'Chittur', 'Nalleppilly'),
(19, 'A-35', 'sonu', 'jithubaiju124@gmail.com', 'Kollam', 'Karunagappally', 'Chavara'),
(13, 'A-14', 'king', 'king@gmail.com', 'Thiruvananthapuram', 'Attingal', 'Attingal'),
(14, 'A-2', 'jithu suresh', 'sureshjithu9400@gmail.com', 'Pathanamthitta', 'Thiruvalla', 'Kaviyoor'),
(21, 'A-111', 'jithu', 'wwfw@gmail.com', 'Kannur', 'Thalassery', 'Panniyannur');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_status`
--

DROP TABLE IF EXISTS `delivery_status`;
CREATE TABLE IF NOT EXISTS `delivery_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `date` date NOT NULL,
  `undelivered_count` int DEFAULT '0',
  `delivered_count` int DEFAULT '0',
  `last_action_time` datetime DEFAULT NULL,
  `undelivered_clicked` tinyint(1) DEFAULT '0',
  `delivered_clicked` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_status` (`user_id`,`date`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `delivery_status`
--

INSERT INTO `delivery_status` (`id`, `user_id`, `date`, `undelivered_count`, `delivered_count`, `last_action_time`, `undelivered_clicked`, `delivered_clicked`) VALUES
(13, 42, '2024-09-18', 0, 1, '2024-09-18 11:10:28', 1, 1),
(14, 41, '2024-09-29', 0, 1, '2024-09-29 12:36:17', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `madmin`
--

DROP TABLE IF EXISTS `madmin`;
CREATE TABLE IF NOT EXISTS `madmin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `madmin`
--

INSERT INTO `madmin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `agent_id` int NOT NULL,
  `message` text NOT NULL,
  `date` date NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  `user_phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `agent_id` (`agent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `agent_id`, `message`, `date`, `user_name`, `user_address`, `user_phone`) VALUES
(30, 15, 'User suvin vinod (mylom, 09744366058) has marked 1 delivered items on 2024-08-11.', '2024-08-11', 'suvin vinod', 'mylom', '09744366058'),
(23, 17, 'New user Arun_555 has signed up in your area.', '0000-00-00', NULL, NULL, NULL),
(24, 17, 'New user Arun_555 has signed up in your area.', '0000-00-00', NULL, NULL, NULL),
(25, 17, 'New user Arun_255 has signed up in your area.', '0000-00-00', NULL, NULL, NULL),
(28, 15, 'New user suvin has signed up in your area.', '0000-00-00', NULL, NULL, NULL),
(29, 15, 'User suvin vinod (mylom, 09744366058) has marked 1 undelivered items on 2024-08-11.', '2024-08-11', 'suvin vinod', 'mylom', '09744366058'),
(27, 17, 'User arun das (malappuram, 8075776511) has marked 1 delivered items on 2024-08-11.', '2024-08-11', 'arun das', 'malappuram', '8075776511'),
(31, 18, 'New user jithu_345 has signed up in your area.', '0000-00-00', NULL, NULL, NULL),
(34, 19, 'New user jithu_777 has signed up in your area.', '0000-00-00', NULL, NULL, NULL),
(35, 19, 'User king (mylom, 09744366058) has marked 1 undelivered items on 2024-08-11.', '2024-08-11', 'king', 'mylom', '09744366058'),
(36, 13, 'User jithu (mylm, 807577) has marked 1 undelivered items on 2024-08-12.', '2024-08-12', 'jithu', 'mylm', '807577'),
(45, 19, 'User king (mylom, 09744366058) has marked 1 undelivered items on 2024-09-29.', '2024-09-29', 'king', 'mylom', '09744366058'),
(38, 20, 'New user Arun_123 has signed up in your area.', '0000-00-00', NULL, NULL, NULL),
(39, 20, 'User arun das (mylom, 7558926439) has marked 1 undelivered items on 2024-08-12.', '2024-08-12', 'arun das', 'mylom', '7558926439'),
(40, 20, 'User arun das (mylom, 7558926439) has marked 1 delivered items on 2024-08-12.', '2024-08-12', 'arun das', 'mylom', '7558926439'),
(44, 0, 'hello', '2024-09-29', '41', NULL, NULL),
(42, 20, 'User arun das (mylom, 7558926439) has marked 1 undelivered items on 2024-09-18.', '2024-09-18', 'arun das', 'mylom', '7558926439'),
(43, 20, 'User arun das (mylom, 7558926439) has marked 1 delivered items on 2024-09-18.', '2024-09-18', 'arun das', 'mylom', '7558926439'),
(46, 19, 'User king (mylom, 09744366058) has marked 1 delivered items on 2024-09-29.', '2024-09-29', 'king', 'mylom', '09744366058');

-- --------------------------------------------------------

--
-- Table structure for table `notificationtouser`
--

DROP TABLE IF EXISTS `notificationtouser`;
CREATE TABLE IF NOT EXISTS `notificationtouser` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `message` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `notificationtouser`
--

INSERT INTO `notificationtouser` (`id`, `user_id`, `message`, `created_at`) VALUES
(3, 30, 'wlecome to neswave you bang bro !!!', '2024-08-08 08:26:23'),
(4, 30, 'wlecome to neswave you bang bro !!!', '2024-08-08 08:26:35'),
(5, 31, 'wlecome to neswave you bang bro !!!', '2024-08-08 08:27:09'),
(6, 30, 'hello', '2024-08-12 06:54:07'),
(7, 30, 'hello', '2024-08-12 07:00:25'),
(8, 30, 'hello', '2024-08-12 07:01:00'),
(9, 42, 'hello', '2024-08-12 08:21:41');

-- --------------------------------------------------------

--
-- Table structure for table `otp_table`
--

DROP TABLE IF EXISTS `otp_table`;
CREATE TABLE IF NOT EXISTS `otp_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `otp` varchar(6) NOT NULL,
  `expiry` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `otp_table`
--

INSERT INTO `otp_table` (`id`, `email`, `otp`, `expiry`, `created_at`) VALUES
(1, 'jithubaiju05@gmail.com', '790336', 1720180908, '2024-07-05 11:56:48'),
(2, 'jithubaiju05@gmail.com', '423056', 1720180909, '2024-07-05 11:56:49'),
(3, 'jithubaiju05@gmail.com', '211100', 1720180959, '2024-07-05 11:57:39'),
(4, 'jithubaiju05@gmail.com', '765847', 1726497773, '2024-09-16 14:37:53'),
(5, 'jithubaiju05@gmail.com', '738883', 1726497776, '2024-09-16 14:37:56'),
(6, 'jithubaiju05@gmail.com', '666274', 1726498215, '2024-09-16 14:45:15'),
(7, 'jithubaiju05@gmail.com', '735137', 1726498216, '2024-09-16 14:45:16'),
(8, 'jithubaiju05@gmail.com', '987180', 1726498218, '2024-09-16 14:45:18'),
(9, 'jithubaiju05@gmail.com', '749128', 1726498218, '2024-09-16 14:45:18'),
(10, 'jithubaiju05@gmail.com', '974841', 1726498218, '2024-09-16 14:45:18'),
(11, 'jithubaiju05@gmail.com', '797254', 1726498219, '2024-09-16 14:45:19'),
(12, 'jithubaiju05@gmail.com', '610300', 1726498220, '2024-09-16 14:45:20'),
(13, 'jithubaiju05@gmail.com', '505527', 1726498221, '2024-09-16 14:45:21'),
(14, 'jithubaiju05@gmail.com', '641592', 1726498222, '2024-09-16 14:45:22');

-- --------------------------------------------------------

--
-- Table structure for table `reset_tracker`
--

DROP TABLE IF EXISTS `reset_tracker`;
CREATE TABLE IF NOT EXISTS `reset_tracker` (
  `id` int NOT NULL AUTO_INCREMENT,
  `last_reset` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reset_tracker`
--

INSERT INTO `reset_tracker` (`id`, `last_reset`) VALUES
(1, '2024-08-10 05:01:40');

-- --------------------------------------------------------

--
-- Table structure for table `undelivered_days`
--

DROP TABLE IF EXISTS `undelivered_days`;
CREATE TABLE IF NOT EXISTS `undelivered_days` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `undelivered_day_count` int DEFAULT '0',
  `last_reset_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `newspaper` varchar(100) NOT NULL,
  `district` varchar(50) NOT NULL,
  `subdistrict` varchar(50) NOT NULL,
  `village` varchar(100) NOT NULL,
  `skills` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `address`, `phone`, `username`, `password`, `newspaper`, `district`, `subdistrict`, `village`, `skills`, `created_at`, `updated_at`) VALUES
(30, 'jithu', 'jithubaiju05@gmail.com', 'mylom', '09744366058', 'sonu biju', '$2y$10$ON2UBX5sorjXA8AGxYFuJONDdkD8CH9CJHZy3U8TSW.tkuRenf12G', 'Malayala Manorama', 'Kollam', 'Karunagappally', 'Clappana', 'Balarama,Vanitha', '2024-08-06 08:23:24', '2024-08-06 08:23:24'),
(31, 'jithu', 'jithubaiju05@gmail.com', 'mylm', '807577', 'heloo_12', '$2y$10$EqusiPAVeBNObSOD2gwAHuIIYzCCNNKwfK9VOsdWg4.37Kfjv97vS', 'Mathrubhumi', 'Kannur', 'Thalassery', 'Chokli', 'Vanitha,Balarama', '2024-08-07 08:55:46', '2024-09-16 14:48:19'),
(32, 'jithu', 'jithubaiju05@gmail.com', 'mylm', '807577', 'heloo_12', '$2y$10$r5Db4lwYalUlLm05ebNVxuXqGahsgdX02nJEuJHd6NYOOdWNoRqbK', 'Mathrubhumi', 'Kannur', 'Thalassery', 'Chokli', 'Vanitha,Balarama', '2024-08-09 00:45:22', '2024-09-16 14:48:19'),
(33, 'jithu', 'jithubaiju05@gmail.com', 'mylm', '807577', 'heloo_12', '$2y$10$M9E7tMWAe17uh/T52Fm0SOC9.IS799PMKkWTAq8HzFgpeSy16TDji', 'Mathrubhumi', 'Kannur', 'Thalassery', 'Chokli', 'Vanitha,Balarama', '2024-08-09 00:48:33', '2024-09-16 14:48:19'),
(34, 'jithu', 'jithubaiju05@gmail.com', 'mylm', '807577', 'heloo_12', '$2y$10$qHKv1sxptSSbU7Jy94KkEO5a3G7C/9tMGEHPgvCIXJ3TZ3OKvzYUa', 'Mathrubhumi', 'Kannur', 'Thalassery', 'Chokli', 'Vanitha,Balarama', '2024-08-09 00:50:24', '2024-09-16 14:48:19'),
(42, 'arun das', 'arundas6439@gmail.com', 'mylom', '7558926439', 'Arun_123', '$2y$10$NE0YhV8lyrCtOHYfXRwHSeeJGJ6cVQmylRoekm5qvcvzsK6VvqZwi', 'Malayala Manorama', 'Pathanamthitta', 'Adoor', 'Adoor', 'Balarama,Vanitha', '2024-08-12 08:16:53', '2024-08-12 08:18:15'),
(35, 'arun das', 'nijaking766@gmail.com', 'malappuram', '8075776511', 'Arun_555', '$2y$10$dtvMczFfvErePauxkVEBQOWBUdBV93/FMTb4LYEdZe8eJ5eGUva36', 'The Hindu', 'Malappuram', 'Perinthalmanna', 'Kudallur', 'Balarama,Vanitha', '2024-08-11 05:28:47', '2024-08-11 05:28:47'),
(36, 'arun das', 'nijaking766@gmail.com', 'malappuram', '8075776511', 'Arun_555', '$2y$10$LIXhdgPd7aaMQ5nLjj.71u7RAqNcvzZc0aVMnn/fLMNlQ3rNgky.a', 'The Hindu', 'Malappuram', 'Perinthalmanna', 'Kudallur', 'Balarama,Vanitha', '2024-08-11 05:29:50', '2024-08-11 05:29:50'),
(37, 'arun das', 'nijaking766@gmail.com', 'malappuram', '8075776511', 'Arun_555', '$2y$10$diPmk3PFr8r5zrRyM62CS.ki1aoQpdywdmKPt4.6NrLCFIXrtf786', 'The Hindu', 'Malappuram', 'Perinthalmanna', 'Kudallur', 'Balarama,Vanitha', '2024-08-11 05:30:57', '2024-08-11 05:30:57'),
(38, 'arun das', 'jithubaiju124@gmail.com', 'malappuram', '8075776511', 'Arun_255', '$2y$10$d38NpxM7fv8mbZ4QTkq5z.YW/VnQss5xk/FlLHxZrzMDJMUon.uC2', 'Malayala Manorama', 'Malappuram', 'Perinthalmanna', 'Kudallur', 'Vanitha,Grihalakshmi', '2024-08-11 06:27:14', '2024-08-11 06:27:14'),
(39, 'suvin vinod', 'jithubaiju05@gmail.com', 'mylom', '09744366058', 'suvin', '$2y$10$59l/2GPFH0IgxCzrtC8km.NJWqJ8IMF42eEd6.4FS.MKUeDAb8OGq', 'Mathrubhumi', 'Kozhikode', 'Koyilandy', 'Payyoli', 'Vanitha', '2024-08-11 06:39:06', '2024-08-11 06:39:06'),
(40, 'jithu', 'jithubaiju05@gmail.com', 'mylom', '09744366058', 'jithu_345', '$2y$10$j/SgG8waYYAwrj/rDVT01O1XRJ1ixbClGTTT84CPEFd1aSVUNpk3e', 'Madhyamam', 'Kollam', 'Kottarakkara', 'Mylom', 'Vanitha,Business Today', '2024-08-11 12:27:15', '2024-08-11 12:27:15'),
(41, 'king', 'jithubaiju05@gmail.com', 'mylom', '09744366058', 'jithu_777', '$2y$10$PnyI/z0UqTWc9dHb.4q.bOgywkE.pfFzd4iVlcwNH6Cu6kXtNws8m', 'Deshabhimani', 'Kollam', 'Karunagappally', 'Chavara', 'Balarama', '2024-08-11 12:38:43', '2024-08-11 12:38:43'),
(43, 'janaki', 'janaki@gmail.com', 'kalyapuram', '1234567890', 'janaki123', '$2y$10$MXimpUz46vHhrijuZcKTm.9/ZMO02E0oCfWWIKALqplh3A6H7k836', 'Malayala Manorama', 'Kollam', 'Kottarakkara', 'Mylom', 'Vanitha,Balarama', '2024-09-18 05:23:33', '2024-09-18 05:23:33');

-- --------------------------------------------------------

--
-- Table structure for table `user_messages`
--

DROP TABLE IF EXISTS `user_messages`;
CREATE TABLE IF NOT EXISTS `user_messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `message` text NOT NULL,
  `sent_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_messages`
--

INSERT INTO `user_messages` (`id`, `user_id`, `message`, `sent_at`) VALUES
(1, 31, 'sorry tommorow no house', '2024-08-08 11:52:48');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
