-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2019 at 01:19 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fothbeys`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_description`, `created_at`, `updated_at`) VALUES
(6, 'Drawings', NULL, '2018-12-20 23:52:20', '2019-04-29 22:41:30'),
(7, 'Paintings', NULL, '2018-12-20 23:52:29', '2019-04-29 22:41:57'),
(8, 'Sculptures', NULL, '2018-12-20 23:52:33', '2019-04-29 22:42:17'),
(9, 'Photographic Images', NULL, '2019-04-29 22:42:35', '2019-04-29 22:42:35'),
(10, 'Carvings', NULL, '2019-04-29 22:42:56', '2019-04-29 22:42:56');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_12_06_053545_create_categories_table', 1),
(4, '2018_12_11_052844_create_products_table', 2),
(5, '2018_12_16_052801_create_pages_table', 3),
(6, '2018_12_16_062122_change_columns_of_product', 4),
(7, '2018_12_16_062604_chnage_columns_of_product_real', 5),
(8, '2018_12_24_060954_add_column_user_type', 6),
(9, '2018_12_26_061506_create_wishlists_table', 7),
(10, '2018_12_27_055810_create_orders_table', 8),
(11, '2018_12_27_061941_add_status_in_order', 9),
(12, '2019_01_03_054543_changepricecolumntype', 10);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `location`, `items`, `user_id`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Bishal Mahat', 'the@subesh.com', '9941362836', 'Banepa Chowk', 'Tinkune, Near Kantipuar Hospital', 'a:2:{i:4;s:1:\"2\";i:5;s:1:\"3\";}', 3, '2018-12-27 00:31:41', '2019-01-02 00:36:24', 'cancelled'),
(2, 'Pasa Romak', 'pasa@romak.com', '87678678', 'chovar, Kathmandu', 'St Xavier College, Maitighar', 'a:2:{i:4;s:1:\"2\";i:5;s:1:\"3\";}', 3, '2018-12-27 00:32:50', '2018-12-27 00:32:50', 'pending'),
(3, 'The Subesh', 'the@subesh.com', '9941362836', 'Banepa Chowk', 'St Xavier College, Maitighar', 'a:1:{i:7;s:1:\"1\";}', 3, '2018-12-27 00:36:52', '2018-12-27 00:36:52', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Services', 'This is services pages', '2018-12-18 00:28:21', '2018-12-18 00:31:54'),
(2, 'About', 'About page', '2018-12-18 00:28:38', '2018-12-18 00:28:38');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `artist_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` date NOT NULL,
  `auction_date` date NOT NULL,
  `qty` bigint(20) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `dimensions` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` int(10) DEFAULT NULL,
  `materials` text COLLATE utf8mb4_unicode_ci,
  `medium` text COLLATE utf8mb4_unicode_ci,
  `type` text COLLATE utf8mb4_unicode_ci,
  `is_featured` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` int(10) DEFAULT NULL,
  `sold_by` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `artist_name`, `product_code`, `creation`, `auction_date`, `qty`, `image`, `price`, `detail`, `dimensions`, `weight`, `materials`, `medium`, `type`, `is_featured`, `is_verified`, `sold_by`, `category_id`, `created_at`, `updated_at`) VALUES
(10, 'Riwajasdadsa', 'A1234567', '2019-04-02', '2019-05-03', 50, '190430094950accessess.png', 15000, 'Made by pencil', '1500x1400', NULL, NULL, 'Pencil', NULL, 'yes', 1, 'abda Bastola', 6, '2019-04-30 01:01:01', '2019-04-30 12:35:37'),
(12, 'Abda', 'A1256467', '2019-01-01', '2019-05-04', 20, '19043005392441316575_1171391539668878_2136569504740671488_n.jpg', 15000, 'Made by pencil', '1500x1400 cm', 100, 'charcoal', 'Paint', NULL, 'yes', 1, 'riwaj', 10, '2019-04-30 11:54:24', '2019-04-30 12:36:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified` int(10) DEFAULT '0',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified`, `password`, `remember_token`, `created_at`, `updated_at`, `user_type`, `address`, `contact`, `image`) VALUES
(6, 'riwaj', 'riwaj@gmail.com', 1, 'riwaj123', 'DgHNVSl0OfelckCVdKNfTtmlm0BEjFmWjq5gKYkhPjVWMz1c8UvfE1x8rPhQ', '2019-04-29 04:04:04', '2019-04-30 11:23:47', 'admin', 'Dharan', '9842557886', '190430114305accessess.png'),
(9, 'hari', 'hari@gmail.com', 0, '$2y$10$b3ROl/kAGsbcpvB8Jm1iDeobPyzDrFh0WZ4O5kJ5OE0R/vNdlPpnG', NULL, '2019-04-30 06:07:25', '2019-04-30 06:07:25', 'Buyer', 'gokarna', '9851206053', '190430115225Capture1.PNG'),
(10, 'riwaj', 'eviroo@gmail.com', 0, '$2y$10$ciRPbMGJp3x5CftFUr.h8eblF4KudfaRgJsXbhIlMqH0FFj3ni/qm', 'Lpry0qwMbIvgR2c2X07fEA5RilhVDxX4Uzy9ffNeagdwQ9rYFV1YjMdSLAok', '2019-04-30 11:52:10', '2019-04-30 11:52:10', 'Seller', 'Koteshor', '9842557886', '19043005371039137814_717943695219455_2526838081823178752_n.jpg'),
(11, 'Riwaj Bastola', 'riwajbastola2010@gmail.com', 0, '$2y$10$nzc3OvpQjjHUghTno0z3cu.6.4yc4l4IlWEiolcMyunfYiOK/8EPa', 'NvfjCvpueA7hTxWfcVGXhIOpjWPGozpuPesaIHrp4mIQwgKg8hMJjIoqYZEO', '2019-05-05 16:13:12', '2019-05-05 16:13:12', 'Buyer', 'Dharan', '9842557886', '19050509581220180726_141852.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 6, 3, '2018-12-26 00:54:41', '2018-12-26 00:54:41'),
(6, 3, 3, '2018-12-26 00:54:45', '2018-12-26 00:54:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
