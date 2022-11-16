-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2022 at 04:56 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bulsu_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `counter_table`
--

CREATE TABLE `counter_table` (
  `id` int(11) NOT NULL,
  `ip_address` text NOT NULL,
  `token` text NOT NULL,
  `visit_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `counter_table`
--

INSERT INTO `counter_table` (`id`, `ip_address`, `token`, `visit_date`) VALUES
(1, '::1', 'CXdTGe-je8rLa7ew5-SdY3s3sQg0x4v1NMkhf9wmT198gMjtBsKgrst8MTY2ODI0MDE2Ng', '2022-11-12 01:02:50'),
(2, '::1', 'dBOzO8-69evXaYM_F0iIRC3V5TalF_NtLgzPypxIKRR8X7LtXgagX1J8MTY2ODI0MDYwNw', '2022-11-12 01:10:14'),
(3, '::1', 'oRongeL7VDewzY8bI-DGBW0J8A0bvU6CYJo2WF17z258IKcitEbAdLt8MTY2ODI0MDYxNg', '2022-11-12 01:10:31'),
(4, '::1', 'V8EGAjxIG1_3zez1SKGc0GkZ2v8Xja1fm9DrpbZuoc98ik3C-HlqdKt8MTY2ODI0MDY3MA', '2022-11-12 01:11:16'),
(5, '::1', '6-l9GHsRcQGZybGDoLUSrBgrmu5qRYzvsDS0MZI14258nwYXvyO-L1R8MTY2ODI0MDY3OQ', '2022-11-12 01:11:28'),
(6, '::1', 'LPU84S_P4nTXWQrf6rOEd624MNRvRS2PW4uznSgtSuN8NASMWu4xm4Z8MTY2ODI0MTI0Mg', '2022-11-12 01:20:47'),
(7, '::1', 'tESCO94xXFRgVfLx9AC_3oWBu4Mu8z33vpdzrbEWHUF8t9B9_8W6gRx8MTY2ODI0MTI1MA', '2022-11-12 01:20:58'),
(8, '::1', 'skJQjibuYG6tZsOKIaDyyflR-N0wWpMx1YVj1B9PEdN8DyOzN_5xz4R8MTY2ODI2MTgyOA', '2022-11-12 07:04:00'),
(9, '::1', '4PXtk-8-1xpzx1LJVegIYjopk2ooAISJzmfmmWol4C58odsklfgPXxR8MTY2ODI2NjA3Nw', '2022-11-12 08:14:44'),
(10, '::1', 'EgI6Hd9jNADkjq__BWHr7XKGOFSKd2Q-eYV7aClzfcZ82PBuErsgRzB8MTY2ODMxMDA5NQ', '2022-11-12 20:28:27'),
(11, '::1', 'Ij2nU-kqGIZniLYTCXR7ob_gZmwRiYbxDbLAAWUb7C18ZjSeVFlBCUp8MTY2ODMyOTk2Mg', '2022-11-13 01:59:37'),
(12, '::1', 'mMgGXLJcxDfwXDLNFWMH9ZRMvOlI34g1NKOGQVZ4ls18GwKkqRc6Gg98MTY2ODMzNTkyNg', '2022-11-13 03:39:27'),
(13, '::1', 'NIawaF6KHETUvl6RCrA3NAerGyyDnMTTnsMqEuoASVF8_AmyoZ1YD998MTY2ODM0MTEyNw', '2022-11-13 05:06:57'),
(14, '::1', 'LdcsrvxggaP7ACceZtDRDlEI-jcziwok37cxRgJEsGR8YU9FS24RY6Z8MTY2ODM0MTM1Mg', '2022-11-13 05:09:25'),
(15, '::1', 'MJIn71LDMviEUxqOmsKKlxgbWB-kGDI3Kje1tKsLG_l8VwFr-FZ9gnV8MTY2ODM1MjUxNw', '2022-11-13 08:15:27'),
(16, '::1', 'zNAMM5SZC7L5lmcDbwPMI7DK3nO__qGo2-o2jX-90Jp8tnnTYjflX7d8MTY2ODM4NDg2Mw', '2022-11-13 18:14:12'),
(17, '::1', 'TpNgI9Pqh2mIFMEaq2drucL4U8kHkrWYz1qRVgCjf3l8Qk1j5Nwwuld8MTY2ODM5MzM4MQ', '2022-11-13 19:36:28'),
(18, '::1', 'nueC3VWHfvfvPUTv-ES00H-WO-F_NUxXZ35QaGt7zN58VVWM9C8cZ498MTY2ODM5NjU1OA', '2022-11-13 20:29:28'),
(19, '::1', 'pLlyu0V1asrM4975S0XGNNk8658oKsp-ZQqPeX-Wu1R8UvTvx8tT9od8MTY2ODM5NjYzMA', '2022-11-13 20:30:36'),
(20, '::1', 'UfkM5frkI4Og1A6V4SPoohzTP8eFYg8UTlC0I-W-DKx8ZXbr-oNagpF8MTY2ODM5NzM2Mg', '2022-11-13 20:42:51'),
(21, '::1', 'MdkJ0Gc7ZW0jNZNQFxHSs2ovD7dTf_Tk9iLc2jlAw398gS56zU34xNN8MTY2ODQwMDk3Mg', '2022-11-13 21:43:01'),
(22, '::1', 'vZYidW1bq6Ca2Pmt4MPs7RL0pHO96gZwmP2yMdkaa6p8_TjAuRpwu7V8MTY2ODQwMDk4OQ', '2022-11-13 21:43:17'),
(23, '::1', 'jeuN1-7jcegj3cwVVsvoZwHZCy052uY6fzbiksAdLRZ8gp4-pr28d9d8MTY2ODQwMTA2OQ', '2022-11-13 21:44:40'),
(24, '::1', 'LWBH1gq_ZJKYO6C54EUkn0RDKDsNUeemnrXkR_mh8xR8ejumWrK8TDN8MTY2ODQwMTE1Mg', '2022-11-13 21:48:38'),
(25, '::1', '-_eeCVgyC4Pse58EmUE3IFktDmpXr6MHEfe4D7d4ACB8RLURuywgMHV8MTY2ODQwMTQzMw', '2022-11-13 21:50:48'),
(26, '::1', '_yCBU4pq9unOok-aRrzhkNz2HOF1xjbgowx1yXmMIlF8E5nl7G5RP818MTY2ODQwMTQ2Mg', '2022-11-13 21:51:13'),
(27, '::1', 'MZeiJyhjWpMrSUKwA1WyyHub22qykO0g8Z2d5234c9x82PITRXKikyp8MTY2ODQwMTQ4NQ', '2022-11-13 21:51:36'),
(28, '::1', 'N0L5OlfJcNjBHdbh9xZvdQ1jbfzaaJgno2sylA7F-vJ8Q1E01yChN918MTY2ODQwMTUwOA', '2022-11-13 21:57:18'),
(29, '::1', 'xEdQ0EIceHrydY7EgNtwF-sSW34Ic9FB8uOOQQp9EjB8tH4L3DQML5R8MTY2ODQwMTkyOQ', '2022-11-13 21:59:02'),
(30, '::1', 'sGFaZuXHkpmoJluG2V45wLQOi21KAGIWUoBZTjBPxgZ8PhjfVV2p6nN8MTY2ODQwMjA4NQ', '2022-11-13 22:01:35'),
(31, '::1', 'l8YH25tELjFzNwdALVgW6_36UEvO3bV919GutBnEdlt8hpxta_4D0WZ8MTY2ODQwMjE5OQ', '2022-11-13 22:05:59'),
(32, '::1', '-tuP1iex2zNjgsMb1sIBwYoktvqvTetvOZdDkbcosEt8TatBnQCf7w18MTY2ODQwMjM5NQ', '2022-11-13 22:06:40'),
(33, '::1', 'fhIspKM5ATEdG8BV6QUN8omJk9J2iWoTZbtNHzVwnkx8P7nmA1cLcYR8MTY2ODQwMjYwMw', '2022-11-13 22:10:08'),
(34, '::1', 'WzDwi3TOPoQHqAGQz9b66BzoNsK7_aRntCbCFIfxs_18Nj4VtrOvwa58MTY2ODQwMjc0Mw', '2022-11-13 22:12:54'),
(35, '::1', 'Sn8foC4feKX67-oyljMCihn1VPwhkJa6rYUmLxS54Kl8Vj1BCevhcUd8MTY2ODQwMzI5Mg', '2022-11-13 22:21:46'),
(36, '::1', 'XZCBvcShyHTFWAEtNgLFaVh3mGjXcbi2bvHlERBQ1Nd8zNBrrj30U2p8MTY2ODQwMzMyNA', '2022-11-13 22:22:10'),
(37, '::1', '7XV_KSfs90_ZU-h_8kiHSfx-WQ7jb0tZiFqWbmLKARx8X4v7HLlv-gl8MTY2ODQwNDAxNA', '2022-11-13 22:33:41'),
(38, '::1', 'vJhDQjx9RBkqUyGYD1m1w99pT_K4J0XGhreTQcPt6ld8El3JrqvmRh18MTY2ODQwNTQ1Ng', '2022-11-13 22:57:45'),
(39, '::1', 'azQCK-S0Ti_qOCtSpJZsS_N6zkE9iNkFCDi87ciZa0Z8vCFvl1ywhUx8MTY2ODQwNTUyNg', '2022-11-13 22:58:57'),
(40, '::1', 'BHpmG1YGz1Hs0XbdtnEYOOr10vqNVRfIg1pECL8r7Lh8yJBCfXQGwCB8MTY2ODQwNTYyOA', '2022-11-13 23:00:34'),
(41, '::1', 'E36dOXWUJJGzAzEuRCmNL128u9jK64RIXCnrtgZbNrZ88amjwTxnfX18MTY2ODQwNzY3OA', '2022-11-13 23:34:43'),
(42, '::1', 'sWDmpEEFsIJf1RenW2WLwAkgfelmhSLH5dSVF6A_cch8ARV5ghQzkyB8MTY2ODQ0NDE2NQ', '2022-11-14 09:43:04'),
(43, '::1', 'ufvdGaIzm6hbJMGua_uWQvxPMl_eUySz2ghTT-9GbmN8c74H6-fo91V8MTY2ODQ0NDIyMA', '2022-11-14 09:43:51'),
(44, '::1', 'iFNi3JWlZ17KeKq8sOEPdrlBSx_LEieD-nAGD15AA058ewPLXPkqTb58MTY2ODQ1MTI1MQ', '2022-11-14 11:41:09'),
(45, '::1', 'XHUBczMe_rQj8nN3V6Xu9OQ41Xdq5inyK3eedryq3Ih8HEs9kCbhInN8MTY2ODQ1MjAwNQ', '2022-11-14 11:53:30'),
(46, '::1', 'swHKajJwK1vyEXrajHvZhm8o9Wb1AFbJum-aETIEEvd82W8jE5L8gGJ8MTY2ODQ1MjQ3OA', '2022-11-14 12:01:29'),
(47, '::1', 'bKClp1rdwwDD-G-2kz2zZjty69ohdo4IKg7BJ_il-i98yK4yWc2R5H18MTY2ODQ1Mjg1Ng', '2022-11-14 12:08:10'),
(48, '::1', 'lnmaKtftf-1U9nCDE5rSjawXUXO6IYLqC4bRRix2FOl8KwyU-tUSu6F8MTY2ODQ1NzYyOQ', '2022-11-14 13:27:16'),
(49, '::1', '-PpWH8YkmCqVbXn226cBqFZFbvCa8751UoPTS4QZU018h9EnOkv43EJ8MTY2ODQ1NzY1MQ', '2022-11-14 13:27:36'),
(50, '::1', 'FeCyehJy9MCrrFed4WwjE5PKytIARPOLj75etkQeyq58ywntOWO3lK58MTY2ODQ1NzcwNQ', '2022-11-14 13:28:31'),
(51, '::1', 'ppGgCdZwfUMLHzvnhPgq62cSqsZX7BB4o9H2ZtxvM0x8CyCaPcxTgRx8MTY2ODQ1Nzc4NA', '2022-11-14 13:29:50'),
(52, '::1', 'Qsxnqkg06s3qZBwlQ4qfdj2nKkfe_Ba3RNBd_Lvn14p8nQ3eUH_ayR58MTY2ODQ1ODI1OQ', '2022-11-14 13:37:45'),
(53, '::1', 'XnFpLxQBiJ3GRnLcGwDlBTQXGXYURbmVUuavbE70WtV8mrxxymS5Zkh8MTY2ODQ3NDY1Ng', '2022-11-14 18:11:02'),
(54, '::1', 'J-d3tWbXzfkwrVsyUB-veHltHekVKZNGMQgYTH41IRl80h14Bew7RYF8MTY2ODQ3NDgyOA', '2022-11-14 18:13:56'),
(55, '::1', '4LSU6CW7eedzPQ5DKq4BtiwqYbAE-SFx48uK7dP44698jiCad5rTAqt8MTY2ODQ3NTE2MA', '2022-11-14 18:19:26'),
(56, '::1', 'W8LyJrJlqhVmEZ4BSP9hM6GDRtn8DrdiirfHVEsnCu98mV2hlc83A9N8MTY2ODQ3NTE5OQ', '2022-11-14 18:20:04'),
(57, '::1', 'yAEqtMOCoVgaa40kHtZ-7nidLVal7d_tADdHd_UMUOt8UYVE4UMdQMt8MTY2ODQ3NTI4OQ', '2022-11-14 18:21:36'),
(58, '::1', 'bJxHeVSj8ftzl7H5EBSlNw5y6oNjIwbPMOT1zDqzpZp8LSAV7Fh1gkV8MTY2ODQ3NTgyOA', '2022-11-14 18:30:34'),
(59, '::1', 'HcfAARTBq193D4EO4smkvZ9ukpGkQaqEIgUxH-dpl4Z8VbppaR8MmtJ8MTY2ODQ3NTg1Ng', '2022-11-14 18:31:01'),
(60, '::1', 'pXBaFzBhSiolmxY6Phnkn4Vg5OICT3blotJsyMUcJa18OeeFLq2kS7d8MTY2ODQ3NjQyNQ', '2022-11-14 18:40:32'),
(61, '::1', 'StO_4g26L9sOul6HuFwVwJhZGWl7snU4DqsEes_TzQF8gF3Yco9pp6d8MTY2ODQ3NjQ0Nw', '2022-11-14 18:41:33'),
(62, '::1', 'l_v9BGarT32vEfP4Ivb7SXNMYD4BEzwqizMCEDA3Tvd82V48mG603oF8MTY2ODQ3NjUwMw', '2022-11-14 18:41:48'),
(63, '::1', '3R0AvUZkYb6gpTPObIRanjoQUPvDV22tmZVpkNF-tQx829CNpOV-pW58MTY2ODQ3Njc0Nw', '2022-11-14 18:45:53'),
(64, '::1', 'wxvDV0Pq0EfMlp-JIJydTbhdVu9JaE0yymLqbhq-i4x8NGMtloMpZyJ8MTY2ODQ4MDA0Nw', '2022-11-14 19:40:57'),
(65, '::1', 'NTcOTnZYvh8YqEvsKm3dZv2kIddSVXNAWC0aTbMx9MZ8crgp5wofU2t8MTY2ODQ4MDQyMw', '2022-11-14 19:47:13'),
(66, '::1', 'WNZsF-Dhb5QoNkMrf513QHCb7mDfeD5298-ypuquizN8CDVrzNYwbB18MTY2ODQ4MDg5MA', '2022-11-14 19:54:56'),
(67, '::1', 'C42jzK8wM5-J62JfG8orf_rZtoB0lafIQJU3DhoJ1WV8dX-iJLsfjoV8MTY2ODQ4MDkxMg', '2022-11-14 19:55:20'),
(68, '::1', 'KjSR7St56BncMha9i4u21vfU6RPHRnimf7IHoXG2JI589kKHpq26gyJ8MTY2ODQ4MzMwMw', '2022-11-14 20:35:09'),
(69, '::1', 'XipTeWk-CMMlVw85UxALOCB5alnsxKr0ZwpKNPs7xq185HfHEz0jGn58MTY2ODQ4MzMxNQ', '2022-11-14 20:35:22'),
(70, '::1', '-q7OuLQaEkA8Vaq6VnBhylngkX7mDcFS2GHPruMllQ989Q_kvB1kOrl8MTY2ODQ4MzM2MQ', '2022-11-14 20:36:09'),
(71, '::1', 'ovSP9sw6IaB7-6ax-jFyO26y3ETvyPjU2McAg1De9oN8w8jJRuYNKyl8MTY2ODQ4Mzc3Nw', '2022-11-14 20:43:04'),
(72, '::1', 'g24CNSus3fZlsuebrEq0AV9un-ZbiwKHc-Op4j02P5B8avwAaID_TuZ8MTY2ODQ4NDEzMw', '2022-11-14 20:49:02'),
(73, '::1', '8_rCrasmTSFsp_BXUE7qVpiF-9n3G07OSrqzJ2rSSu58mAkpcRe0QmR8MTY2ODQ4NjI2MQ', '2022-11-14 21:24:26');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `code` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `department_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(300) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `code`, `description`, `department_id`, `user_id`, `token`, `date`) VALUES
(2, 'BSBA', 'Bachelor of Science in Business Administration Major in Business Economics', 1, 1, '', '2022-11-08 09:52:57'),
(3, 'BSBA', 'Bachelor of Science in Business Administration Major in Financial Management', 1, 1, '', '2022-11-08 10:10:27'),
(4, 'BSBA', 'Bachelor of Science in Business Administration Major in Marketing Management', 1, 1, '', '2022-11-08 10:14:28'),
(5, 'BSE', 'Bachelor of Science in Entrepreneurship', 1, 1, '', '2022-11-08 10:16:56'),
(6, 'BSHM', 'Bachelor of Science in Hospitality Management', 3, 1, '', '2022-11-08 10:18:05'),
(7, 'BSTM', 'Bachelor of Tourism Management', 3, 1, '', '2022-11-08 10:58:25'),
(8, 'BEE', 'Bachelor of Elementary Education', 2, 1, '', '2022-11-08 10:59:43'),
(9, 'BSED EMM', 'Bachelor of Science in Elementary Education Major in English minor in Mandarin', 2, 1, '', '2022-11-08 11:08:10'),
(10, 'BSED Filipino', 'Bachelor of Science in Elementary Education Major in Filipino', 2, 1, '', '2022-11-08 11:09:17'),
(11, 'BSED Science', 'Bachelor of Science in Elementary Education Major in Science', 2, 1, '', '2022-11-08 11:21:43'),
(12, 'BSED Mathematics', 'Bachelor of Science in Elementary Education Major in Mathematics', 2, 1, '', '2022-11-08 11:25:04'),
(13, 'BSED Social Studies', 'Bachelor of Science in Elementary Education Major in Social Studies', 2, 1, '', '2022-11-08 11:27:52'),
(14, 'BSIT', 'Bachelor of Science in Information Technology', 3, 1, '', '2022-11-08 11:28:30'),
(15, 'BIT Computer', 'Bachelor of Information Technology Major in Computer', 3, 1, '', '2022-11-08 11:29:31');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `code` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(300) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `code`, `description`, `user_id`, `token`, `date`) VALUES
(1, 'BAM', 'Business and Management Department', 13, 'iQUrxzs27YfEPMZu0PgcouDhC5DjqSDZEGenQfIJ9sd85mn4O-21Ksx8MTY2ODQ3ODcxMQ', '2022-11-15 03:20:44'),
(2, 'GATE', 'General Academics and Teacher Education Department', 13, 'hpYbeTzphNkyhBf1NQozzszcv-eOrygdDIWWatmgwWt8KbdD77dxaWJ8MTY2ODQ3ODg0OQ', '2022-11-15 03:20:56'),
(3, 'IIT', 'Industrial and Information Technology Department', 13, 'YkXHxHaq0faGQzQCrTjmKvuA7H7ARkR83uRQDj-NhLR848MsYAdwCAJ8MTY2ODQ3ODg2Ng', '2022-11-15 03:21:20');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_token` text NOT NULL,
  `token` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `user_id`, `user_token`, `token`, `date`) VALUES
(5, 13, 'c7jle9urFbQPIIkFvxtYDuWcxvEyaejJW6Jk32IeB_58-PbWPYeMLqB8MTY2ODE0NDgxMg', 'bNRTcw1-MkbjojrjfnSbadvSybinFO4aYeh6iPzIJR58U0k47X1Z7MJ8MTY2ODMyMzI3Nw', '2022-11-15 16:55:47'),
(6, 13, 'c7jle9urFbQPIIkFvxtYDuWcxvEyaejJW6Jk32IeB_58-PbWPYeMLqB8MTY2ODE0NDgxMg', '7bNpqQ7Gm7Sg0XqKHMAGEnjUhBY08b1zRiuqHxfTwYp8hAB5-qTRd9p8MTY2ODE5NjYwNQ', '2022-11-14 17:47:52'),
(7, 13, 'c7jle9urFbQPIIkFvxtYDuWcxvEyaejJW6Jk32IeB_58-PbWPYeMLqB8MTY2ODE0NDgxMg', 'xXURdBW-pQgNkwzH7Zd2qMQZs15-RdVNrvryd5qIAbN8r0nTHa4cDSB8MTY2ODMyMzQyNQ', '2022-11-14 17:50:55'),
(8, 13, 'c7jle9urFbQPIIkFvxtYDuWcxvEyaejJW6Jk32IeB_58-PbWPYeMLqB8MTY2ODE0NDgxMg', 'sdMHXmNe_11k-Xka9y2AEmMmGcYaEy_vQ4csxF5eF5F8diQj5cGkYk98MTY2ODE1NzIwOA', '2022-11-14 17:54:40'),
(9, 13, 'c7jle9urFbQPIIkFvxtYDuWcxvEyaejJW6Jk32IeB_58-PbWPYeMLqB8MTY2ODE0NDgxMg', 'PmSlXA6pKTvV-AQgAutWr7wqsBMB4sdnfe-dWymVJIl8cjn6vCZeRNZ8MTY2ODMyMzYyMA', '2022-11-15 02:10:21');

-- --------------------------------------------------------

--
-- Table structure for table `research`
--

CREATE TABLE `research` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `researchers` varchar(300) NOT NULL,
  `adviser` varchar(100) NOT NULL,
  `date_research` date NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT '',
  `picture` varchar(300) NOT NULL,
  `department_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `token` varchar(300) NOT NULL,
  `views` int(11) NOT NULL,
  `downloads` int(11) NOT NULL,
  `date_publish` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `research`
--

INSERT INTO `research` (`id`, `title`, `researchers`, `adviser`, `date_research`, `type`, `picture`, `department_id`, `course_id`, `user_id`, `description`, `token`, `views`, `downloads`, `date_publish`) VALUES
(1, 'WEB BASED ARCHIEVED', 'Ayban Hernandez', 'Eugine Perez', '2022-11-11', 'Capstone', 'WEB BASED ARCHIEVED.pdf', 4, 14, 13, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque gravida facilisis bibendum. Duis et velit a velit scelerisque facilisis eget in tellus. Donec sapien odio, finibus quis convallis eu, suscipit in quam. Maecenas eleifend auctor purus, sed consequat nibh dapibus sit amet. Aliquam vulputate congue sapien, eu accumsan enim aliquet eget. Quisque at iaculis leo, vel iaculis sapien. Mauris massa neque, sagittis non fermentum id, laoreet eget justo. Integer augue turpis, aliquam a ex sit amet, sollicitudin egestas enim. Aliquam convallis nulla vitae massa finibus, a consequat mauris tempus.\r\n\r\nAliquam erat volutpat. Vivamus placerat rutrum aliquet. Sed porta lacus at massa congue porttitor. Cras dapibus diam at erat pretium molestie. Maecenas tincidunt lacinia auctor. Pellentesque mollis lacus a lacus porttitor, vitae venenatis nulla consequat. Proin ut euismod eros. Nulla posuere eu tortor eget viverra. Cras id scelerisque mi, quis lacinia felis. Mauris ac nisi auctor, cursus lorem sit amet, porta dui. Vivamus dui elit, vehicula ut velit euismod, posuere euismod erat.', 'sdMHXmNe_11k-Xka9y2AEmMmGcYaEy_vQ4csxF5eF5F8diQj5cGkYk98MTY2ODE1NzIwOA', 234, 3, '2022-11-11 10:01:34'),
(2, 'asdsad', 'Lorem ipsum dolor, Lorem ipsum dolor, Lorem ipsum dolor, Lorem ipsum dolor, Lorem ipsum dolor', 'Eugine Perez', '2022-11-12', 'Capstone', 'asdsad.pdf', 3, 8, 13, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sit amet eleifend leo, vel faucibus tellus. Mauris porta elementum dolor. Aenean luctus leo turpis, a semper diam laoreet a. Sed sollicitudin sagittis ex, id gravida quam accumsan ac. Duis sed sodales nisi. Praesent tempus sapien erat, congue euismod ipsum feugiat eget. Aliquam et cursus metus, ut sagittis quam. Nullam quis felis tempor arcu sodales convallis id vitae nibh. Phasellus blandit sapien sit amet faucibus imperdiet. Phasellus felis diam, varius a massa quis, mollis molestie leo. Cras ut tristique libero. In vel fermentum nunc, vel dapibus dolor. Nulla tempus, arcu a convallis placerat, felis dolor pretium urna, ac aliquam lacus nibh eu leo.\r\n\r\nPellentesque bibendum est eu ex eleifend, id tempor diam tincidunt. Proin facilisis dignissim dui, fermentum venenatis mauris porta sed. Phasellus eu felis eros. Nam massa ante, dignissim eget mauris eget, maximus porta purus. Integer eu euismod risus. Praesent ornare, magna eu tincidunt mollis, nisi massa rutrum velit, non fermentum leo ligula sed leo. Etiam vitae volutpat ipsum. Donec augue diam, scelerisque nec leo et, aliquam accumsan nibh.\r\n\r\nNunc iaculis ac justo imperdiet congue. Integer diam mi, ultrices eu nibh vel, fermentum tincidunt nisi. Aliquam in tempor dui. Quisque nec sagittis leo. Sed viverra ligula ac risus dapibus, in finibus libero suscipit. Aliquam justo elit, sagittis fermentum dictum at, luctus ut est. Proin sagittis justo ut nulla fringilla efficitur ut et justo. Aliquam tincidunt hendrerit leo, et maximus dui. Mauris ac nulla non dolor pretium condimentum.\r\n\r\nAenean ultricies sollicitudin arcu. Suspendisse sed fringilla ex. Sed et diam posuere est cursus dapibus. Nulla placerat est id facilisis sollicitudin. Cras dapibus finibus tortor, in porta turpis fringilla vel. Suspendisse hendrerit felis quis est efficitur, id congue lectus porttitor. Curabitur fringilla ultrices nunc in malesuada. Duis sit amet tellus porttitor, feugiat tellus sed, molestie leo.\r\n\r\nDuis hendrerit ipsum et sem rhoncus aliquet. Sed eleifend nisi et faucibus sagittis. Praesent hendrerit, ipsum sed lobortis interdum, nulla est pulvinar neque, at varius massa tellus at arcu. Nam vestibulum erat nec nisl sagittis, vel lobortis diam ultrices. Integer scelerisque, sem quis dignissim accumsan, odio neque vehicula metus, quis laoreet ipsum libero sit amet mi. Maecenas a justo massa. Sed sagittis blandit nunc, tempor aliquam lorem semper eu. Mauris et est ex. Cras eu arcu nec dolor condimentum egestas vel ornare lectus. Curabitur ut magna posuere, elementum felis nec, commodo odio. Curabitur bibendum, magna ac vehicula feugiat, purus nisi tempor mi, eu vehicula ex dolor eget nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vehicula mi quis purus convallis vehicula. Proin a convallis velit, eget eleifend magna.', '7bNpqQ7Gm7Sg0XqKHMAGEnjUhBY08b1zRiuqHxfTwYp8hAB5-qTRd9p8MTY2ODE5NjYwNQ', 102, 4, '2022-11-11 20:57:09'),
(5, 'qeqwewqtetre.pdf', 'Lorem ipsum dolor, Lorem ipsum dolor, Lorem ipsum dolor, Lorem ipsum dolor, Lorem ipsum dolor', 'Lorem ipsum dolor', '2022-12-10', 'Thesis', 'qeqwewqtetre.pdf', 2, 11, 13, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eleifend sagittis nisi, vel posuere massa. Aenean malesuada elementum sem vel venenatis. Phasellus bibendum semper finibus. Donec venenatis fermentum fringilla. Etiam venenatis lectus ipsum, at cursus elit ullamcorper id. Nam nisi arcu, pellentesque nec nisl vitae, rhoncus ornare nisl. Maecenas risus diam, consequat sed tristique eu, hendrerit efficitur metus. Morbi sed erat sodales risus venenatis maximus. Nam tristique erat et augue scelerisque, in consectetur quam ultrices. In hendrerit maximus ante nec cursus. Curabitur eros nisi, fermentum sed orci vitae, ultrices posuere nisi. Maecenas ac porta mi, nec luctus mauris. Morbi ullamcorper egestas convallis.\r\n\r\nAenean faucibus rutrum dui, ut maximus ante imperdiet sit amet. Nullam porta mollis rhoncus. Morbi sed sem venenatis, sodales risus ac, vestibulum ex. Donec id eleifend risus. Ut fermentum a lacus et elementum. Nulla a odio magna. Nullam lacinia elit vel felis euismod, at malesuada augue viverra. Suspendisse suscipit condimentum massa, sed lacinia ipsum venenatis in. Vivamus luctus tortor lectus. Praesent gravida viverra lectus sit amet dapibus. Cras ac ipsum ut neque tincidunt tempus. Praesent sem ligula, sollicitudin nec ante sagittis, maximus iaculis sem. Ut egestas neque a vulputate elementum. Integer et erat vulputate, congue lectus eu, luctus metus. Interdum et malesuada fames ac ante ipsum primis in faucibus.', 'bNRTcw1-MkbjojrjfnSbadvSybinFO4aYeh6iPzIJR58U0k47X1Z7MJ8MTY2ODMyMzI3Nw', 11, 0, '2022-11-13 08:08:40'),
(9, 'qawaw', 'Lorem ipsum dolor, Lorem ipsum dolor, Lorem ipsum dolor, Lorem ipsum dolor, Lorem ipsum dolor', 'Eugine Perez', '2022-11-17', 'Capstone', 'qawaw.pdf', 3, 15, 13, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eleifend sagittis nisi, vel posuere massa. Aenean malesuada elementum sem vel venenatis. Phasellus bibendum semper finibus. Donec venenatis fermentum fringilla. Etiam venenatis lectus ipsum, at cursus elit ullamcorper id. Nam nisi arcu, pellentesque nec nisl vitae, rhoncus ornare nisl. Maecenas risus diam, consequat sed tristique eu, hendrerit efficitur metus. Morbi sed erat sodales risus venenatis maximus. Nam tristique erat et augue scelerisque, in consectetur quam ultrices. In hendrerit maximus ante nec cursus. Curabitur eros nisi, fermentum sed orci vitae, ultrices posuere nisi. Maecenas ac porta mi, nec luctus mauris. Morbi ullamcorper egestas convallis.\r\n\r\nAenean faucibus rutrum dui, ut maximus ante imperdiet sit amet. Nullam porta mollis rhoncus. Morbi sed sem venenatis, sodales risus ac, vestibulum ex. Donec id eleifend risus. Ut fermentum a lacus et elementum. Nulla a odio magna. Nullam lacinia elit vel felis euismod, at malesuada augue viverra. Suspendisse suscipit condimentum massa, sed lacinia ipsum venenatis in. Vivamus luctus tortor lectus. Praesent gravida viverra lectus sit amet dapibus. Cras ac ipsum ut neque tincidunt tempus. Praesent sem ligula, sollicitudin nec ante sagittis, maximus iaculis sem. Ut egestas neque a vulputate elementum. Integer et erat vulputate, congue lectus eu, luctus metus. Interdum et malesuada fames ac ante ipsum primis in faucibus.', 'PmSlXA6pKTvV-AQgAutWr7wqsBMB4sdnfe-dWymVJIl8cjn6vCZeRNZ8MTY2ODMyMzYyMA', 36, 0, '2022-11-13 08:14:42');

-- --------------------------------------------------------

--
-- Table structure for table `research_views`
--

CREATE TABLE `research_views` (
  `id` int(11) NOT NULL,
  `token` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `research_views`
--

INSERT INTO `research_views` (`id`, `token`, `date`, `ip_address`) VALUES
(1, 'c7jle9urFbQPIIkFvxtYDuWcxvEyaejJW6Jk32IeB_58-PbWPYeMLqB8MTY2ODE0NDgxMg', '2022-11-12 12:19:17', '::1'),
(2, 'c7jle9urFbQPIIkFvxtYDuWcxvEyaejJW6Jk32IeB_58-PbWPYeMLqB8MTY2ODE0NDgxMg', '2022-11-12 12:20:56', '::1'),
(3, 'c7jle9urFbQPIIkFvxtYDuWcxvEyaejJW6Jk32IeB_58-PbWPYeMLqB8MTY2ODE0NDgxMg', '2022-11-12 12:21:03', '::1'),
(4, 'c7jle9urFbQPIIkFvxtYDuWcxvEyaejJW6Jk32IeB_58-PbWPYeMLqB8MTY2ODE0NDgxMg', '2022-11-12 12:21:07', '::1'),
(5, 'c7jle9urFbQPIIkFvxtYDuWcxvEyaejJW6Jk32IeB_58-PbWPYeMLqB8MTY2ODE0NDgxMg', '2022-11-12 12:21:10', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`) VALUES
(1, 'Admin'),
(2, 'Student'),
(3, 'Faculty');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `savedpaper`
--

CREATE TABLE `savedpaper` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_token` text NOT NULL,
  `token` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `savedpaper`
--

INSERT INTO `savedpaper` (`id`, `user_id`, `user_token`, `token`, `date`) VALUES
(1, 13, 'c7jle9urFbQPIIkFvxtYDuWcxvEyaejJW6Jk32IeB_58-PbWPYeMLqB8MTY2ODE0NDgxMg', 'sdMHXmNe_11k-Xka9y2AEmMmGcYaEy_vQ4csxF5eF5F8diQj5cGkYk98MTY2ODE1NzIwOA', '2022-11-15 16:55:58');

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `playerid` int(10) UNSIGNED NOT NULL,
  `score` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`playerid`, `score`) VALUES
(1, 10),
(2, 40),
(3, 20),
(4, 9),
(5, 20);

-- --------------------------------------------------------

--
-- Table structure for table `temp_user`
--

CREATE TABLE `temp_user` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `department_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `picture` varchar(300) NOT NULL,
  `token` varchar(300) NOT NULL,
  `date_validate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `school_id` varchar(20) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(25) DEFAULT NULL,
  `lastname` varchar(25) NOT NULL,
  `email_verified` varchar(100) NOT NULL,
  `password` varchar(500) NOT NULL,
  `department_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `picture` varchar(300) DEFAULT NULL,
  `token` text NOT NULL,
  `date_validate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `school_id`, `firstname`, `middlename`, `lastname`, `email_verified`, `password`, `department_id`, `course_id`, `role_id`, `picture`, `token`, `date_validate`) VALUES
(13, '2019501424', 'Jeswel', NULL, 'Gomez', 'gomez.jeswel.r@bulsu.edu.ph', '$2y$10$lUVgtEI4u/ffUmTcg/b/CedyUJh4SiS4o3zLm96g4igrmDaC6eE3q', 1, 2, 1, NULL, 'c7jle9urFbQPIIkFvxtYDuWcxvEyaejJW6Jk32IeB_58-PbWPYeMLqB8MTY2ODE0NDgxMg', '2022-11-10 18:41:28'),
(27, '123654', 'Jonnel', NULL, 'Baras', 'baras.jonnel.r@bulsu.edu.ph', '$2y$10$um26v7U2WIW31VSUejLRUud3K.Iq8zndRK3BxdOYAg2iIMOmSnEXu', 1, 3, 2, NULL, 'AtFHfgHaogNKZV7yOlpsB0hBw3L2vJK_S_NgEcWkvVx8xztIzdeAqbl8MTY2ODQwNTU4MA', '2022-11-14 07:00:14'),
(28, '12345678', 'Jeswel', NULL, 'Baras', 'baras.jeswel.r@bulsu.edu.ph', '$2y$10$0TQy4NKfKiRGYtH9gOQLj.wl7fgvENiQG.LT0WFIKCpyGSxnnjWkW', 1, NULL, 3, NULL, 'RAU-KLnVhan-UcYe-tEudQUEVe1Eg-6fl-G83208xFR8FlH-ZHDnRAx8MTY2ODQ0NTM3MA', '2022-11-14 18:06:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `counter_table`
--
ALTER TABLE `counter_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `research`
--
ALTER TABLE `research`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `research_views`
--
ALTER TABLE `research_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `savedpaper`
--
ALTER TABLE `savedpaper`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`playerid`);

--
-- Indexes for table `temp_user`
--
ALTER TABLE `temp_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `counter_table`
--
ALTER TABLE `counter_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `research`
--
ALTER TABLE `research`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `research_views`
--
ALTER TABLE `research_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `savedpaper`
--
ALTER TABLE `savedpaper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `score`
--
ALTER TABLE `score`
  MODIFY `playerid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `temp_user`
--
ALTER TABLE `temp_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
