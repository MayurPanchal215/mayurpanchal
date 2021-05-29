-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 29, 2021 at 10:25 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `houzeo`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2021_05_25_044427_add_new_fiels_users_tablw', 2),
(8, '2021_05_25_051322_create_product_table', 2),
(9, '2021_05_25_051759_create_product_categry_table', 2),
(10, '2021_05_25_051941_create_product_sub_categry_table', 2),
(11, '2021_05_26_064538_add_new_fields_user_table', 3),
(12, '2019_08_19_000000_create_failed_jobs_table', 4),
(13, '2021_05_29_085300_create_table_order', 4);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `product_id`, `price`, `created_at`, `updated_at`) VALUES
(1, 5, 4, 22.00, '2021-05-29 04:49:21', '2021-05-29 04:49:21'),
(2, 5, 4, 22.00, '2021-05-29 04:49:21', '2021-05-29 04:49:21'),
(3, 5, 4, 22.00, '2021-05-29 04:49:21', '2021-05-29 04:49:21'),
(4, 5, 4, 22.00, '2021-05-29 04:49:33', '2021-05-29 04:49:33'),
(5, 5, 4, 22.00, '2021-05-29 04:49:33', '2021-05-29 04:49:33'),
(6, 5, 4, 22.00, '2021-05-29 04:49:33', '2021-05-29 04:49:33'),
(7, 5, 4, 22.00, '2021-05-29 04:49:55', '2021-05-29 04:49:55'),
(8, 5, 4, 22.00, '2021-05-29 04:51:06', '2021-05-29 04:51:06');

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
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` double(8,2) DEFAULT NULL,
  `product_image` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `category_id`, `sub_category_id`, `description`, `price`, `product_image`, `status`, `created_at`, `updated_at`) VALUES
(4, 'test', 1, 1, NULL, 22.00, '739bff94efe82f06846f48f4efb0505b.png', 1, NULL, NULL),
(5, 'Mayur', 2, 3, NULL, 222.00, '5dc51f2d2ef614e6d2d0a1b774a1a7a7.png', 1, NULL, NULL),
(6, 'Pan', 2, 5, NULL, 9090.00, 'fdeeca02fedaa1f1e62fc3a46888fa01.png', 1, NULL, NULL),
(9, 'saad', 3, 8, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage.', 1222.00, '6990fb201c8b4a6e5acaa82352212572.png', 1, NULL, NULL),
(10, 'test', 1, 1, NULL, 22.00, 'd4575eeca3755eef0bd4013cb7c9960c.png', 1, NULL, NULL),
(12, 'VAodara as', 1, 2, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 22.00, 'e5bd77bf47a9bb9d0d3c231117641d12.jpg', 1, NULL, NULL),
(13, 'adsa', 1, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting.', 11.00, '7159ef8f3c6f3daf16dbbafb7e8fb882.png', 1, NULL, NULL),
(14, 'test active', 2, 3, NULL, 111.00, 'd31bd594b34e01e1b0aafadc041062cc.png', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `cat_name`, `created_at`, `updated_at`) VALUES
(1, 'Mobile', NULL, NULL),
(2, 'Car', NULL, NULL),
(3, 'Refrigerator', NULL, NULL),
(4, 'Clothes', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_sub_categry`
--

CREATE TABLE `product_sub_categry` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `sub_cat_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sub_categry`
--

INSERT INTO `product_sub_categry` (`id`, `cat_id`, `sub_cat_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Samsung', NULL, NULL),
(2, 1, 'Apple', NULL, NULL),
(3, 2, 'Maruti', NULL, NULL),
(4, 2, 'Tesla', NULL, NULL),
(5, 2, 'Tata', NULL, NULL),
(6, 2, 'Hyundai', NULL, NULL),
(7, 2, 'TATA', NULL, NULL),
(8, 3, 'LG', NULL, NULL),
(9, 3, 'Onida', NULL, NULL),
(10, 4, 'Arvind', NULL, NULL),
(11, 4, 'Arrow', NULL, NULL),
(12, 4, 'Raymond', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`, `username`, `language`, `currency`, `status`) VALUES
(1, 'Mayur', 'mayurpanchal215@gmail.com', NULL, '$2y$10$CV4oJLGua9HZJkLRDbnU1.2h9HXWZF7rGpBVsrjvflhldIu6A4282', 'Uf7oYYXIQ2oroNzp9UPAdHPHw0kJmyKsfh8Y4fjqgzb7JlqvYIDIsojJRBOt', '2021-05-24 23:38:21', '2021-05-24 23:38:21', 'Shop', NULL, 'en', 'USD', 1),
(2, 'Shop1', 'user1@devrepublic.nl', NULL, '$2y$10$Alen3xFiSyRm29g53gCpNusuvdO6VB65EHf.xbPs.8B/Lz5p6281.', 'ZM2Ytsv7UDtoQhqQwXc7oQ6e4fQafHPBHjbINwfXi3BxplYSp7DGYxI86nRg', '2021-05-26 01:23:01', '2021-05-26 01:23:01', 'User', NULL, 'nl', 'EUR', 1),
(3, 'Shop1', 'shop1@devrepublic.nl', NULL, '$2y$10$oOf8rWuc0nl0MWrYZrWjpOlLMzJONRn61C4wdNsRjPci9vgyHrgcG', NULL, NULL, NULL, 'Shop', 'shop1', 'en', 'USD', 1),
(4, 'Shop2', 'shop2@devrepublic.nl', NULL, '$2y$10$oOf8rWuc0nl0MWrYZrWjpOlLMzJONRn61C4wdNsRjPci9vgyHrgcG', NULL, NULL, NULL, 'Shop', 'shop2', 'en', 'USD', 1),
(5, 'User2', 'user2@devrepublic.nl', NULL, '$2y$10$oOf8rWuc0nl0MWrYZrWjpOlLMzJONRn61C4wdNsRjPci9vgyHrgcG', NULL, NULL, NULL, 'User', 'user1', 'nl', 'EUR', 1);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sub_categry`
--
ALTER TABLE `product_sub_categry`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_sub_categry`
--
ALTER TABLE `product_sub_categry`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
