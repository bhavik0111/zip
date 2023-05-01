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
-- Table structure for table `products_addfeatures`
--

CREATE TABLE `products_addfeatures` (
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products_addfeatures`
--

INSERT INTO `products_addfeatures` (`id`, `product_id`, `title`, `description`, `updated_at`, `created_at`) VALUES
(1, 9, 'add new', 'all over new ', '2023-04-29 04:55:40', '2023-04-29 04:55:40'),
(7, 2, 'sony', 'This has been upgraded from 1GB to 2GB for all activations after 10 April 2019. Supports 3G+ / 4G speed wherever available.', '2023-04-29 08:11:57', '2023-04-29 08:11:57'),
(10, 4, 'sa', 'This has been upgraded from 1GB to 2GB for all activations after 10 April 2019. Supports 3G+ / 4G speed wherever available.', '2023-04-29 08:13:52', '2023-04-29 08:13:52'),
(11, 4, 'enne', 'This has been upgraded from 1GB to 2GB for all activations after 10 April 2019. Supports 3G+ / 4G speed wherever available.', '2023-04-29 08:13:52', '2023-04-29 08:13:52'),
(12, 4, 'end', 'This has been upgraded from 1GB to 2GB for all activations after 10 April 2019. Supports 3G+ / 4G speed wherever available.', '2023-04-29 08:13:52', '2023-04-29 08:13:52'),
(13, 5, 'asad', 'This has been upgraded from 1GB to 2GB for all activations after 10 April 2019. Supports 3G+ / 4G speed wherever available.', '2023-04-29 08:14:29', '2023-04-29 08:14:29'),
(14, 6, 'sonny', 'This has been upgraded from 1GB to 2GB for all activations after 10 April 2019. Supports 3G+ / 4G speed wherever available.', '2023-04-29 08:15:03', '2023-04-29 08:15:03'),
(26, 10, 'samsung s7 altra', 'new shap', '2023-04-28 08:35:15', '2023-04-28 08:35:15'),
(27, 1, 'sony', 'This has been upgraded from 1GB to 2GB for all activations after 10 April 2019. Supports 3G+ / 4G speed wherever available.', '2023-04-29 05:28:03', '2023-04-29 05:28:03'),
(28, 1, 'TV', 'This has been upgraded from 1GB to 2GB for all activations after 10 April 2019. Supports 3G+ / 4G speed wherever available.This has been upgraded from 1GB to 2GB for all activations after 10 April 2019. Supports 3G+ / 4G speed wherever available.', '2023-04-29 05:28:03', '2023-04-29 05:28:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products_addfeatures`
--
ALTER TABLE `products_addfeatures`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products_addfeatures`
--
ALTER TABLE `products_addfeatures`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
