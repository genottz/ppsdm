-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Feb 2024 pada 21.43
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wismappsdmyk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `email`, `username`, `password`, `nip`, `created_at`, `updated_at`) VALUES
(111, 'superadmin@gmail.com', 'superadmin', '$2y$10$9JWqCucjgUu1XY6tttX.5Otv2omtx3vW0xDLd4MmeamGpsSQMxKo6', '123456789', '2024-02-13', '2024-02-13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking`
--

CREATE TABLE `booking` (
  `id_booking` int(11) NOT NULL,
  `id_guest` int(11) NOT NULL,
  `id_wisma` int(11) NOT NULL,
  `id_kamar` int(11) DEFAULT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `booking`
--

INSERT INTO `booking` (`id_booking`, `id_guest`, `id_wisma`, `id_kamar`, `check_in`, `check_out`, `created_at`, `updated_at`) VALUES
(9, 30, 30000, 2, '2024-02-01', '2024-02-10', '2024-02-11', '2024-02-11'),
(10, 31, 30000, 2, '2024-02-10', '2024-02-25', '2024-02-12', '2024-02-12'),
(11, 32, 10000, 2, '2024-02-02', '2024-02-24', '2024-02-16', '2024-02-16'),
(12, 33, 10000, 1, '2024-02-10', '2024-02-03', '2024-02-16', '2024-02-16'),
(13, 34, 30000, 2, '2024-02-01', '2024-02-29', '2024-02-16', '2024-02-16'),
(14, 35, 10000, 2, '2024-02-01', '2024-02-10', '2024-02-16', '2024-02-16'),
(15, 36, 10000, 2, '2024-02-10', '2024-02-15', '2024-02-16', '2024-02-16'),
(16, 37, 20000, 1, '2024-02-01', '2024-02-10', '2024-02-16', '2024-02-16'),
(17, 38, 30000, 2, '2024-02-07', '2024-02-23', '2024-02-16', '2024-02-16'),
(18, 39, 10000, 2, '2024-02-27', '2024-02-29', '2024-02-16', '2024-02-16'),
(19, 40, 10000, 10002, '2024-02-03', '2024-02-22', '2024-02-16', '2024-02-16'),
(20, 41, 20000, 10001, '2024-02-07', '2024-02-27', '2024-02-16', '2024-02-16'),
(21, 42, 30030, 10002, '2024-02-01', '2024-02-17', '2024-02-16', '2024-02-16'),
(22, 43, 30029, 10001, '2024-02-01', '2024-02-15', '2024-02-16', '2024-02-16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `guest`
--

CREATE TABLE `guest` (
  `id_guest` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kegiatan` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `guest`
--

INSERT INTO `guest` (`id_guest`, `nama`, `alamat`, `kegiatan`, `created_at`, `updated_at`) VALUES
(30, 'ujank gg', 'sleman yk', 'tidur cuy', '2024-02-11', '2024-02-11'),
(31, 'Santo Poernomo', 'Pohruboh RT 02', 'memancing kuy', '2024-02-12', '2024-02-12'),
(32, 'mamat gg', 'jogja yk', 'seminar uy', '2024-02-16', '2024-02-16'),
(33, 'Walidi', 'Jogja', 'Berkebun', '2024-02-16', '2024-02-16'),
(34, 'Walidi', 'Jogja', 'Berjalan', '2024-02-16', '2024-02-16'),
(35, 'Wanto', 'Sleman oi', 'Memasak', '2024-02-16', '2024-02-16'),
(36, 'Mamat ui', 'Jogja bro', 'Makan yuk', '2024-02-16', '2024-02-16'),
(37, 'Yoga', 'Bandung bro', 'Balap', '2024-02-16', '2024-02-16'),
(38, 'Ujang', 'Solo', 'Lari', '2024-02-16', '2024-02-16'),
(39, 'yoga', 'bro', 'a', '2024-02-16', '2024-02-16'),
(40, 'Faris', 'Jakarta', 'Makan', '2024-02-16', '2024-02-16'),
(41, 'Mardi', 'Malang', 'Menjahit', '2024-02-16', '2024-02-16'),
(42, 'MAMAT', 'PAPUA', 'BEKERJA', '2024-02-16', '2024-02-16'),
(43, 'Ryan Dida', 'Jogjakarta', 'Study magang', '2024-02-16', '2024-02-16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kamar`
--

CREATE TABLE `kamar` (
  `id_kamar` int(11) NOT NULL,
  `kode` varchar(30) NOT NULL,
  `nomor` int(11) NOT NULL,
  `status` enum('terisi','kosong') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kamar`
--

INSERT INTO `kamar` (`id_kamar`, `kode`, `nomor`, `status`) VALUES
(10001, 'bdg', 1, 'terisi'),
(10002, 'bdg', 2, 'kosong'),
(20001, 'panca', 1, 'kosong'),
(20002, 'panca', 2, 'kosong'),
(20003, 'panca', 3, 'terisi'),
(30001, 'nawa', 1, 'kosong'),
(30002, 'nawa', 2, 'kosong'),
(30003, 'nawa', 3, 'terisi'),
(30004, 'nawa', 4, 'terisi'),
(30005, 'nawa', 5, 'kosong');

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
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `wisma`
--

CREATE TABLE `wisma` (
  `id_wisma` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `kapasitas` int(11) NOT NULL,
  `j_kamar` int(11) NOT NULL,
  `fasilitas` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `wisma`
--

INSERT INTO `wisma` (`id_wisma`, `nama`, `keterangan`, `kapasitas`, `j_kamar`, `fasilitas`, `gambar`, `created_at`, `updated_at`) VALUES
(30029, 'bondowoso', 'festival', 100, 20, 'minum', '5a3bfe51a4bcec77f0497ee7d91f5843.png', '2024-02-11', '2024-02-11'),
(30030, 'Perjuangan', 'VIP', 10, 20, 'AC, LEMARI, KULKAS', 'a-river-and-a-beautiful-landscape-vector.jpg', '2024-02-16', '2024-02-16'),
(30031, 'Sudirman', '10 kamar', 10, 5, 'AC', 'a-river-and-a-beautiful-landscape-vector.jpg', '2024-02-16', '2024-02-16');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_booking`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`id_guest`);

--
-- Indeks untuk tabel `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`id_kamar`);

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
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `wisma`
--
ALTER TABLE `wisma`
  ADD PRIMARY KEY (`id_wisma`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11113;

--
-- AUTO_INCREMENT untuk tabel `booking`
--
ALTER TABLE `booking`
  MODIFY `id_booking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `guest`
--
ALTER TABLE `guest`
  MODIFY `id_guest` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `kamar`
--
ALTER TABLE `kamar`
  MODIFY `id_kamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30006;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wisma`
--
ALTER TABLE `wisma`
  MODIFY `id_wisma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30032;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
