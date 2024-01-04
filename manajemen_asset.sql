-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 04, 2024 at 10:44 AM
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
-- Database: `manajemen_asset`
--

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `user_id`, `name`, `image`, `description`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 2, 'XIR2', 'assets/B8gS3VUo5Uznany96ntyWHSQoR0EK58aaG3NRvFL.jpg', 'waktu 17 an', 2, '2024-01-04 03:40:22', '2024-01-04 03:40:22');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
(5, '2023_10_29_024119_create_assets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '54d836fd145392299fcd1af51df98192c365240927097203d96988fb296be383', '[\"*\"]', NULL, NULL, '2023-10-28 21:01:08', '2023-10-28 21:01:08'),
(2, 'App\\Models\\User', 2, 'auth_token', 'e010cd1bb48d8844a3af7cfbbbd3961f145f7156b512c2dd91b3db20e41d3192', '[\"*\"]', NULL, NULL, '2023-10-28 21:27:12', '2023-10-28 21:27:12'),
(3, 'App\\Models\\User', 3, 'auth_token', '517641abf775747495fa59e97ee63ffcc43a5220467c5d98b457210cbc4fa578', '[\"*\"]', NULL, NULL, '2023-10-28 23:04:38', '2023-10-28 23:04:38'),
(4, 'App\\Models\\User', 3, 'auth_token', '930928e426069682f6ccd7e30c8c1103aedd772768e76fcf88691353c29e2d63', '[\"*\"]', NULL, NULL, '2023-10-28 23:05:32', '2023-10-28 23:05:32'),
(5, 'App\\Models\\User', 4, 'auth_token', 'c17c9c2d53334fcbd2af3b5bcaef9dae2c9c305975cc1d8e2b6f99a17e8d8d2e', '[\"*\"]', '2023-10-28 23:40:13', NULL, '2023-10-28 23:39:14', '2023-10-28 23:40:13'),
(7, 'App\\Models\\User', 5, 'auth_token', '5a15dd06f55347f1f0562aef40396f284b901b32b898f76d019b50e9de4453f4', '[\"*\"]', NULL, NULL, '2023-10-29 02:05:50', '2023-10-29 02:05:50'),
(8, 'App\\Models\\User', 6, 'auth_token', 'd8f3beafdb18b8002b46427c6dadffe42a5f4030344bc3f8dbe87d74834dd9e4', '[\"*\"]', NULL, NULL, '2023-10-29 02:07:38', '2023-10-29 02:07:38'),
(9, 'App\\Models\\User', 7, 'auth_token', '8745e649c7d3c3c29890e5a2e3305ef327c35943278f15efd90bcd863ce0804a', '[\"*\"]', NULL, NULL, '2023-10-29 02:09:07', '2023-10-29 02:09:07'),
(10, 'App\\Models\\User', 7, 'auth_token', 'c0e0c4254d22850c569a8392aeb97bf1bdc74032f90c03014277de1b07cfd598', '[\"*\"]', NULL, NULL, '2023-10-29 02:19:48', '2023-10-29 02:19:48'),
(11, 'App\\Models\\User', 7, 'auth_token', '5f893ccac29df0ec80952936cbcff5edb7c90e898446c75b9361813df699e6d8', '[\"*\"]', NULL, NULL, '2023-10-29 02:32:02', '2023-10-29 02:32:02'),
(12, 'App\\Models\\User', 5, 'auth_token', '71f03d9972733ff15e961bf3215a12ef441ef7e94f60176ff16f8e31c00a0a99', '[\"*\"]', NULL, NULL, '2023-10-29 02:37:08', '2023-10-29 02:37:08'),
(13, 'App\\Models\\User', 5, 'auth_token', 'e2af8ad57f9f314c0ceaa3566ef870c414ce1d856b501e6ba8ad09838ebef13a', '[\"*\"]', NULL, NULL, '2023-10-29 02:38:19', '2023-10-29 02:38:19'),
(14, 'App\\Models\\User', 7, 'auth_token', 'cff6a2a85c8aeac29d57b8d00747b08861996dc64bac39e661b448d24c3e4811', '[\"*\"]', NULL, NULL, '2023-10-29 02:39:08', '2023-10-29 02:39:08'),
(15, 'App\\Models\\User', 7, 'auth_token', '2a968d4c9dec7bc80ab53edf331fca7d937baf8613c9224fd84ba10f12825617', '[\"*\"]', NULL, NULL, '2023-10-29 02:41:02', '2023-10-29 02:41:02'),
(17, 'App\\Models\\User', 5, 'auth_token', '4d791c9d6e3d792395c8f27542a92fc68a6e75a46ab0eafea090c5743d511055', '[\"*\"]', '2024-01-04 02:52:23', NULL, '2024-01-04 02:47:08', '2024-01-04 02:52:23'),
(18, 'App\\Models\\User', 5, 'auth_token', '6c42501438a413c1d1ebd8f8267e86ec47473cc3f9092c072e6f4291dbc6d6d1', '[\"*\"]', '2024-01-04 03:26:35', NULL, '2024-01-04 02:52:39', '2024-01-04 03:26:35'),
(19, 'App\\Models\\User', 9, 'auth_token', 'f1fa863c993a26c6572c6bcccf9064586218f8894b0ecba8e8ec7fcec893722b', '[\"*\"]', NULL, NULL, '2024-01-04 03:25:38', '2024-01-04 03:25:38'),
(20, 'App\\Models\\User', 1, 'auth_token', '9b6fa68afe42398a540a66c1140925adca6fbecc4904e44c745bd7a8438278e9', '[\"*\"]', NULL, NULL, '2024-01-04 03:39:22', '2024-01-04 03:39:22'),
(21, 'App\\Models\\User', 2, 'auth_token', 'a4a1f948960940aa8f3ca363ac4d0c016c96d438d67ff2b97b7760795678cf2b', '[\"*\"]', NULL, NULL, '2024-01-04 03:39:38', '2024-01-04 03:39:38'),
(22, 'App\\Models\\User', 2, 'auth_token', '5ebcc1cd7eae52848337b4905c03875408d16d1850319feb919679b39072f0a9', '[\"*\"]', '2024-01-04 03:40:23', NULL, '2024-01-04 03:39:57', '2024-01-04 03:40:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'alizaaa', 'aliza@gmail.com', NULL, '$2y$10$Lg7X70NWMkjtTAq5aZArseNRFA9c144P6S6yE8oa1pA2Er/KOrFCm', NULL, '2024-01-04 03:39:22', '2024-01-04 03:39:22'),
(2, 'sasa', 'sasa@gmail.com', NULL, '$2y$10$/oCCzL0ILNzRTNGlotJaIuz4ya3VaAy2ksFlIfxt5jFIEbdbK7wZK', NULL, '2024-01-04 03:39:38', '2024-01-04 03:39:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
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
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
