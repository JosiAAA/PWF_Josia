-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2023 at 04:50 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pwf_bandara`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `komentar` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `nama`, `komentar`, `tanggal`) VALUES
(1, 'josia', 'tes', 'October 10, 2023'),
(2, 'budi', '1', 'October 10, 2023'),
(3, 'josia', 'mantap', 'October 10, 2023'),
(4, 'windah', 'gg gaming', 'October 10, 2023');

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
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id` int(10) UNSIGNED NOT NULL,
  `maskapai` varchar(255) NOT NULL,
  `destinasi` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `jam` varchar(255) NOT NULL,
  `gate` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id`, `maskapai`, `destinasi`, `tanggal`, `jam`, `gate`) VALUES
(1, 'GARUDA', 'SAMARINDA-SURABAYA', '2023-09-26', '18:00 WITA', 'A'),
(2, 'BATIK AIR', 'JAKARTA-BALI', '2023-09-26', '16:00 WITA', 'B'),
(3, 'LION AIR', 'BANDUNG-SUMATERA UTARA', '2023-09-26', '14:30 WITA', 'C');

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
(5, '2023_09_22_070605_post', 1),
(8, '2023_09_26_100013_create_jadwals_table', 2),
(9, '2023_09_26_122157_create_tikets_table', 3),
(10, '2023_09_29_061412_create_profils_table', 4),
(11, '2023_10_10_111309_create_penumpangs_table', 4),
(12, '2023_10_10_124315_create_comments_table', 5),
(13, '2023_10_10_132856_create_comment_table', 6),
(14, '2023_10_10_133008_create_comment_table', 7),
(15, '2023_10_10_141243_create_comment_table', 8);

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
-- Table structure for table `penumpang`
--

CREATE TABLE `penumpang` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `umur` varchar(255) NOT NULL,
  `telp` varchar(255) NOT NULL,
  `maskapai` varchar(255) NOT NULL,
  `destinasi` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penumpang`
--

INSERT INTO `penumpang` (`id`, `nama`, `umur`, `telp`, `maskapai`, `destinasi`, `tanggal`, `harga`) VALUES
(1, 'tes', '1', '1', 'BATIK AIR', 'JAKARTA-BALI', '2023-09-26', 'Rp 1.240.000,00'),
(2, 'tes', '1', '1', 'BATIK AIR', 'JAKARTA-BALI', '2023-09-26', 'Rp 1.240.000,00'),
(3, 'tes', '1', '1', 'GARUDA', 'SAMARINDA-SURABAYA', '2023-09-26', 'Rp 2.200.000,00'),
(4, '1', '1', '1', 'GARUDA', 'SAMARINDA-SURABAYA', '2023-09-26', 'Rp 2.200.000,00'),
(5, 'josia', '1', '1', 'LION AIR', 'BANDUNG-SUMATERA UTARA', '2023-09-26', 'Rp 1.024.000,00'),
(6, 'BUDI', '1', '1', 'LION AIR', 'BANDUNG-SUMATERA UTARA', '2023-09-26', 'Rp 1.024.000,00'),
(7, 'e', '1', '1', 'GARUDA', 'SAMARINDA-SURABAYA', '2023-09-26', 'Rp 2.200.000,00'),
(8, 'rrr', '1', '1', 'GARUDA', 'SAMARINDA-SURABAYA', '2023-09-26', 'Rp 2.200.000,00'),
(9, 'jos', '1', '1', 'GARUDA', 'SAMARINDA-SURABAYA', '2023-09-26', 'Rp 2.200.000,00'),
(10, 'windah', '30', '08', 'GARUDA', 'SAMARINDA-SURABAYA', '2023-09-26', 'Rp 2.200.000,00');

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `image`, `judul`, `content`) VALUES
(1, 'tes', 'tes', 'tes'),
(2, 'tos', 'tos', 'tos'),
(3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTr3QYxQNJDMmjEg78x9BxpwRTc1G98bZ5zpKdqUX5YzA&s', 'ddd', 'dd');

-- --------------------------------------------------------

--
-- Table structure for table `profils`
--

CREATE TABLE `profils` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--

CREATE TABLE `tiket` (
  `id` int(10) UNSIGNED NOT NULL,
  `maskapai` varchar(255) NOT NULL,
  `destinasi` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tiket`
--

INSERT INTO `tiket` (`id`, `maskapai`, `destinasi`, `tanggal`, `harga`) VALUES
(1, 'GARUDA', 'SAMARINDA-SURABAYA', '2023-09-26', 'Rp 2.200.000,00'),
(2, 'BATIK AIR', 'JAKARTA-BALI', '2023-09-26', 'Rp 1.240.000,00'),
(3, 'LION AIR', 'BANDUNG-SUMATERA UTARA', '2023-09-26', 'Rp 1.024.000,00');

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `penumpang`
--
ALTER TABLE `penumpang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profils`
--
ALTER TABLE `profils`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tiket`
--
ALTER TABLE `tiket`
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
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `penumpang`
--
ALTER TABLE `penumpang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `profils`
--
ALTER TABLE `profils`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tiket`
--
ALTER TABLE `tiket`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
