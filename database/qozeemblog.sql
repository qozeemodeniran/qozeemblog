-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2021 at 12:27 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qozeemblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `author_username` varchar(256) NOT NULL,
  `author_role` varchar(256) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `keywords` text DEFAULT NULL,
  `published` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `author_username`, `author_role`, `title`, `slug`, `views`, `image`, `body`, `keywords`, `published`, `created_at`, `updated_at`) VALUES
(190, 104, 'qodeniran', 'Author', 'Author\'s Post', 'author-s-post', 0, '', '&lt;p&gt;This is a post from the author.&lt;br /&gt;\r\nIt was ceated for the purpose of testing for keywords.&lt;/p&gt;\r\n', 'testing, keywords, post', 1, '2021-04-28 10:26:39', '2021-04-28 10:25:09'),
(191, 103, 'qozeemodeniran', 'Admin', 'Admin\'s Post', 'admin-s-post', 0, '', '&lt;p&gt;This is a post from the admin.&lt;br /&gt;\r\nI am using it to test for keywords functionalities.&amp;nbsp;&lt;/p&gt;\r\n', 'test, admin, post, keywords', 1, '2021-04-28 10:26:41', '2021-04-28 10:26:25');

-- --------------------------------------------------------

--
-- Table structure for table `post_topic`
--

CREATE TABLE `post_topic` (
  `id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_topic`
--

INSERT INTO `post_topic` (`id`, `post_id`, `topic_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(NULL, 11, 2),
(NULL, 21, 1),
(NULL, 31, 1),
(NULL, 41, 4),
(NULL, 51, 1),
(NULL, 61, 3),
(NULL, 71, 4),
(NULL, 0, 4),
(NULL, 81, 4),
(NULL, 91, 4),
(NULL, 101, 3),
(NULL, 111, 6),
(NULL, 121, 1),
(NULL, 131, 4),
(NULL, 141, 4),
(NULL, 151, 4),
(NULL, 161, 1),
(NULL, 171, 5),
(NULL, 172, 5),
(NULL, 173, 5),
(NULL, 174, 5),
(NULL, 175, 5),
(NULL, 176, 5),
(NULL, 177, 5),
(NULL, 178, 5),
(NULL, 179, 5),
(NULL, 180, 5),
(NULL, 181, 5),
(NULL, 182, 5),
(NULL, 183, 5),
(NULL, 184, 5),
(NULL, 185, 5),
(NULL, 186, 5),
(NULL, 187, 5),
(NULL, 188, 5),
(NULL, 189, 5),
(NULL, 190, 1),
(NULL, 191, 4);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `name`, `slug`) VALUES
(1, 'Inspiration', 'inspiration'),
(2, 'Motivation', 'motivation'),
(3, 'Business', 'business'),
(4, 'Tech', 'tech'),
(5, 'News', 'news'),
(6, 'Sports', 'sports');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('Author','Admin') DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `role`, `password`, `created_at`, `updated_at`) VALUES
(103, 'qozeemodeniran', 'qozeemodeniran@gmail.com', 'Admin', '2c599bc73385c4085f268d8d8a3292b3', '2021-03-10 10:15:11', '2021-03-10 10:15:11'),
(104, 'qodeniran', 'muhdqozeem@gmail.com', 'Author', '2c599bc73385c4085f268d8d8a3292b3', '2021-03-19 09:48:50', '2021-03-19 09:48:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `post_topic`
--
ALTER TABLE `post_topic`
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
