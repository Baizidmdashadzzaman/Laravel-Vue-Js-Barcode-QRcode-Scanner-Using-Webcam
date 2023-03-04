-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2022 at 12:56 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel9_ajax_datatable`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `quantity` bigint(20) DEFAULT NULL,
  `total` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `name`, `image`, `description`, `price`, `quantity`, `total`, `created_at`, `updated_at`) VALUES
(21, 1, 'Hand bag', '/assets/images/items/3.jpg', NULL, 500.00, 1, 500.00, '2022-08-06 01:37:42', '2022-08-06 01:37:42'),
(22, 2, 'Iphone X', '/assets/images/items/4.jpg', NULL, 1000.00, 1, 1000.00, '2022-08-06 01:37:44', '2022-08-06 01:37:44'),
(23, 3, 'Blue chair', '/assets/images/items/6.jpg', NULL, 550.00, 1, 550.00, '2022-08-14 03:01:07', '2022-08-14 03:01:07');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_05_133725_create_products_table', 2),
(6, '2022_08_05_134357_create_carts_table', 2),
(7, '2022_08_05_134428_create_orders_table', 2),
(8, '2022_08_05_134455_create_order_products_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ordernumber` bigint(20) DEFAULT NULL,
  `total` double(8,2) DEFAULT NULL,
  `customername` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customerphone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `ordernumber`, `total`, `customername`, `customerphone`, `created_at`, `updated_at`) VALUES
(1, 170115129061, 4300.00, 'Zaman', '01676577631', '2022-08-06 00:18:33', '2022-08-06 00:18:33'),
(2, 416030691212, 2300.00, 'Demo', '01862420119', '2022-08-06 00:56:36', '2022-08-06 00:56:38'),
(3, 893822586973, 6500.00, 'Demo customer', '01862420119', '2022-08-06 01:35:43', '2022-08-06 01:35:43');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `quantity` bigint(20) DEFAULT NULL,
  `total` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `name`, `image`, `description`, `price`, `quantity`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 'Iphone X', '/assets/images/items/4.jpg', NULL, 1000.00, 1, 1000.00, '2022-08-06 00:18:33', '2022-08-06 00:18:33'),
(2, 1, 'Blue chair', '/assets/images/items/6.jpg', NULL, 550.00, 6, 3300.00, '2022-08-06 00:18:33', '2022-08-06 00:18:33'),
(3, 2, 'Digital watch', '/assets/images/items/7.jpg', NULL, 250.00, 1, 250.00, '2022-08-06 00:56:36', '2022-08-06 00:56:36'),
(4, 2, 'Blue chair', '/assets/images/items/6.jpg', NULL, 550.00, 1, 550.00, '2022-08-06 00:56:37', '2022-08-06 00:56:37'),
(5, 2, 'Iphone X', '/assets/images/items/4.jpg', NULL, 1000.00, 1, 1000.00, '2022-08-06 00:56:37', '2022-08-06 00:56:37'),
(6, 2, 'Hand bag', '/assets/images/items/3.jpg', NULL, 500.00, 1, 500.00, '2022-08-06 00:56:37', '2022-08-06 00:56:37'),
(7, 3, 'Hand bag', '/assets/images/items/3.jpg', NULL, 500.00, 1, 500.00, '2022-08-06 01:35:43', '2022-08-06 01:35:43'),
(8, 3, 'Iphone X', '/assets/images/items/4.jpg', NULL, 1000.00, 6, 6000.00, '2022-08-06 01:35:43', '2022-08-06 01:35:43');

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `description`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Hand bag', '/assets/images/items/3.jpg', NULL, 500.00, NULL, NULL),
(2, 'Iphone X', '/assets/images/items/4.jpg', NULL, 1000.00, NULL, NULL),
(3, 'Blue chair', '/assets/images/items/6.jpg', NULL, 550.00, NULL, NULL),
(4, 'Digital watch', '/assets/images/items/7.jpg', NULL, 250.00, NULL, NULL),
(5, 'Computer display', '/assets/images/items/comp.png', NULL, 100.00, NULL, NULL),
(6, 'Product-0', '/assets/images/items/3.jpg', NULL, 500.00, '2009-01-19 05:15:58', '1971-05-03 23:43:12'),
(7, 'Product-1', '/assets/images/items/3.jpg', NULL, 501.00, '2000-04-06 02:59:23', '1996-11-08 03:21:30'),
(8, 'Product-2', '/assets/images/items/3.jpg', NULL, 502.00, '1975-08-26 16:02:26', '1993-11-14 02:24:27'),
(9, 'Product-3', '/assets/images/items/3.jpg', NULL, 503.00, '2015-05-09 00:20:47', '1972-03-06 20:40:10'),
(10, 'Product-4', '/assets/images/items/3.jpg', NULL, 504.00, '1989-09-04 01:58:13', '2017-05-22 13:08:55'),
(11, 'Product-5', '/assets/images/items/3.jpg', NULL, 505.00, '1986-10-07 03:50:10', '1970-03-08 06:17:40'),
(12, 'Product-6', '/assets/images/items/3.jpg', NULL, 506.00, '2004-06-17 22:10:55', '2012-03-17 21:21:42'),
(13, 'Product-7', '/assets/images/items/3.jpg', NULL, 507.00, '2010-10-20 05:21:28', '1984-02-23 18:14:19'),
(14, 'Product-8', '/assets/images/items/3.jpg', NULL, 508.00, '2005-12-04 14:56:32', '2001-05-24 16:28:48'),
(15, 'Product-9', '/assets/images/items/3.jpg', NULL, 509.00, '2005-07-22 13:54:37', '1997-09-29 22:18:19'),
(16, 'Product-10', '/assets/images/items/3.jpg', NULL, 510.00, '1997-11-03 05:58:05', '2001-05-07 01:20:54'),
(17, 'Product-11', '/assets/images/items/3.jpg', NULL, 511.00, '2001-05-25 13:15:21', '2004-11-04 23:29:14'),
(18, 'Product-12', '/assets/images/items/3.jpg', NULL, 512.00, '1999-04-19 00:48:36', '1999-01-15 22:01:52'),
(19, 'Product-13', '/assets/images/items/3.jpg', NULL, 513.00, '1987-01-14 17:35:15', '1986-07-03 09:45:00'),
(20, 'Product-14', '/assets/images/items/3.jpg', NULL, 514.00, '1992-05-19 03:53:54', '1974-01-16 21:33:55'),
(21, 'Product-15', '/assets/images/items/3.jpg', NULL, 515.00, '1991-05-19 04:09:16', '2021-08-01 07:47:20'),
(22, 'Product-16', '/assets/images/items/3.jpg', NULL, 516.00, '1978-05-27 09:00:28', '1989-07-17 13:19:50'),
(23, 'Product-17', '/assets/images/items/3.jpg', NULL, 517.00, '1995-04-23 03:27:41', '1983-08-22 15:09:39'),
(24, 'Product-18', '/assets/images/items/3.jpg', NULL, 518.00, '1993-08-29 19:43:49', '1978-02-06 02:51:02'),
(25, 'Product-19', '/assets/images/items/3.jpg', NULL, 519.00, '1970-09-03 02:17:02', '1992-08-20 10:42:01'),
(26, 'Product-20', '/assets/images/items/3.jpg', NULL, 520.00, '1989-12-21 22:58:55', '1998-04-08 14:34:54'),
(27, 'Product-21', '/assets/images/items/3.jpg', NULL, 521.00, '1976-02-21 19:45:48', '2000-10-22 15:04:56'),
(28, 'Product-22', '/assets/images/items/3.jpg', NULL, 522.00, '2007-08-08 19:26:33', '2017-04-19 02:37:29'),
(29, 'Product-23', '/assets/images/items/3.jpg', NULL, 523.00, '1970-04-16 02:26:41', '2002-09-07 12:02:25'),
(30, 'Product-24', '/assets/images/items/3.jpg', NULL, 524.00, '2002-04-19 15:02:44', '1988-12-01 16:40:21'),
(31, 'Product-25', '/assets/images/items/3.jpg', NULL, 525.00, '2007-03-30 07:34:29', '1999-04-18 22:56:54'),
(32, 'Product-26', '/assets/images/items/3.jpg', NULL, 526.00, '2004-12-27 16:27:39', '2021-11-17 04:16:56'),
(33, 'Product-27', '/assets/images/items/3.jpg', NULL, 527.00, '2016-05-26 05:12:25', '1993-03-10 13:30:17'),
(34, 'Product-28', '/assets/images/items/3.jpg', NULL, 528.00, '2003-03-05 08:23:50', '1972-08-28 06:34:49'),
(35, 'Product-29', '/assets/images/items/3.jpg', NULL, 529.00, '1971-09-17 19:06:09', '1997-01-11 03:55:47'),
(36, 'Product-30', '/assets/images/items/3.jpg', NULL, 530.00, '1994-12-06 00:01:19', '2010-09-06 22:02:45'),
(37, 'Product-31', '/assets/images/items/3.jpg', NULL, 531.00, '1989-04-11 17:12:37', '1976-01-28 21:50:22'),
(38, 'Product-32', '/assets/images/items/3.jpg', NULL, 532.00, '2008-09-01 14:21:30', '1974-10-17 03:59:25'),
(39, 'Product-33', '/assets/images/items/3.jpg', NULL, 533.00, '1977-07-18 05:03:04', '1980-11-17 13:19:13'),
(40, 'Product-34', '/assets/images/items/3.jpg', NULL, 534.00, '2015-06-25 18:33:36', '2002-04-27 16:34:46'),
(41, 'Product-35', '/assets/images/items/3.jpg', NULL, 535.00, '1983-01-30 00:43:13', '2007-06-25 02:25:37'),
(42, 'Product-36', '/assets/images/items/3.jpg', NULL, 536.00, '2008-04-05 18:49:11', '1985-07-29 08:37:27'),
(43, 'Product-37', '/assets/images/items/3.jpg', NULL, 537.00, '2015-11-26 18:36:13', '2016-12-28 02:21:08'),
(44, 'Product-38', '/assets/images/items/3.jpg', NULL, 538.00, '1983-06-26 07:47:37', '2013-08-22 15:25:41'),
(45, 'Product-39', '/assets/images/items/3.jpg', NULL, 539.00, '1985-12-28 03:03:44', '1994-09-20 14:55:41'),
(46, 'Product-40', '/assets/images/items/3.jpg', NULL, 540.00, '1973-07-03 15:00:41', '1991-02-24 20:54:21'),
(47, 'Product-41', '/assets/images/items/3.jpg', NULL, 541.00, '1983-03-13 21:36:59', '1977-04-01 03:23:02'),
(48, 'Product-42', '/assets/images/items/3.jpg', NULL, 542.00, '1991-05-04 07:28:15', '1972-05-07 22:29:40'),
(49, 'Product-43', '/assets/images/items/3.jpg', NULL, 543.00, '1972-02-01 07:55:13', '1989-05-21 18:36:18'),
(50, 'Product-44', '/assets/images/items/3.jpg', NULL, 544.00, '1992-12-27 11:34:31', '1991-01-18 13:04:36'),
(51, 'Product-45', '/assets/images/items/3.jpg', NULL, 545.00, '2014-10-17 22:58:10', '1971-04-11 00:26:04'),
(52, 'Product-46', '/assets/images/items/3.jpg', NULL, 546.00, '1977-09-24 18:10:49', '1996-10-24 13:21:24'),
(53, 'Product-47', '/assets/images/items/3.jpg', NULL, 547.00, '1985-11-06 18:58:38', '2019-10-06 08:16:35'),
(54, 'Product-48', '/assets/images/items/3.jpg', NULL, 548.00, '2021-09-25 17:52:51', '1997-03-17 13:49:30'),
(55, 'Product-49', '/assets/images/items/3.jpg', NULL, 549.00, '1979-02-16 05:54:31', '2015-09-09 18:21:50'),
(56, 'Product-50', '/assets/images/items/3.jpg', NULL, 550.00, '2021-06-24 10:45:53', '2006-04-22 02:01:51'),
(57, 'Product-51', '/assets/images/items/3.jpg', NULL, 551.00, '1994-02-05 07:13:53', '2007-04-21 03:20:12'),
(58, 'Product-52', '/assets/images/items/3.jpg', NULL, 552.00, '2001-02-08 13:07:59', '1983-04-16 02:30:49'),
(59, 'Product-53', '/assets/images/items/3.jpg', NULL, 553.00, '2018-04-24 05:01:44', '1999-07-18 17:16:04'),
(60, 'Product-54', '/assets/images/items/3.jpg', NULL, 554.00, '2002-01-16 17:13:49', '2013-08-06 23:40:30'),
(61, 'Product-55', '/assets/images/items/3.jpg', NULL, 555.00, '2000-10-23 22:12:14', '1990-08-17 04:07:50'),
(62, 'Product-56', '/assets/images/items/3.jpg', NULL, 556.00, '1975-03-28 00:46:57', '2004-01-10 18:31:26'),
(63, 'Product-57', '/assets/images/items/3.jpg', NULL, 557.00, '1976-07-25 06:21:28', '2016-05-04 12:02:48'),
(64, 'Product-58', '/assets/images/items/3.jpg', NULL, 558.00, '2002-06-05 06:24:31', '1979-03-10 02:13:23'),
(65, 'Product-59', '/assets/images/items/3.jpg', NULL, 559.00, '1998-04-10 10:43:11', '1981-08-29 17:52:30'),
(66, 'Product-60', '/assets/images/items/3.jpg', NULL, 560.00, '2010-10-23 00:53:58', '1975-11-01 07:33:23'),
(67, 'Product-61', '/assets/images/items/3.jpg', NULL, 561.00, '2018-08-22 16:35:51', '2006-08-19 16:34:01'),
(68, 'Product-62', '/assets/images/items/3.jpg', NULL, 562.00, '1980-01-15 06:37:07', '1993-08-21 03:27:16'),
(69, 'Product-63', '/assets/images/items/3.jpg', NULL, 563.00, '2022-07-23 22:34:12', '1991-11-26 02:18:04'),
(70, 'Product-64', '/assets/images/items/3.jpg', NULL, 564.00, '2009-10-07 07:27:11', '1990-03-23 02:40:38'),
(71, 'Product-65', '/assets/images/items/3.jpg', NULL, 565.00, '1980-07-11 08:34:24', '1977-02-01 19:43:50'),
(72, 'Product-66', '/assets/images/items/3.jpg', NULL, 566.00, '2015-09-26 04:05:22', '1986-05-14 17:40:04'),
(73, 'Product-67', '/assets/images/items/3.jpg', NULL, 567.00, '1992-10-16 20:55:56', '2015-05-22 22:36:47'),
(74, 'Product-68', '/assets/images/items/3.jpg', NULL, 568.00, '1974-12-12 07:42:32', '1994-03-09 18:11:01'),
(75, 'Product-69', '/assets/images/items/3.jpg', NULL, 569.00, '2009-09-27 03:01:51', '1983-04-03 01:16:37'),
(76, 'Product-70', '/assets/images/items/3.jpg', NULL, 570.00, '1999-08-24 05:03:49', '1976-12-21 01:42:59'),
(77, 'Product-71', '/assets/images/items/3.jpg', NULL, 571.00, '1986-06-04 12:41:05', '1976-11-05 05:37:54'),
(78, 'Product-72', '/assets/images/items/3.jpg', NULL, 572.00, '2022-06-07 03:46:51', '1988-03-19 21:01:05'),
(79, 'Product-73', '/assets/images/items/3.jpg', NULL, 573.00, '1980-07-20 13:20:38', '2012-07-01 10:20:09'),
(80, 'Product-74', '/assets/images/items/3.jpg', NULL, 574.00, '1994-09-23 04:07:02', '1973-05-26 07:25:39'),
(81, 'Product-75', '/assets/images/items/3.jpg', NULL, 575.00, '1997-07-29 05:27:01', '2011-03-08 09:35:00'),
(82, 'Product-76', '/assets/images/items/3.jpg', NULL, 576.00, '1974-05-04 10:19:58', '2021-01-06 20:30:38'),
(83, 'Product-77', '/assets/images/items/3.jpg', NULL, 577.00, '2012-11-12 22:51:15', '1971-05-31 12:16:35'),
(84, 'Product-78', '/assets/images/items/3.jpg', NULL, 578.00, '2006-01-24 13:08:04', '2000-01-13 05:23:18'),
(85, 'Product-79', '/assets/images/items/3.jpg', NULL, 579.00, '1991-04-06 22:58:09', '1971-02-13 04:35:44'),
(86, 'Product-80', '/assets/images/items/3.jpg', NULL, 580.00, '1979-06-06 04:54:00', '1976-06-25 09:21:36'),
(87, 'Product-81', '/assets/images/items/3.jpg', NULL, 581.00, '1999-01-12 05:37:01', '1986-10-21 00:57:46'),
(88, 'Product-82', '/assets/images/items/3.jpg', NULL, 582.00, '1976-06-16 08:49:00', '1993-05-19 09:36:12'),
(89, 'Product-83', '/assets/images/items/3.jpg', NULL, 583.00, '2019-06-24 15:07:33', '1986-07-30 19:50:23'),
(90, 'Product-84', '/assets/images/items/3.jpg', NULL, 584.00, '2018-01-18 13:11:13', '1984-06-13 15:27:01'),
(91, 'Product-85', '/assets/images/items/3.jpg', NULL, 585.00, '1989-06-24 00:38:42', '2017-05-21 22:03:42'),
(92, 'Product-86', '/assets/images/items/3.jpg', NULL, 586.00, '1989-10-13 11:31:42', '1974-07-23 01:16:02'),
(93, 'Product-87', '/assets/images/items/3.jpg', NULL, 587.00, '2004-09-08 00:33:41', '2013-01-21 17:09:12'),
(94, 'Product-88', '/assets/images/items/3.jpg', NULL, 588.00, '2005-06-07 15:33:09', '1994-07-06 09:56:41'),
(95, 'Product-89', '/assets/images/items/3.jpg', NULL, 589.00, '2004-09-13 02:07:14', '1987-05-03 23:20:52'),
(96, 'Product-90', '/assets/images/items/3.jpg', NULL, 590.00, '2011-03-09 12:03:37', '1995-10-30 18:56:53'),
(97, 'Product-91', '/assets/images/items/3.jpg', NULL, 591.00, '2003-11-14 09:06:03', '1982-09-08 23:47:29'),
(98, 'Product-92', '/assets/images/items/3.jpg', NULL, 592.00, '2014-08-26 11:32:52', '1983-03-26 07:02:36'),
(99, 'Product-93', '/assets/images/items/3.jpg', NULL, 593.00, '1984-03-11 07:30:34', '2004-11-20 08:10:52'),
(100, 'Product-94', '/assets/images/items/3.jpg', NULL, 594.00, '1972-02-27 12:29:52', '2019-02-01 21:18:31'),
(101, 'Product-95', '/assets/images/items/3.jpg', NULL, 595.00, '2007-06-19 14:38:43', '2002-06-03 11:50:07'),
(102, 'Product-96', '/assets/images/items/3.jpg', NULL, 596.00, '2016-06-08 06:14:16', '1972-06-02 06:23:06'),
(103, 'Product-97', '/assets/images/items/3.jpg', NULL, 597.00, '2018-02-25 00:31:50', '1981-04-21 08:34:09'),
(104, 'Product-98', '/assets/images/items/3.jpg', NULL, 598.00, '1970-12-30 05:42:09', '2013-02-17 17:48:05'),
(105, 'Product-99', '/assets/images/items/3.jpg', NULL, 599.00, '2015-03-13 18:37:55', '2017-06-28 09:31:17'),
(106, 'Product-100', '/assets/images/items/3.jpg', NULL, 600.00, '1973-08-19 11:44:05', '2003-03-26 06:18:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
