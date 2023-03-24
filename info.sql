-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2023 at 07:17 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `info`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_23_064749_create__userinfo_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_userinfo`
--

CREATE TABLE `_userinfo` (
  `uid` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `zip` varchar(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_userinfo`
--

INSERT INTO `_userinfo` (`uid`, `fname`, `lname`, `email`, `password`, `address`, `city`, `state`, `zip`, `created_at`, `updated_at`) VALUES
(1, 'sahil', 'pathan', 'sahil@gmail.com', 'Sahil', 'Dhoraji', 'Dhoraji', 'Gujarat', '360410', NULL, NULL),
(2, 'aftab', 'Pathan', 'aftab@gmail.com', '$2y$10$hzLn2ys4QqQZs7XfEXFE0uNMD4YzaBWjtF/dMO0pxdPUmXSvTvfH6', 'dhoraji', 'Dhoraji', 'Gujarat', '360410', '2023-03-23 02:08:48', '2023-03-23 02:08:48'),
(3, 'raj', 'pesavariya', 'raj@gmail.com', '$2y$10$N03HzF9TfNhLhx4w4Bf54OebdO0Yinu.V.i6mWzrgkBOpxmkLt7om', 'jetpur', 'jetpur', 'Gujarat', '360470', '2023-03-23 02:09:46', '2023-03-23 02:09:46'),
(4, 'raj', 'pesavariya', 'raj@gmail.com', '$2y$10$jUugNIts1gd88mAk3Bd5f.JtvJ8O2LZB69yVczssucr1XIeXTeJ7u', 'jetpur', 'jetpur', 'Gujarat', '360470', '2023-03-23 02:16:54', '2023-03-23 02:16:54'),
(5, 'tejas', 'pandya', 'tejas@gmail.com', '$2y$10$70W0E2ojl8EE30vc2QjsnuDw6iEVac.daoz5zqYuYxvbvoiVi.Yjm', 'jetpur', 'jetpur', 'Gujarat', '360470', '2023-03-23 02:30:03', '2023-03-23 02:30:03'),
(6, 'Bhauvtik', 'Thumar', 'Thumar@gmail.com', '$2y$10$jCuBVQGMmCNmMobFeN4bo.OgBPXEg6VmmyUmbYz0UykxDuX6Uz58G', 'charaniya', 'charaniya', 'Gujarat', '360420', '2023-03-23 03:07:53', '2023-03-23 03:07:53'),
(7, 'testing', 'error', 'test@gmail.com', '$2y$10$QVrSmWmupLq2R/d54Vkp5.cxfRx/7Odb33ZQgkXJZ5wVVnD7m4.PS', 'test', 'test', 'Karnataka', '54634', '2023-03-23 04:57:14', '2023-03-23 04:57:14'),
(8, 'testing', 'error', 'test@gmail.com', '$2y$10$0aKRIP/hWP0wouX8qKYh.O3uNrzF8sZpDnDQ5UWUlo.cxzYPlTkUq', 'test', 'test', 'Karnataka', '54634', '2023-03-23 04:57:41', '2023-03-23 04:57:41'),
(9, 'testing', 'error', 'test@gmail.com', '$2y$10$h8f9YV9DaFRFjop4aKwPiuKnqj.PmYhiN4D1.bWFOBbQJR0KdLshG', 'test', 'test', 'Karnataka', '54634', '2023-03-23 04:57:59', '2023-03-23 04:57:59'),
(10, 'te', 'error', 'test@gmail.com', '$2y$10$6u9JH8dQAaLfCTVM25NWFu6MUSqxLAOXOjSlQBFj18bBWGisgX0u.', 'sasa', 'sasa', 'Gujarat', '54634', '2023-03-23 04:58:51', '2023-03-23 04:58:51'),
(11, 'testing', 'sasasa', 'test@gmail.com', '$2y$10$J9f75GFrnXU583xRm0xX1OUUdI4SHjj5X/Pw99Mq5uRuacf21la.6', 'sasa', 'hii', 'Gujarat', '54634', '2023-03-23 05:01:10', '2023-03-23 05:01:10'),
(12, 'hii', 'hello', 'test@gmail.com', '$2y$10$5gDHbhHaAlj9RlhNnId4WOMJ7A9aeHM3hGHy.CkIAXQVDKnijHUUm', 'sasa', 'hii', 'Gujarat', '54634', '2023-03-23 05:02:38', '2023-03-23 05:02:38'),
(13, 'one', 'two', 'one@gmail.com', '$2y$10$G0P.Gam0PWK4KYFXvWIC4u2hsaXh6TF8nP.mkfw24YowIdJ2vRL2.', 'one', 'one', 'Goa', '360410', '2023-03-23 23:04:35', '2023-03-23 23:04:35'),
(14, 'hii', 'hello', 'test@gmail.com', '$2y$10$/j/rMZBAsqC9lq/Wom/FeeAhGORaCfxmjj4RAE.Pzf4W.mKjZCMHW', 'hello', 'hii', 'Gujarat', '360410', '2023-03-23 23:17:06', '2023-03-23 23:17:06');

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
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
-- Indexes for table `_userinfo`
--
ALTER TABLE `_userinfo`
  ADD PRIMARY KEY (`uid`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `_userinfo`
--
ALTER TABLE `_userinfo`
  MODIFY `uid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
