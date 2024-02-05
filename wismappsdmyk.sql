-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Feb 2024 pada 06.08
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
  `password` varchar(11) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `email`, `username`, `password`, `nip`, `created_at`, `updated_at`) VALUES
(11111, 'superadmin@gmail.com', 'superadmin', '12345678', '123456789', '2023-11-30', '2023-11-30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking`
--

CREATE TABLE `booking` (
  `id_booking` int(11) NOT NULL,
  `id_guest` int(11) NOT NULL,
  `id_wisma` int(11) NOT NULL,
  `id_kamar` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1, 'Yoga', 'pohruboh', 'ngaji', '2024-02-01', '2024-02-01');

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
  `fasilitas` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `wisma`
--

INSERT INTO `wisma` (`id_wisma`, `nama`, `keterangan`, `kapasitas`, `j_kamar`, `fasilitas`, `gambar`, `created_at`, `updated_at`) VALUES
(10000, 'Bandung', 'Normal', 50, 25, 'TV\r\nKULKAS\r\nLEMARI', '', '2024-02-01', '2024-02-01'),
(20000, 'Pancasila', 'VIP', 20, 10, 'TV\r\nKULKAS\r\nLEMARI', '', '2023-12-01', '2023-12-14'),
(30000, 'Nawacita', 'Private', 40, 20, 'TV\r\nAC\r\nLEMARI', '', '2024-02-01', '2024-02-01'),
(30001, 'test', 'ee', 12, 2, 'roti', 'C:\\fakepath\\Kabupaten Sleman.png', '2024-02-05', '2024-02-05'),
(30002, 'test', 'ee', 12, 2, 'roti', 'C:\\fakepath\\Kabupaten Sleman.png', '2024-02-05', '2024-02-05');

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
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11112;

--
-- AUTO_INCREMENT untuk tabel `booking`
--
ALTER TABLE `booking`
  MODIFY `id_booking` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `guest`
--
ALTER TABLE `guest`
  MODIFY `id_guest` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kamar`
--
ALTER TABLE `kamar`
  MODIFY `id_kamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30006;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `wisma`
--
ALTER TABLE `wisma`
  MODIFY `id_wisma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30003;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
