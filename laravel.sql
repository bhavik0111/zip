-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 01, 2023 at 08:58 AM
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
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `qty` int NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, 9, 1, 1, 0, '2023-04-30 07:14:40', '2023-04-30 07:14:40'),
(2, 9, 1, 1, 0, '2023-04-30 07:35:00', '2023-04-30 07:35:00'),
(3, 9, 1, 1, 0, '2023-04-30 07:41:43', '2023-04-30 07:41:43'),
(4, 9, 1, 1, 0, '2023-04-30 08:06:48', '2023-04-30 08:06:48'),
(5, 9, 1, 1, 0, '2023-04-30 08:48:38', '2023-04-30 08:48:38'),
(6, 9, 2, 1, 0, '2023-04-30 08:50:59', '2023-04-30 08:50:59'),
(7, 9, 1, 1, 0, '2023-04-30 09:03:24', '2023-04-30 09:03:24');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `description` longtext NOT NULL,
  `status` int NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `price`, `description`, `status`, `updated_at`, `created_at`) VALUES
(19, 'SAMSUNG', 'images/category_images/941966015.jpg', 12, '1212', 1, '2023-04-22 04:14:06', '2023-04-22 04:12:44'),
(25, 'Car', 'images/category_images/788670308.jfif', 800000, 'car is sold out', 1, '2023-04-22 08:28:22', '2023-04-22 08:28:22');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` bigint UNSIGNED NOT NULL,
  `doctor_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_phone_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `doctor_name`, `password`, `doctor_phone_no`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Bhavik Gondaliaya', '123456', '8956231471', 'bhavik@gmail.com', '2023-04-01 12:26:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_01_112324_create_register_table', 1),
(7, '2023_04_01_121633_create_doctor_table', 2),
(8, '2023_04_01_122657_create_timeslot_table', 3),
(9, '2023_04_13_053429_create_blogs_table', 4),
(10, '2023_04_22_130046_create_products_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` int NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `interest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `username`, `password`, `first_name`, `middle_name`, `last_name`, `email`, `phone_no`, `address`, `country`, `interest`, `created_at`, `updated_at`) VALUES
(1, 'admin@admin.com', '123456', 'qqa', 'm', 'm', 'mj@gmail.com', 121, 'hh', 'India', 'news,health', '2023-04-01 06:03:55', '2023-04-01 06:03:55'),
(2, 'abcd', '123456', 'dhara', 'ghsgh', 'patel', 'dhara@gmail.com', 454545, 'bxbb', 'India', 'news', '2023-04-01 06:13:49', '2023-04-01 06:13:49');

-- --------------------------------------------------------

--
-- Table structure for table `timeslot`
--

CREATE TABLE `timeslot` (
  `id` bigint UNSIGNED NOT NULL,
  `doctor_id` int NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timeslot`
--

INSERT INTO `timeslot` (`id`, `doctor_id`, `start_time`, `end_time`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '10:00:00', '13:00:00', '1', '2023-04-01 12:29:10', NULL),
(2, 1, '16:00:00', '19:00:00', '1', '2023-04-01 12:30:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `verify_acc` int NOT NULL DEFAULT '0',
  `is_admin` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `verify_acc`, `is_admin`) VALUES
(9, 'admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$rWdt6LM2t0RiXnA2jCqRzezS39IWwSw.coO0f4sevB2OItp4FlBLq', NULL, '2023-04-16 13:26:50', '2023-04-16 13:27:34', 1, 1),
(10, 'bhavu', 'bhavu', 'b@gmail.com', NULL, '$2y$10$/ZaSxYjc5UKukWfr5EkJw.NwAHhyRBsmnNohs/f3S94IEYH.PsfNW', NULL, '2023-04-29 06:02:09', '2023-04-29 06:02:09', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_addfeatures`
--
ALTER TABLE `products_addfeatures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timeslot`
--
ALTER TABLE `timeslot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products_addfeatures`
--
ALTER TABLE `products_addfeatures`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `timeslot`
--
ALTER TABLE `timeslot`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
