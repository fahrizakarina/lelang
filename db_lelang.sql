-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jun 2020 pada 02.17
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_lelang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `assets`
--

CREATE TABLE `assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `game` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `assets`
--

INSERT INTO `assets` (`id`, `user_id`, `game`, `identifier`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 1, 'Durian', 'Durian runtuh', 'enak lo', '2020-05-13 04:11:39', '2020-05-13 04:11:39'),
(2, 1, 'Alpukat', 'ABC Fruity', 'Alpukat Kalifornia mantap sekali dijamin enak', '2020-05-13 04:45:03', '2020-05-13 04:45:03'),
(3, 1, 'Stroberi', 'Uenakk shop', 'stroberinya lezat bergizi', '2020-05-13 06:56:52', '2020-05-13 06:56:52'),
(4, 2, 'Pepaya Korea', 'Chelsea\'s Fruit Shop', 'Pepaya asli dan langka langsung diimport dari Korea. Dijamin rasa manis dan enak', '2020-05-18 03:00:41', '2020-05-18 03:00:41'),
(5, 2, 'Jeruk Yuju Jepang', 'Chelsea\'s Fruit Shop', 'Jeruk yuju khas Jepang yang sangat khas rasanya dan segar rasanya.', '2020-05-18 03:02:51', '2020-05-18 03:02:51'),
(6, 3, 'Anggur BALI', 'Toko Buah Lokal Angga', 'Anggur Khas Bali. Berwarna ungu pekat. No pestisida', '2020-05-18 03:06:32', '2020-05-18 03:06:32'),
(7, 3, 'Belimbing WULUH', 'Toko Buah Lokal Angga', 'Belimbing wuluh sangat enak untuk dicampur dengan masakan seperti botok, pepes dll', '2020-05-18 03:07:57', '2020-05-18 03:07:57'),
(8, 1, 'Apel Malang', 'Fahriza Shop', 'Apel Khas Malang', '2020-05-18 04:49:36', '2020-05-18 04:49:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `asset_genre`
--

CREATE TABLE `asset_genre` (
  `asset_id` bigint(20) UNSIGNED NOT NULL,
  `genre_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `asset_genre`
--

INSERT INTO `asset_genre` (`asset_id`, `genre_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 3),
(4, 1),
(4, 2),
(5, 1),
(5, 3),
(6, 1),
(6, 2),
(7, 3),
(7, 4),
(8, 1),
(8, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `genres`
--

CREATE TABLE `genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `genre` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `genres`
--

INSERT INTO `genres` (`id`, `genre`) VALUES
(1, 'Enak'),
(2, 'Manis'),
(3, 'Asam'),
(4, 'Kecut'),
(5, 'pedas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lelang`
--

CREATE TABLE `lelang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `asset_id` bigint(20) UNSIGNED NOT NULL,
  `harga_awal` int(11) NOT NULL,
  `harga_sekarang` int(11) NOT NULL,
  `waktu_berakhir` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lelang`
--

INSERT INTO `lelang` (`id`, `user_id`, `asset_id`, `harga_awal`, `harga_sekarang`, `waktu_berakhir`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 1, 1000000, 1500000, '2020-05-22', '2020-05-13 04:12:43', '2020-05-18 04:35:04', 0),
(2, 1, 3, 30000, 30000, '2020-05-28', '2020-05-13 06:57:46', '2020-05-13 06:57:46', 1),
(3, 2, 4, 450000, 600000, '2020-06-04', '2020-05-18 03:01:30', '2020-05-18 04:04:08', 1),
(4, 2, 5, 350000, 350000, '2020-06-04', '2020-05-18 03:03:17', '2020-05-18 03:03:17', 1),
(5, 3, 6, 600000, 600000, '2020-06-05', '2020-05-18 03:06:47', '2020-05-18 03:06:47', 1),
(6, 3, 7, 200000, 200000, '2020-06-02', '2020-05-18 03:08:18', '2020-05-18 03:08:18', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lelang_logs`
--

CREATE TABLE `lelang_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `lelang_id` bigint(20) UNSIGNED NOT NULL,
  `harga` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lelang_logs`
--

INSERT INTO `lelang_logs` (`id`, `user_id`, `lelang_id`, `harga`, `created_at`) VALUES
(1, 1, 3, 600000, '2020-05-18 04:04:08'),
(2, 2, 1, 1500000, '2020-05-18 04:16:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_02_15_064939_modify_users_sesuai_kebutuhan', 1),
(5, '2020_02_15_072433_create_assets_table', 1),
(6, '2020_02_15_131614_create_lelang_table', 1),
(7, '2020_02_15_132517_create_genres_table', 1),
(8, '2020_02_15_133102_create_asset_genre_table', 1),
(9, '2020_02_18_055435_create_lelang_logs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_lengkap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `is_banned` tinyint(1) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama_lengkap`, `no_telp`, `is_admin`, `is_banned`, `image`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Fahriza Karina', '089530421804', 1, 0, 'avatar_1', 'fahrikeren1406@gmail.com', NULL, '$2y$10$qeqGIiip5x774XiXBYiaWeBOjAdloor623dUtPJXe1hmGELhinXMe', NULL, '2020-05-13 04:00:27', '2020-05-16 03:33:40'),
(2, 'Chelsea Islan', '082764671881', 1, 0, 'default.jpg', 'chelsea_islan@gmail.com', NULL, '$2y$10$WXgK1/p2lhJmnAutr8cEze8Z5SqcfM0LSwyGJE.0cpV4Pbqw1eINK', NULL, '2020-05-18 02:58:37', '2020-05-18 03:37:54'),
(3, 'Angga Yunanda', '087615283765', 0, 0, 'default.jpg', 'anggayunanda@gmail.com', NULL, '$2y$10$Lfk8uRXjzxJ8jg2/I.kpLOBklBmjL9eIE6wcZAPpLYUK4TkniPJ8.', NULL, '2020-05-18 03:04:43', '2020-05-18 03:04:43');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assets_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `asset_genre`
--
ALTER TABLE `asset_genre`
  ADD KEY `asset_genre_asset_id_foreign` (`asset_id`),
  ADD KEY `asset_genre_genre_id_foreign` (`genre_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lelang`
--
ALTER TABLE `lelang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lelang_user_id_foreign` (`user_id`),
  ADD KEY `lelang_asset_id_foreign` (`asset_id`);

--
-- Indeks untuk tabel `lelang_logs`
--
ALTER TABLE `lelang_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lelang_logs_user_id_foreign` (`user_id`),
  ADD KEY `lelang_logs_lelang_id_foreign` (`lelang_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `assets`
--
ALTER TABLE `assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `lelang`
--
ALTER TABLE `lelang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `lelang_logs`
--
ALTER TABLE `lelang_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `assets`
--
ALTER TABLE `assets`
  ADD CONSTRAINT `assets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `asset_genre`
--
ALTER TABLE `asset_genre`
  ADD CONSTRAINT `asset_genre_asset_id_foreign` FOREIGN KEY (`asset_id`) REFERENCES `assets` (`id`),
  ADD CONSTRAINT `asset_genre_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`);

--
-- Ketidakleluasaan untuk tabel `lelang`
--
ALTER TABLE `lelang`
  ADD CONSTRAINT `lelang_asset_id_foreign` FOREIGN KEY (`asset_id`) REFERENCES `assets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lelang_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `lelang_logs`
--
ALTER TABLE `lelang_logs`
  ADD CONSTRAINT `lelang_logs_lelang_id_foreign` FOREIGN KEY (`lelang_id`) REFERENCES `lelang` (`id`),
  ADD CONSTRAINT `lelang_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
