-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 01, 2023 at 09:14 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `category_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int NOT NULL,
  `colour` varchar(255) NOT NULL,
  `data` varchar(255) NOT NULL,
  `data_detail` longtext,
  `calls` varchar(255) NOT NULL,
  `calls_detail` longtext,
  `sms` varchar(255) NOT NULL,
  `sms_detail` longtext,
  `credit_validity` varchar(255) NOT NULL,
  `credit_validity_detail` longtext,
  `description` longtext NOT NULL,
  `status` int NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `image`, `price`, `colour`, `data`, `data_detail`, `calls`, `calls_detail`, `sms`, `sms_detail`, `credit_validity`, `credit_validity_detail`, `description`, `status`, `updated_at`, `created_at`) VALUES
(1, 19, 'samsung s11', 'images/product_images/96954558.jpg', 15000, '#dd2222', '1 year', 'This has been upgraded from 1GB to 2GB for all activations after 10 April 2019. Supports 3G+ / 4G speed wherever available.', 'call', 'This package has been upgraded from 3GB to 4GB for all activations after 10 April 2019. Supports 3G+ / 4G speed wherever available.', 'sms', 'This package has been upgraded from 5GB to 6GB for all activations after 10 April 2019. Supports 3G+ / 4G speed wherever available.', 'credite', 'This package has been upgraded from 7GB to 8GB for all activations after 10 April 2019. Supports 3G+ / 4G speed wherever available.', 'one lance available', 1, '2023-04-29 05:28:03', '2023-04-27 00:35:03'),
(2, 25, 'sony', 'images/product_images/1130098956.jpeg', 28000, '#000000', '123', 'This has been upgraded from 1GB to 2GB for all activations after 10 April 2019. Supports 3G+ / 4G speed wherever available.', 'calls', 'This has been upgraded from 1GB to 2GB for all activations after 10 April 2019. Supports 3G+ / 4G speed wherever available.', 'msg', 'This has been upgraded from 1GB to 2GB for all activations after 10 April 2019. Supports 3G+ / 4G speed wherever available.', '1 year', 'This has been upgraded from 1GB to 2GB for all activations after 10 April 2019. Supports 3G+ / 4G speed wherever available.', 'sony hd', 1, '2023-04-29 08:11:57', '2023-04-27 01:00:27'),
(3, 19, 'hp', 'images/product_images/1153311186.jpeg', 62000, '#000000', 'aaaaaaaaaaa', 'This has been upgraded from 1GB to 2GB for all activations after 10 April 2019. Supports 3G+ / 4G speed wherever available.', 'as', 'This has been upgraded from 1GB to 2GB for all activations after 10 April 2019. Supports 3G+ / 4G speed wherever available.', 'sss', 'This has been upgraded from 1GB to 2GB for all activations after 10 April 2019. Supports 3G+ / 4G speed wherever available.', 'credite', 'This has been upgraded from 1GB to 2GB for all activations after 10 April 2019. Supports 3G+ / 4G speed wherever available.', '512 ssd', 1, '2023-04-29 08:13:16', '2023-04-27 04:40:35'),
(4, 19, 'series seven', 'images/product_images/139570338.jpeg', 5010100, '#000000', 'TV', 'This has been upgraded from 1GB to 2GB for all activations after 10 April 2019. Supports 3G+ / 4G speed wherever available.', 'TV', 'This has been upgraded from 1GB to 2GB for all activations after 10 April 2019. Supports 3G+ / 4G speed wherever available.', 'msg', 'This has been upgraded from 1GB to 2GB for all activations after 10 April 2019. Supports 3G+ / 4G speed wherever available.', '133', 'This has been upgraded from 1GB to 2GB for all activations after 10 April 2019. Supports 3G+ / 4G speed wherever available.', 'all brand available', 1, '2023-04-29 08:13:52', '2023-04-27 04:44:24'),
(5, 19, 'charger', 'images/product_images/2021727664.jpeg', 2000, '#000000', '123', 'This has been upgraded from 1GB to 2GB for all activations after 10 April 2019. Supports 3G+ / 4G speed wherever available.', 'ca', 'This has been upgraded from 1GB to 2GB for all activations after 10 April 2019. Supports 3G+ / 4G speed wherever available.', 'sas', 'This has been upgraded from 1GB to 2GB for all activations after 10 April 2019. Supports 3G+ / 4G speed wherever available.', 'cs', 'This has been upgraded from 1GB to 2GB for all activations after 10 April 2019. Supports 3G+ / 4G speed wherever available.', '1 year wsaarranty', 1, '2023-04-29 08:14:29', '2023-04-27 04:46:10'),
(6, 19, 'LG', 'images/product_images/1490641845.jpeg', 45000, '#000000', '123', 'This has been upgraded from 1GB to 2GB for all activations after 10 April 2019. Supports 3G+ / 4G speed wherever available.', 'calllss', 'This has been upgraded from 1GB to 2GB for all activations after 10 April 2019. Supports 3G+ / 4G speed wherever available.', 'smsss', 'This has been upgraded from 1GB to 2GB for all activations after 10 April 2019. Supports 3G+ / 4G speed wherever available.', 'credit', 'This has been upgraded from 1GB to 2GB for all activations after 10 April 2019. Supports 3G+ / 4G speed wherever available.', 'LG ne model 56 inch tv', 1, '2023-04-29 08:15:03', '2023-04-27 04:50:22'),
(9, 19, 'TV', 'images/product_images/492655341.jpeg', 1212, '#000000', 'TV', 'TV', 'TV', 'TV', 'TV', 'TV', 'TV', 'TV', 'TV', 1, '2023-04-29 07:01:23', '2023-04-29 04:55:40'),
(10, 19, 'samsung', 'images/product_images/1103805122.png', 15000, '#000000', '1 gb', '1 year packasge', 'unlimited', 'all', '100sms per day', '0 charge', '1 day', '24 hours', 'no any else', 1, '2023-04-29 08:07:04', '2023-04-29 07:49:28'),
(11, 25, 'snjdjk', 'images/product_images/167962524.jfif', 45, '#a11717', 'DC', '<p>DS</p>', 'DDS', '<p>NKNK</p>', 'NNKN', '<p>KKLNK</p>', 'KJJNKL', '<p>JKJMKL</p>', '<p>NJNK</p>', 1, '2023-04-29 05:29:42', '2023-04-29 05:29:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
