-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2019 at 07:11 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `bisalcommerce`
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
(6, 'Mens', NULL, '2018-12-20 23:52:20', '2018-12-20 23:52:20'),
(7, 'Womens', NULL, '2018-12-20 23:52:29', '2018-12-20 23:52:29'),
(8, 'Kids', NULL, '2018-12-20 23:52:33', '2018-12-20 23:52:33');

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
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` bigint(20) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `discount` bigint(20) DEFAULT NULL,
  `is_featured` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `qty`, `image`, `price`, `detail`, `discount`, `is_featured`, `category_id`, `created_at`, `updated_at`) VALUES
(3, 'Levi\'s Sidebag A101', 5, '181221054018gallery4.jpg', 2000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec urna ligula, dignissim quis condimentum eget, elementum ac metus. Phasellus suscipit enim id suscipit tincidunt. Donec ex nunc, porta id turpis ac, commodo rhoncus urna. Nulla pulvinar enim et urna sodales, eget accumsan massa fringilla. Nulla tincidunt, enim et egestas egestas, dolor risus eleifend est, porta pharetra augue lectus sed diam. Phasellus tristique pulvinar ultricies. Donec aliquet erat eu dui commodo, posuere ullamcorper massa mattis. Nulla diam dui, porttitor non nisi a, bibendum pellentesque ante. Nullam porttitor ex sit amet ipsum mattis ultricies. In mollis, purus a ultricies molestie, mauris mauris varius ex, ac iaculis quam nunc ac nunc. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque et mi quis tortor porttitor finibus ut id tortor. Mauris laoreet ipsum quis sapien iaculis, at auctor lectus sagittis. Vivamus interdum nulla at mi rutrum, eu fermentum ligula rhoncus.', 5, 'yes', 7, '2018-12-20 23:55:18', '2018-12-20 23:55:18'),
(4, 'Polo Tshirt V Neck', 50, '181221054106gallery2.jpg', 800, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec urna ligula, dignissim quis condimentum eget, elementum ac metus. Phasellus suscipit enim id suscipit tincidunt. Donec ex nunc, porta id turpis ac, commodo rhoncus urna. Nulla pulvinar enim et urna sodales, eget accumsan massa fringilla. Nulla tincidunt, enim et egestas egestas, dolor risus eleifend est, porta pharetra augue lectus sed diam. Phasellus tristique pulvinar ultricies. Donec aliquet erat eu dui commodo, posuere ullamcorper massa mattis. Nulla diam dui, porttitor non nisi a, bibendum pellentesque ante. Nullam porttitor ex sit amet ipsum mattis ultricies. In mollis, purus a ultricies molestie, mauris mauris varius ex, ac iaculis quam nunc ac nunc. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque et mi quis tortor porttitor finibus ut id tortor. Mauris laoreet ipsum quis sapien iaculis, at auctor lectus sagittis. Vivamus interdum nulla at mi rutrum, eu fermentum ligula rhoncus.', 0, 'yes', 6, '2018-12-20 23:56:06', '2018-12-20 23:56:06'),
(5, 'Ray Ban Aviator 5', 40, '181221063935gallery4.jpg', 2000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec urna ligula, dignissim quis condimentum eget, elementum ac metus. Phasellus suscipit enim id suscipit tincidunt. Donec ex nunc, porta id turpis ac, commodo rhoncus urna. Nulla pulvinar enim et urna sodales, eget accumsan massa fringilla. Nulla tincidunt, enim et egestas egestas, dolor risus eleifend est, porta pharetra augue lectus sed diam. Phasellus tristique pulvinar ultricies. Donec aliquet erat eu dui commodo, posuere ullamcorper massa mattis. Nulla diam dui, porttitor non nisi a, bibendum pellentesque ante. Nullam porttitor ex sit amet ipsum mattis ultricies. In mollis, purus a ultricies molestie, mauris mauris varius ex, ac iaculis quam nunc ac nunc. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque et mi quis tortor porttitor finibus ut id tortor. Mauris laoreet ipsum quis sapien iaculis, at auctor lectus sagittis. Vivamus interdum nulla at mi rutrum, eu fermentum ligula rhoncus.', 5, 'yes', 6, '2018-12-20 23:56:59', '2018-12-21 00:54:35'),
(6, 'T shirt Ladies 5', 10, '181221054258product5.jpg', 1200, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec urna ligula, dignissim quis condimentum eget, elementum ac metus. Phasellus suscipit enim id suscipit tincidunt. Donec ex nunc, porta id turpis ac, commodo rhoncus urna. Nulla pulvinar enim et urna sodales, eget accumsan massa fringilla. Nulla tincidunt, enim et egestas egestas, dolor risus eleifend est, porta pharetra augue lectus sed diam. Phasellus tristique pulvinar ultricies. Donec aliquet erat eu dui commodo, posuere ullamcorper massa mattis. Nulla diam dui, porttitor non nisi a, bibendum pellentesque ante. Nullam porttitor ex sit amet ipsum mattis ultricies. In mollis, purus a ultricies molestie, mauris mauris varius ex, ac iaculis quam nunc ac nunc. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque et mi quis tortor porttitor finibus ut id tortor. Mauris laoreet ipsum quis sapien iaculis, at auctor lectus sagittis. Vivamus interdum nulla at mi rutrum, eu fermentum ligula rhoncus.', 0, 'no', 7, '2018-12-20 23:57:58', '2018-12-20 23:57:58'),
(7, 'Polo Tshirt V Neck', 50, '181221054106gallery2.jpg', 800, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec urna ligula, dignissim quis condimentum eget, elementum ac metus. Phasellus suscipit enim id suscipit tincidunt. Donec ex nunc, porta id turpis ac, commodo rhoncus urna. Nulla pulvinar enim et urna sodales, eget accumsan massa fringilla. Nulla tincidunt, enim et egestas egestas, dolor risus eleifend est, porta pharetra augue lectus sed diam. Phasellus tristique pulvinar ultricies. Donec aliquet erat eu dui commodo, posuere ullamcorper massa mattis. Nulla diam dui, porttitor non nisi a, bibendum pellentesque ante. Nullam porttitor ex sit amet ipsum mattis ultricies. In mollis, purus a ultricies molestie, mauris mauris varius ex, ac iaculis quam nunc ac nunc. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque et mi quis tortor porttitor finibus ut id tortor. Mauris laoreet ipsum quis sapien iaculis, at auctor lectus sagittis. Vivamus interdum nulla at mi rutrum, eu fermentum ligula rhoncus.', 0, 'yes', 6, '2018-12-20 23:56:06', '2018-12-20 23:56:06'),
(8, 'Levi\'s Sidebag A101', 5, '181221054018gallery4.jpg', 2000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec urna ligula, dignissim quis condimentum eget, elementum ac metus. Phasellus suscipit enim id suscipit tincidunt. Donec ex nunc, porta id turpis ac, commodo rhoncus urna. Nulla pulvinar enim et urna sodales, eget accumsan massa fringilla. Nulla tincidunt, enim et egestas egestas, dolor risus eleifend est, porta pharetra augue lectus sed diam. Phasellus tristique pulvinar ultricies. Donec aliquet erat eu dui commodo, posuere ullamcorper massa mattis. Nulla diam dui, porttitor non nisi a, bibendum pellentesque ante. Nullam porttitor ex sit amet ipsum mattis ultricies. In mollis, purus a ultricies molestie, mauris mauris varius ex, ac iaculis quam nunc ac nunc. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque et mi quis tortor porttitor finibus ut id tortor. Mauris laoreet ipsum quis sapien iaculis, at auctor lectus sagittis. Vivamus interdum nulla at mi rutrum, eu fermentum ligula rhoncus.', 5, 'yes', 7, '2018-12-20 23:55:18', '2018-12-20 23:55:18'),
(9, 'Polo Tshirt V Neck', 50, '181221054106gallery2.jpg', 800, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec urna ligula, dignissim quis condimentum eget, elementum ac metus. Phasellus suscipit enim id suscipit tincidunt. Donec ex nunc, porta id turpis ac, commodo rhoncus urna. Nulla pulvinar enim et urna sodales, eget accumsan massa fringilla. Nulla tincidunt, enim et egestas egestas, dolor risus eleifend est, porta pharetra augue lectus sed diam. Phasellus tristique pulvinar ultricies. Donec aliquet erat eu dui commodo, posuere ullamcorper massa mattis. Nulla diam dui, porttitor non nisi a, bibendum pellentesque ante. Nullam porttitor ex sit amet ipsum mattis ultricies. In mollis, purus a ultricies molestie, mauris mauris varius ex, ac iaculis quam nunc ac nunc. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque et mi quis tortor porttitor finibus ut id tortor. Mauris laoreet ipsum quis sapien iaculis, at auctor lectus sagittis. Vivamus interdum nulla at mi rutrum, eu fermentum ligula rhoncus.', 0, 'yes', 6, '2018-12-20 23:56:06', '2018-12-20 23:56:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `user_type`) VALUES
(1, 'The Subesh', 'admin@admin.com', NULL, '$2y$10$wrc/byd/d921QfNGDoG3kOH8NgFLLty36G40HcfW9XtmzjPZGdV.i', 'KrXp3juVExtzXnkSKkQoPw44u2vwt4Cc035oQhgF5Rdp7idcU7PETFdvIJWj', '2018-12-17 00:26:07', '2018-12-17 00:26:07', 'admin'),
(3, 'The Subesh', 'the@subesh.com', NULL, '$2y$10$xtvIIol/td9.0JvYP7kIJukmYzegPkdYcMdEa50Ar0okTgcnW1gE6', 'ugZoEQENxUdnU470WMNQ2NXdbHsBooELoAeNZTQmNQXnmRd44ddLwQ2948sj', '2018-12-24 23:52:13', '2018-12-25 00:19:33', 'customer'),
(4, 'Bishal Mahat', 'bisal@mahat.com', NULL, '$2y$10$uKOhtLm7atNVn1SF4wj1R.GsrT3zPF485okX1OoOH5PbDAMSQ5JDq', 'DZ3FizVX8mBhVyaXigRvhJIoocoBrfp5BRtcmIsrHbBk6HQ8K075QqOBh9JH', '2018-12-27 00:00:11', '2018-12-27 00:01:13', 'admin');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;
