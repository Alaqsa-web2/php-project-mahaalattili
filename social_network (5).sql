-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 29 يونيو 2022 الساعة 17:30
-- إصدار الخادم: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social_network`
--

-- --------------------------------------------------------

--
-- بنية الجدول `comments`
--

CREATE TABLE `comments` (
  `com_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `comments`
--

INSERT INTO `comments` (`com_id`, `post_id`, `user_id`, `comment`, `comment_author`, `date`) VALUES
(0, 5, 1, 'اه\r\n', 'eman_abumousa_254037', '2022-05-09 10:34:53'),
(0, 7, 2, 'hu', 'mariam_mousa_933815', '2022-05-10 14:08:29'),
(0, 12, 4, 'hello', 'maha_rami_484365', '2022-05-10 18:32:59'),
(0, 18, 6, 'ali', 'gilan_ahmed_570189', '2022-05-26 15:59:38'),
(0, 16, 5, 'saja', 'gilan_ahmed_570189', '2022-05-26 16:00:15'),
(0, 16, 5, '', 'gilan_ahmed_570189', '2022-05-26 16:00:18'),
(0, 16, 5, 'ali', 'gilan_ahmed_570189', '2022-05-26 16:00:26'),
(0, 13, 6, 'im bahaa ', 'gilan_ahmed_570189', '2022-05-26 16:01:14'),
(0, 33, 7, 'acs', 'gilan_ahmed_570189', '2022-05-26 16:21:03'),
(0, 34, 7, 'xz', 'gilan_ahmed_570189', '2022-05-26 16:25:21'),
(0, 36, 8, 'look good', 'maha_alattili_795377', '2022-05-26 18:54:35'),
(0, 36, 8, 'wow', 'eman_solaiman_661785', '2022-05-26 19:18:23'),
(0, 40, 9, 'like', 'eman_solaiman_661785', '2022-05-27 08:12:37'),
(0, 51, 13, 'great', 'eman_solaiman_681541', '2022-05-27 08:53:08'),
(0, 53, 14, '!!!', 'eman_solaiman_681541', '2022-05-27 08:54:49'),
(0, 50, 13, 'miss you', 'eman_solaiman_681541', '2022-05-27 08:55:27'),
(0, 56, 14, 'welcome', 'laian_rami_328220', '2022-06-29 15:30:08');

-- --------------------------------------------------------

--
-- بنية الجدول `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_content` varchar(255) NOT NULL,
  `upload_image` varchar(255) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `post_content`, `upload_image`, `post_date`) VALUES
(50, 13, 'hello im maha!', '', '2022-05-27 08:51:52'),
(51, 13, 'im unstoppable', 'n13.jpg.52', '2022-05-27 08:52:17'),
(52, 14, 'im eman ', '', '2022-05-27 08:53:50'),
(54, 14, 'No', 'n6.jpg.41', '2022-05-27 08:54:16'),
(55, 14, 'wow', '', '2022-05-27 08:58:27'),
(56, 14, 'tn', 'n12.jpg.89', '2022-05-27 08:58:48'),
(57, 15, 'hello im laian from palestine', '', '2022-06-29 15:28:40');

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `f_name` text NOT NULL,
  `l_name` text NOT NULL,
  `user_name` text NOT NULL,
  `describe_user` varchar(255) NOT NULL,
  `Relationship` text NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_country` text NOT NULL,
  `user_gender` text NOT NULL,
  `user_birthday` text NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_cover` varchar(255) NOT NULL,
  `user_reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` text NOT NULL,
  `posts` text NOT NULL,
  `recovery_account` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`user_id`, `f_name`, `l_name`, `user_name`, `describe_user`, `Relationship`, `user_pass`, `user_email`, `user_country`, `user_gender`, `user_birthday`, `user_image`, `user_cover`, `user_reg_date`, `status`, `posts`, `recovery_account`) VALUES
(13, 'Maha', 'Alattili', 'maha_alattili_664092', 'Hello .This is my default status!', '...', '123456789', 'maharami2001@gmail.com', 'JORDAN', 'Female', '2001-02-05', 'p3.png', 'default_cover.jpg', '2022-05-27 08:49:56', 'verified', 'yes', 'Iwanttoputading intheuniverse.'),
(14, 'eman', 'solaiman', 'eman_solaiman_681541', 'Hello .This is my default status!', '...', '123456789', 'eman@gmail.com', 'Japan', 'Female', '2001-04-14', 'p1.jpg.91', 'bb.png.55', '2022-05-27 08:51:20', 'verified', 'yes', 'Iwanttoputading intheuniverse.'),
(15, 'laian', 'rami', 'laian_rami_328220', 'Hello .This is my default status!', '...', '123456789', 'laian@gmail.com', 'PALESTINE', 'Female', '2012-06-16', 'p3.png.13', 'default_cover.jpg', '2022-06-29 15:27:59', 'verified', 'yes', 'Iwanttoputading intheuniverse.');

-- --------------------------------------------------------

--
-- بنية الجدول `user_messages`
--

CREATE TABLE `user_messages` (
  `id` int(11) NOT NULL,
  `user_to` int(11) NOT NULL,
  `user_from` int(11) NOT NULL,
  `msg_body` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `msg_seen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `user_messages`
--

INSERT INTO `user_messages` (`id`, `user_to`, `user_from`, `msg_body`, `date`, `msg_seen`) VALUES
(19, 13, 14, 'how are you', '0000-00-00 00:00:00', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_messages`
--
ALTER TABLE `user_messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_messages`
--
ALTER TABLE `user_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
