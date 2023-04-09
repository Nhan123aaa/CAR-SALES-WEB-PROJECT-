-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2020 at 12:49 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webbanxe`
--

-- --------------------------------------------------------

--
-- Table structure for table `image_library`
--

CREATE TABLE `image_library` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` float NOT NULL,
  `content` text NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `image`, `price`, `content`, `created_time`, `last_updated`) VALUES
(2, 'CBX - 150', 'uploads/11-12-2020/cb150-red(1).jpg', 100000000, '<p>Trẻ tr&acirc;u bao m&ecirc;, g&aacute;i xinh bao th&iacute;ch</p>\r\n', 1552615987, 1607694654),
(3, 'SH - trắng - 300cc', 'uploads/11-12-2020/sh300white.jpg', 1500000, '<p>D&acirc;n văn ph&ograve;ng ưa chuộng, đi kh&ocirc;ng hao xăng</p>\r\n', 1552615987, 1607694707),
(4, 'Wave S - xanh da trời', 'uploads/11-12-2020/wave-blue.jpg', 780000, '<p>Xe Wave S xanh dương nhạt, cho hiệu năng bốc đầu vượt trội....</p>\r\n', 1552615987, 1607694599),
(5, 'Wave S - đỏ', 'uploads/11-12-2020/wave-red.jpg', 657000, '<p>Xe m&aacute;y Wave S đỏ thiết kế gọn nhẹ, nhanh</p>\r\n', 1552615987, 1607694583),
(24, 'Wave S - đỏ', 'uploads/11-12-2020/wave-red.jpg', 657000, '<p>Xe m&aacute;y Wave S đỏ thiết kế gọn nhẹ, nhanh</p>\r\n', 1607694907, 1607694907),
(25, 'Wave S - đỏ', 'uploads/11-12-2020/wave-red.jpg', 657000, '<p>Xe m&aacute;y Wave S đỏ thiết kế gọn nhẹ, nhanh</p>\r\n', 1607694996, 1607694996),
(26, 'SH - trắng - 300cc', 'uploads/11-12-2020/sh300white.jpg', 1500000, '<p>D&acirc;n văn ph&ograve;ng ưa chuộng, đi kh&ocirc;ng hao xăng</p>\r\n', 1607694999, 1607694999),
(27, 'SH - trắng - 300cc', 'uploads/11-12-2020/sh300white.jpg', 1500000, '<p>D&acirc;n văn ph&ograve;ng ưa chuộng, đi kh&ocirc;ng hao xăng</p>\r\n', 1607695002, 1607695002),
(28, 'SH - trắng - 300cc', 'uploads/11-12-2020/sh300white.jpg', 1500000, '<p>D&acirc;n văn ph&ograve;ng ưa chuộng, đi kh&ocirc;ng hao xăng</p>\r\n', 1607695007, 1607695007),
(29, 'SH - trắng - 300cc', 'uploads/11-12-2020/sh300white.jpg', 1500000, '<p>D&acirc;n văn ph&ograve;ng ưa chuộng, đi kh&ocirc;ng hao xăng</p>\r\n', 1607695012, 1607695012),
(30, 'Wave S - xanh da trời', 'uploads/11-12-2020/wave-blue.jpg', 780000, '<p>Xe Wave S xanh dương nhạt, cho hiệu năng bốc đầu vượt trội....</p>\r\n', 1607695015, 1607695015),
(31, 'Wave S - xanh da trời', 'uploads/11-12-2020/wave-blue.jpg', 780000, '<p>Xe Wave S xanh dương nhạt, cho hiệu năng bốc đầu vượt trội....</p>\r\n', 1607695019, 1607695019);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `birthday` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `fullname`, `password`, `birthday`, `created_time`, `last_updated`) VALUES
(1, 'admin', 'Lư Thanh Trí', 'c4ca4238a0b923820dcc509a6f75849b', 1553185530, 1553185530, 1553185530),
(4, 'luthanhtri', 'Lư Thanh Trí', 'e10adc3949ba59abbe56e057f20f883e', 1607773249, 111, 111);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `image_library`
--
ALTER TABLE `image_library`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `image_library`
--
ALTER TABLE `image_library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `image_library`
--
ALTER TABLE `image_library`
  ADD CONSTRAINT `image_library_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
