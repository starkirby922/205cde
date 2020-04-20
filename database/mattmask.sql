-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2020-04-20 10:04:13
-- 伺服器版本： 8.0.17
-- PHP 版本： 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `mattmask`
--

-- --------------------------------------------------------

--
-- 資料表結構 `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `firstName` varchar(125) NOT NULL,
  `lastName` varchar(125) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `confirmCode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `admin`
--

INSERT INTO `admin` (`id`, `firstName`, `lastName`, `email`, `mobile`, `address`, `password`, `type`, `confirmCode`) VALUES
(4, 'to', 'matt', 'matt@gmail.com', '01677876551', '$5$rounds=535000$WOAOMdgoK2JpZLY5$RFH9BZQCB3NEvG4R/FofxxJL/PUaeZm7T6G9P3PRg05', '$5$rounds=535000$/lN.uQi84cdqSGg9$Fur.9vivZBIgmahzEG9RLkqNZ5hYgHiEjibrBxFng0C', 'manager', '0');

-- --------------------------------------------------------

--
-- 資料表結構 `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `ofname` text NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `oplace` text NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `dstatus` varchar(10) NOT NULL DEFAULT 'no',
  `odate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ddate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `orders`
--

INSERT INTO `orders` (`id`, `uid`, `ofname`, `pid`, `quantity`, `oplace`, `mobile`, `dstatus`, `odate`, `ddate`) VALUES
(1, NULL, 'Kashmiri Chador', 1, 2, 'Khilkhet, Dhaka', '01609876543', 'no', '2018-09-21 13:05:07', NULL),
(2, NULL, 'Nur Mohsin', 1, 3, 'Khilkhet, Dhaka', '01609876543', 'no', '2018-09-21 13:08:55', NULL),
(3, NULL, 'Nur Mohsin', 2, 4, 'Dhaka', '09876543123', 'no', '2018-09-21 13:13:04', NULL),
(4, NULL, 'Nur Mohsin', 4, 1, 'Manikganj', '798345', 'no', '2018-09-21 13:18:47', NULL),
(5, NULL, 'Nur Mohsin', 9, 4, 'Dhaka, Bangladesh', '01609876543', 'no', '2018-09-22 02:01:02', NULL),
(6, NULL, 'Nur Mohsin', 2, 1, 'Manikganj', '01609876543', 'no', '2018-09-22 02:09:29', NULL),
(7, 9, 'Nur Mohsin', 2, 1, 'Manikganj', '01609876543', 'no', '2018-09-22 02:10:46', NULL),
(8, 9, 'Nur Mohsin', 1, 1, 'Manikganj', '0994', 'no', '2018-09-22 03:04:13', NULL),
(9, 9, 'Kashmiri Chador', 12, 4, 'Dhaka', '01609876543', 'no', '2018-09-22 03:21:14', '2018-09-29'),
(10, 9, 'Chador', 13, 1, 'Dhaka', '01609876543', 'no', '2018-09-22 03:22:05', '2018-09-29'),
(11, NULL, 'adsf', 16, 1, 'asdf', 'asdf', 'no', '2020-04-08 08:26:43', '2020-04-15'),
(12, NULL, 'asd', 6, 1, 'asdf', '2341234', 'no', '2020-04-14 16:45:11', '2020-04-22'),
(13, NULL, 'starkirby9220', 4, 2, 'asdf', 'asdf', 'no', '2020-04-15 09:14:02', '2020-04-22'),
(14, 16, 'yu', 1, 2, 'yui', 'yui', 'no', '2020-04-15 09:58:06', '2020-04-22'),
(15, 16, 'dfh', 8, 1, 'dfgh', 'dfgh', 'no', '2020-04-15 10:10:32', '2020-04-22'),
(16, 16, 'matt', 12, 1, 'tsw', '12341234', 'no', '2020-04-15 10:12:25', '2020-04-22'),
(17, NULL, 'sdaf', 1, 1, 'df', 'dsf', 'no', '2020-04-15 10:17:17', '2020-04-22'),
(18, NULL, 'try', 10, 1, 'rty', 'rety', 'no', '2020-04-15 12:16:25', '2020-04-22'),
(19, NULL, 'yt', 10, 2, 'qwer', 'ertw', 'no', '2020-04-15 12:17:21', '2020-04-22'),
(20, NULL, 'adsf', 3, 1, 'asdf', 'adsf', 'no', '2020-04-16 10:44:47', '2020-04-23'),
(21, NULL, 'asdf', 1, 1, 'asdf', 'asdf', 'no', '2020-04-16 16:07:34', '2020-04-24'),
(22, 16, 'asdf', 9, 1, 'asdf', 'asdf', 'no', '2020-04-16 18:11:43', '2020-04-24'),
(23, NULL, 'g', 19, 1, 'tgd', 'fgs', 'no', '2020-04-17 11:36:05', '2020-04-24'),
(24, NULL, 'g', 19, 1, 'tgd', 'fgs', 'no', '2020-04-17 11:36:05', '2020-04-24'),
(25, NULL, 'ertw', 1, 1, 'wrt', 'erwt', 'no', '2020-04-18 13:18:05', '2020-04-25'),
(26, 16, 'asdf', 9, 1, 'asdf', 'asdf', 'no', '2020-04-18 13:18:26', '2020-04-25'),
(27, 16, 'adsfa', 6, 1, 'adsf', 'asdf', 'no', '2020-04-18 13:28:06', '2020-04-25'),
(28, NULL, 'matt', 8, 1, 'asdf', 'asdf', 'no', '2020-04-18 15:35:40', '2020-04-25'),
(29, 16, 'matt', 12, 1, 'asdf', 'asdf', 'no', '2020-04-18 15:36:00', '2020-04-25'),
(30, 16, 'matt', 6, 1, 'asdf', 'asdf', 'no', '2020-04-18 15:36:57', '2020-04-25'),
(31, NULL, 'r', 3, 1, 'r', 'r', 'no', '2020-04-18 16:52:51', '2020-04-26'),
(32, NULL, 'matthew', 19, 2, 'hk', '96008234', 'no', '2020-04-19 10:00:50', '2020-04-26'),
(33, 16, 'matt', 19, 1, 'hk', '96008234', 'no', '2020-04-19 10:01:17', '2020-04-26'),
(34, 16, 'dfasdfas', 6, 1, 'dfasdf', 'dfasa', 'no', '2020-04-20 09:41:32', '2020-04-27');

-- --------------------------------------------------------

--
-- 資料表結構 `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `pName` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `description` text NOT NULL,
  `available` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `pCode` varchar(20) NOT NULL,
  `picture` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `products`
--

INSERT INTO `products` (`id`, `pName`, `price`, `description`, `available`, `category`, `item`, `pCode`, `picture`, `date`) VALUES
(1, 'Black mask ', 120, 'cool mask', 4, 'blackmask', 'blmaskblackmask', 't-007', 'MSTS14738.jpg', '2020-09-22 04:00:00'),
(2, 'Medical Mask', 6000, 'Medical Facial Mask', 3, 'medicalmask', 'medicalmask', 'u-004', 'IMG_1212.jpg', '2020-09-22 04:00:00'),
(3, 'nuclear mask', 2000, 'Nuclear protective mask', 8, 'nuclearmask', 'nuclearmask', 's-001', '8544789_5_.jpg', '2020-09-22 04:00:00'),
(4, 'Beautiful Mask', 1200, 'beauty mask', 9, 'beautymask', 'beautymask', 'v-001', '0283BLT.jpg', '2020-09-22 04:00:00'),
(5, 'black mask ', 500, 'useful black mask', 10, 'blackmask', 'blackmask', 's-002', 'lp00-2.jpg', '2020-09-22 04:00:00'),
(6, 'Black mask ', 300, 'Dark vadar mask', 12, 'blackmask', 'blackmask', 't-003', 'yellow_2_.jpg', '2020-09-22 04:00:00'),
(7, 'Black mask ', 200, 'black mask', 10, 'blackmask', 'blackmask', 't-004', 'MSTSV14042.jpg', '2020-09-22 04:00:00'),
(8, 'Black mask ', 200, 'black mask', 20, 'blackmask', 'blackmask', 't-005', 'MSTS14759.jpg', '2020-09-22 04:00:00'),
(9, 'Black Mask ', 500, 'carbon mask', 20, 'blackmask', 'blackmask', 't-006', 'MSTSV14046.jpg', '2020-09-22 04:00:00'),
(10, 'black mask ', 1000, 'normal black mask', 5, 'blackmask', 'blackmask', 't-007', 'MSTSV14039.jpg', '2020-09-22 04:00:00'),
(12, 'Black mask ', 300, 'black mask', 10, 'blackmask', 'blackmask', 't-010', 'MSTSV14049.jpg', '2020-09-22 04:00:00'),
(13, 'nuclear mask', 2000, 'Best leather shoes', 10, 'nuclearmask', 'nuclearmask', 's-002', '8546789_5_.jpg', '2020-09-22 04:00:00'),
(14, 'Beautiful Mask', 2000, 'Nice Mask', 20, 'beautymask', 'beautymask', 'v-003', 'gbdl18_1.png', '2020-09-22 04:00:00'),
(15, 'Beautiful Mask', 300, 'Cool mask', 20, 'beautymask', 'beautymask', 'v-004', '101010_1_.jpg', '2020-09-22 04:00:00'),
(16, 'Beautiful Mask', 300, 'Mask', 15, 'beautymask', 'beautymask', 'v-005', 'image4_2.jpg', '2020-09-22 04:00:00'),
(17, 'Medical Mask', 100, 'Medical Mask', 10, 'medicalmask', 'medicalmask', 'u-005', 'mask2.jpg', '2020-09-22 04:00:00'),
(18, 'Medical Mask', 300, 'Doctors Mask', 20, 'medicalmask', 'medicalmask', 'u-007', '1881_G.jpg', '2020-09-22 04:00:00'),
(19, 'Medical Mask', 300, 'Doctors choice', 20, 'medicalmask', 'medicalmask', 'u-009', 'image5_1_2.jpg', '2020-09-22 04:00:00'),
(20, 'nuclear mask', 1200, 'Nuclear protecting mask', 23, 'nuclearmask', 'nuclearmask', 's-003', 'IMG_2429.jpg', '2020-09-22 04:00:00'),
(21, 'nuclear mask', 2000, 'very safe mask', 12, 'nuclearmask', 'nuclearmask', 's-004', 'G51A7054.jpg', '2020-09-22 04:00:00');

-- --------------------------------------------------------

--
-- 資料表結構 `product_level`
--

CREATE TABLE `product_level` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `lv1` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'no',
  `lv2` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'no',
  `lv3` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'no',
  `lv4` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'no',
  `lv5` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'no',
  `lv6` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'no',
  `lv7` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'no',
  `lv8` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'no',
  `lv9` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'no',
  `lv10` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'no',
  `lv11` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'no'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `product_level`
--

INSERT INTO `product_level` (`id`, `product_id`, `lv1`, `lv2`, `lv3`, `lv4`, `lv5`, `lv6`, `lv7`, `lv8`, `lv9`, `lv10`, `lv11`) VALUES
(1, 1, 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(2, 2, 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no'),
(3, 3, 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'yes'),
(4, 4, 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'no', 'no'),
(5, 5, 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(6, 6, 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(7, 7, 'yes', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(8, 8, 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(9, 9, 'yes', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(10, 10, 'yes', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(14, 14, 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'no', 'no'),
(12, 12, 'yes', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(13, 13, 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'yes'),
(15, 15, 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'yes', 'no', 'no', 'no'),
(16, 16, 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'no'),
(17, 17, 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no'),
(18, 18, 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no'),
(19, 19, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no'),
(20, 20, 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'yes', 'no'),
(21, 21, 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'yes', 'no', 'no');

-- --------------------------------------------------------

--
-- 資料表結構 `product_view`
--

CREATE TABLE `product_view` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `product_view`
--

INSERT INTO `product_view` (`id`, `user_id`, `product_id`, `date`) VALUES
(1, 9, 9, '2018-09-22 02:19:30'),
(2, 9, 7, '2018-09-27 02:47:43'),
(3, 9, 12, '2018-09-22 03:20:59'),
(4, 9, 10, '2018-09-29 03:07:11'),
(5, 9, 5, '2018-09-22 03:19:19'),
(6, 9, 8, '2018-09-21 15:57:50'),
(7, 9, 6, '2018-09-22 02:12:54'),
(8, 9, 1, '2018-09-22 03:03:36'),
(9, 16, 7, '2020-04-15 10:03:46'),
(10, 16, 12, '2020-04-20 09:41:44'),
(11, 16, 9, '2020-04-18 13:18:14'),
(12, 16, 5, '2020-04-20 09:42:22'),
(13, 16, 6, '2020-04-20 09:43:53'),
(14, 16, 8, '2020-04-15 10:10:28'),
(15, 16, 10, '2020-04-18 13:19:24'),
(16, 16, 1, '2020-04-18 13:28:11');

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `online` varchar(1) NOT NULL DEFAULT '0',
  `activation` varchar(3) NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `mobile`, `reg_time`, `online`, `activation`) VALUES
(20, 'martin0011', 'martin0011@hotmail.com', 'martin0011', '$5$rounds=535000$/6WzAdHafkEemx3X$si8p81KSS6d1jbEhWmCqvuY61qrEh2Q1KyuNiCgU5P3', '92870073', '2020-04-19 11:48:08', '0', 'yes'),
(17, 'adsf', 'asdf@asdf.com', 'asdf', '$5$rounds=535000$Bf3FOBnz7TJxGYbt$kayKRT/vyq3LBnpRCoeu3c7JwFQJsmRdcCUhgYkMwp.', '123456789123', '2020-04-18 06:20:58', '0', 'yes'),
(16, 'mattt', 'matt@gmail.com', 'matt', '$5$rounds=535000$uGKzTmj94UlY2bMc$Uitk6EdaNFJIUJGg5SsWgRRU3BhyyapvXPHBxvYsm/3', '123456789123', '2020-04-14 14:28:19', '1', 'yes');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `product_level`
--
ALTER TABLE `product_level`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `product_view`
--
ALTER TABLE `product_view`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_level`
--
ALTER TABLE `product_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_view`
--
ALTER TABLE `product_view`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
