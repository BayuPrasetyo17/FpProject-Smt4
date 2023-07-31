-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jun 2023 pada 04.28
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelfp`
--

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
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `idKeranjang` bigint(20) UNSIGNED NOT NULL,
  `idProduk` bigint(20) UNSIGNED NOT NULL,
  `jumlahBarang` int(11) NOT NULL,
  `totalHarga` int(11) NOT NULL,
  `createBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('keranjang','proses') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'keranjang',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `keranjang`
--

INSERT INTO `keranjang` (`idKeranjang`, `idProduk`, `jumlahBarang`, `totalHarga`, `createBy`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 248000, 'dinar@gmail.com', 'proses', '2023-06-03 02:02:05', '2023-06-03 02:14:09'),
(2, 2, 5, 620000, 'dinar@gmail.com', 'proses', '2023-06-03 02:05:17', '2023-06-03 02:14:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kritik`
--

CREATE TABLE `kritik` (
  `idKritik` bigint(20) UNSIGNED NOT NULL,
  `kritik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kritik`
--

INSERT INTO `kritik` (`idKritik`, `kritik`, `createBy`, `created_at`, `updated_at`) VALUES
(1, 'adadadsadasdsada', 'i@gmail.com', '2023-06-02 14:38:46', '2023-06-02 14:38:46'),
(2, 'adadadsadasdsada', 'dinar@gmail.com', '2023-06-02 14:40:34', '2023-06-02 14:40:34'),
(3, 'cacacac', 'dinar@gmail.com', '2023-06-02 14:41:39', '2023-06-02 14:41:39'),
(4, 'tes', 'dinar@gmail.com', '2023-06-02 14:46:23', '2023-06-02 14:46:23'),
(5, 'tes', 'dinar@gmail.com', '2023-06-02 14:46:31', '2023-06-02 14:46:31'),
(6, 'cacac', 'dinar@gmail.com', '2023-06-02 14:48:50', '2023-06-02 14:48:50'),
(7, 'koko', 'seller@seler.com', '2023-06-03 01:56:54', '2023-06-03 01:56:54'),
(8, 'yoooo', 'dinar@gmail.com', '2023-06-03 02:17:21', '2023-06-03 02:17:21'),
(9, 'kokokok', 'dinar@gmail.com', '2023-06-03 02:19:38', '2023-06-03 02:19:38'),
(10, 'gadgagadg', 'dinar@gmail.com', '2023-06-03 02:20:22', '2023-06-03 02:20:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kurir`
--

CREATE TABLE `kurir` (
  `idKurir` bigint(20) UNSIGNED NOT NULL,
  `namaKurir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneKurir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailKurir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kurir`
--

INSERT INTO `kurir` (`idKurir`, `namaKurir`, `phoneKurir`, `emailKurir`, `created_at`, `updated_at`) VALUES
(1, 'bayu', '089278688', 'kurir@kurir.com', '2023-06-02 14:18:11', '2023-06-02 14:18:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log`
--

CREATE TABLE `log` (
  `idlog` bigint(20) UNSIGNED NOT NULL,
  `module` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `useraccess` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `log`
--

INSERT INTO `log` (`idlog`, `module`, `action`, `useraccess`, `created_at`, `updated_at`) VALUES
(1, 'register', 'resgiter_akun', 'admin@admin.com', '2023-06-02 14:18:11', '2023-06-02 14:18:11'),
(2, 'register', 'resgiter_akun', 'kurir@kurir.com', '2023-06-02 14:18:11', '2023-06-02 14:18:11'),
(3, 'register', 'resgiter_akun', 'i@gmail.com', '2023-06-02 14:28:29', '2023-06-02 14:28:29'),
(4, 'Users', 'resgiter user', 'ssfsdfsdfs', '2023-06-02 14:28:29', '2023-06-02 14:28:29'),
(5, 'register', 'resgiter_akun', 'dinar@gmail.com', '2023-06-02 14:29:16', '2023-06-02 14:29:16'),
(6, 'Users', 'resgiter user', 'dinar', '2023-06-02 14:29:16', '2023-06-02 14:29:16'),
(7, 'login', 'login_akun', 'dinar@gmail.com', '2023-06-02 14:29:46', '2023-06-02 14:29:46'),
(8, 'login', 'login_akun', 'dinar@gmail.com', '2023-06-02 14:53:16', '2023-06-02 14:53:16'),
(9, 'register', 'resgiter_akun', 'dada@gmail.com', '2023-06-02 15:11:04', '2023-06-02 15:11:04'),
(10, 'Users', 'register Seller', 'dada@gmail.com', '2023-06-02 15:11:04', '2023-06-02 15:11:04'),
(11, 'Seller', 'register Seller', 'dada@gmail.com', '2023-06-02 15:11:04', '2023-06-02 15:11:04'),
(12, 'register', 'resgiter_akun', 'asep@gmail.com', '2023-06-02 15:35:25', '2023-06-02 15:35:25'),
(13, 'Users', 'resgiter user', 'asep', '2023-06-02 15:35:25', '2023-06-02 15:35:25'),
(14, 'login', 'login_akun', 'admin@admin.com', '2023-06-02 15:48:18', '2023-06-02 15:48:18'),
(15, 'login', 'login_akun', 'admin@admin.com', '2023-06-02 15:48:20', '2023-06-02 15:48:20'),
(16, 'login', 'login_akun', 'admin@admin.com', '2023-06-02 15:48:23', '2023-06-02 15:48:23'),
(17, 'login', 'login_akun', 'admin@admin.com', '2023-06-02 15:48:27', '2023-06-02 15:48:27'),
(18, 'login', 'login_akun', 'admin@admin.com', '2023-06-02 15:48:28', '2023-06-02 15:48:28'),
(19, 'login', 'login_akun', 'admin@admin.com', '2023-06-02 15:48:29', '2023-06-02 15:48:29'),
(20, 'login', 'login_akun', 'admin@admin.com', '2023-06-02 15:48:29', '2023-06-02 15:48:29'),
(21, 'login', 'login_akun', 'admin@admin.com', '2023-06-02 15:48:30', '2023-06-02 15:48:30'),
(22, 'login', 'login_akun', 'admin@admin.com', '2023-06-02 15:48:34', '2023-06-02 15:48:34'),
(23, 'login', 'login_akun', 'admin@admin.com', '2023-06-02 15:48:35', '2023-06-02 15:48:35'),
(24, 'login', 'login_akun', 'admin@admin.com', '2023-06-02 15:48:37', '2023-06-02 15:48:37'),
(25, 'login', 'login_akun', 'admin@admin.com', '2023-06-02 15:48:38', '2023-06-02 15:48:38'),
(26, 'login', 'login_akun', 'admin@admin.com', '2023-06-02 15:48:39', '2023-06-02 15:48:39'),
(27, 'login', 'login_akun', 'admin@admin.com', '2023-06-02 15:48:39', '2023-06-02 15:48:39'),
(28, 'login', 'login_akun', 'admin@admin.com', '2023-06-02 15:53:20', '2023-06-02 15:53:20'),
(29, 'register', 'resgiter_akun', 'seller@seler.com', '2023-06-02 15:56:14', '2023-06-02 15:56:14'),
(30, 'Users', 'register Seller', 'seller@seler.com', '2023-06-02 15:56:14', '2023-06-02 15:56:14'),
(31, 'Seller', 'register Seller', 'seller@seler.com', '2023-06-02 15:56:14', '2023-06-02 15:56:14'),
(32, 'register', 'resgiter_akun', 'seller@seler.com', '2023-06-02 15:56:24', '2023-06-02 15:56:24'),
(33, 'register', 'resgiter_akun', 'ikkh@gmail.com', '2023-06-02 15:59:21', '2023-06-02 15:59:21'),
(34, 'Users', 'register Seller', 'ikkh@gmail.com', '2023-06-02 15:59:21', '2023-06-02 15:59:21'),
(35, 'Seller', 'register Seller', 'ikkh@gmail.com', '2023-06-02 15:59:21', '2023-06-02 15:59:21'),
(36, 'login', 'login_akun', 'seller@seler.com', '2023-06-02 16:00:09', '2023-06-02 16:00:09'),
(37, 'seller', 'update status buka', 'seller@seler.com', '2023-06-02 16:02:06', '2023-06-02 16:02:06'),
(38, 'Produk', 'add mie ayam', 'seller@seler.com', '2023-06-02 16:31:40', '2023-06-02 16:31:40'),
(39, 'Produk', 'update mi', 'seller@seler.com', '2023-06-02 17:53:48', '2023-06-02 17:53:48'),
(40, 'Produk', 'update mie', 'seller@seler.com', '2023-06-02 17:54:46', '2023-06-02 17:54:46'),
(41, 'Produk', 'update mie', 'seller@seler.com', '2023-06-02 17:56:13', '2023-06-02 17:56:13'),
(42, 'Produk', 'update mie ayam', 'seller@seler.com', '2023-06-02 17:58:38', '2023-06-02 17:58:38'),
(43, 'Produk', 'update scscscscsc', 'seller@seler.com', '2023-06-02 17:58:47', '2023-06-02 17:58:47'),
(44, 'Produk', 'update mie ayam', 'seller@seler.com', '2023-06-02 18:02:32', '2023-06-02 18:02:32'),
(45, 'Produk', 'update dsfsdfsdfdsfdsf', 'seller@seler.com', '2023-06-02 18:02:58', '2023-06-02 18:02:58'),
(46, 'Produk', 'update kon', 'seller@seler.com', '2023-06-02 18:04:02', '2023-06-02 18:04:02'),
(47, 'Produk', 'update mie ayscacsacsacacascsac', 'seller@seler.com', '2023-06-02 18:06:04', '2023-06-02 18:06:04'),
(48, 'Produk', 'update w', 'seller@seler.com', '2023-06-02 18:09:21', '2023-06-02 18:09:21'),
(49, 'Produk', 'update mie ayam', 'seller@seler.com', '2023-06-03 01:28:17', '2023-06-03 01:28:17'),
(50, 'Produk', 'delete mie ayam', 'seller@seler.com', '2023-06-03 01:31:06', '2023-06-03 01:31:06'),
(51, 'Produk', 'add bakso', 'seller@seler.com', '2023-06-03 01:34:44', '2023-06-03 01:34:44'),
(52, 'seller', 'update status buka', 'seller@seler.com', '2023-06-03 01:39:26', '2023-06-03 01:39:26'),
(53, 'seller', 'update status tutup', 'seller@seler.com', '2023-06-03 01:39:39', '2023-06-03 01:39:39'),
(54, 'seller', 'update status buka', 'seller@seler.com', '2023-06-03 01:43:26', '2023-06-03 01:43:26'),
(55, 'Produk', 'add bakwan', 'seller@seler.com', '2023-06-03 01:44:15', '2023-06-03 01:44:15'),
(56, 'login', 'login_akun', 'dinar@gmail.com', '2023-06-03 01:58:14', '2023-06-03 01:58:14'),
(57, 'Keranjang', 'add produk id 2 to keranjang', 'dinar@gmail.com', '2023-06-03 02:02:05', '2023-06-03 02:02:05'),
(58, 'Keranjang', 'add produk id 2 to keranjang', 'dinar@gmail.com', '2023-06-03 02:05:17', '2023-06-03 02:05:17'),
(59, 'Keranjang', 'add produk id 2 to keranjang', 'dinar@gmail.com', '2023-06-03 02:05:51', '2023-06-03 02:05:51'),
(60, 'Produk', 'delete 3', 'dinar@gmail.com', '2023-06-03 02:11:37', '2023-06-03 02:11:37'),
(61, 'Pesanan', 'checkOut keranjang id 1', 'dinar@gmail.com', '2023-06-03 02:14:09', '2023-06-03 02:14:09'),
(62, 'Pesanan', 'checkOut keranjang id 2', 'dinar@gmail.com', '2023-06-03 02:14:09', '2023-06-03 02:14:09');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_03_125151_produk', 1),
(6, '2023_05_03_125223_keranjang', 1),
(7, '2023_05_06_012409_create_log_table', 1),
(8, '2023_05_15_114515_create__seller', 1),
(9, '2023_05_15_120555_create_kurir', 1),
(10, '2023_05_15_141707_create_pesanan', 1),
(11, '2023_05_17_144549_create_transaksi', 1),
(12, '2023_06_02_210735_kritik', 1);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `idPesanan` bigint(20) UNSIGNED NOT NULL,
  `createBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idKeranjang` bigint(20) UNSIGNED NOT NULL,
  `emailKurir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namaKurir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneKurir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pesananStatus` enum('proses','perjalanan','selesai') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'proses',
  `role` enum('proses','aktif','non-aktif') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  `waktuProses` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`idPesanan`, `createBy`, `idKeranjang`, `emailKurir`, `namaKurir`, `phoneKurir`, `pesananStatus`, `role`, `waktuProses`, `created_at`, `updated_at`) VALUES
(1, 'dinar@gmail.com', 1, NULL, NULL, NULL, 'proses', 'aktif', NULL, '2023-06-03 02:14:09', '2023-06-03 02:14:09'),
(2, 'dinar@gmail.com', 2, NULL, NULL, NULL, 'proses', 'aktif', NULL, '2023-06-03 02:14:09', '2023-06-03 02:14:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `idProduk` bigint(20) UNSIGNED NOT NULL,
  `namaProduk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` enum('makanan','minuman') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'makanan',
  `role` enum('publish','nonpublish') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'nonpublish',
  `harga` int(11) NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `validateEmail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`idProduk`, `namaProduk`, `gambar`, `jenis`, `role`, `harga`, `deskripsi`, `validateEmail`, `created_at`, `updated_at`) VALUES
(2, 'bakso', 'uploads/1685756084.jpeg', 'makanan', 'publish', 124000, 'no komen dah', 'seller@seler.com', '2023-06-03 01:34:44', '2023-06-03 01:34:44'),
(3, 'bakwan', 'uploads/1685756655.jpeg', 'makanan', 'publish', 7000, 'gak enak tapi banyak', 'seller@seler.com', '2023-06-03 01:44:15', '2023-06-03 01:44:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `seller`
--

CREATE TABLE `seller` (
  `idSeller` bigint(20) UNSIGNED NOT NULL,
  `namaToko` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambarSeller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneSeller` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamatToko` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `validateEmail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('buka','tutup') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'tutup',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `seller`
--

INSERT INTO `seller` (`idSeller`, `namaToko`, `gambarSeller`, `phoneSeller`, `alamatToko`, `validateEmail`, `status`, `created_at`, `updated_at`) VALUES
(1, 'dada', 'uploads/1685718664.jpeg', 'dgbdfbfgfgnf', '413555', 'dada@gmail.com', 'tutup', '2023-06-02 15:11:04', '2023-06-02 15:11:04'),
(2, 'Toko Pak Slamet', 'uploads/1685721374.jpeg', 'Jln.Kertabumi Kab.Karawang', '0987657224', 'seller@seler.com', 'buka', '2023-06-02 15:56:14', '2023-06-03 01:43:26'),
(3, 'dadada', 'uploads/1685721561.jpeg', '1214243242', 'ffaafadf', 'ikkh@gmail.com', 'tutup', '2023-06-02 15:59:21', '2023-06-02 15:59:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `idTransaksi` bigint(20) UNSIGNED NOT NULL,
  `idPesanan` bigint(20) UNSIGNED NOT NULL,
  `totalHarga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `idUsers` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('user','kurir','seller','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`idUsers`, `username`, `email`, `password`, `phone`, `alamat`, `role`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$Jao5nRlDw9sJRGusy4m79Olp9OzPhoY9A7Iq17OAkWF0v.K2SakE6', NULL, NULL, 'admin', '2023-06-02 14:18:11', '2023-06-02 14:18:11'),
(2, 'kurir', 'kurir@kurir.com', '$2y$10$FcprVld6Gfv4DKdzGcrm7uKZbkxRnbDsq7sNlu3wxxg2llrM5I2iK', NULL, NULL, 'kurir', '2023-06-02 14:18:11', '2023-06-02 14:18:11'),
(3, 'ssfsdfsdfs', 'i@gmail.com', '$2y$10$AdyQE29dqnj2vMOOJYuGlOzGgN9fdOIvTD6LQ9TyHerQrYk15dGdm', '1214243242', 'ffaafadf', 'user', '2023-06-02 14:28:29', '2023-06-02 14:28:29'),
(4, 'dinar', 'dinar@gmail.com', '$2y$10$eSWjxF8dTsTJ0CZUiy2n/eORzxybuN65RCm8RSrutYtBb4yaE919u', '0988786853', 'Jln.Pramuka Kab.Karawang', 'user', '2023-06-02 14:29:16', '2023-06-02 14:29:16'),
(5, 'dada', 'dada@gmail.com', '$2y$10$kErPZDiMcm5lH34e/jevKedZSqAKeH77dgr9B/LUl.s7FvUgoVJVm', NULL, NULL, 'seller', '2023-06-02 15:11:04', '2023-06-02 15:11:04'),
(6, 'asep', 'asep@gmail.com', '$2y$10$zpycbg9kOdzGqSF0pVNVY.oblhZAzbX.nnmWan1TZ7ME.Hk11Sesm', '52325532', 'adadaa', 'user', '2023-06-02 15:35:25', '2023-06-02 15:35:25'),
(7, 'seller', 'seller@seler.com', '$2y$10$MjKt6kCcrpiLwUfSwClv4u.PgnjoVjCWUzF5EwLCtZid24L61HMVW', NULL, NULL, 'seller', '2023-06-02 15:56:14', '2023-06-02 15:56:14'),
(9, 'ssfsdfsdfs', 'ikkh@gmail.com', '$2y$10$tN84/BROeYh6Gzn6u9Y0WubGkLhnWn4xHm9KajsyYZnIBwXQSL9KC', NULL, NULL, 'seller', '2023-06-02 15:59:21', '2023-06-02 15:59:21');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`idKeranjang`),
  ADD KEY `keranjang_idproduk_foreign` (`idProduk`),
  ADD KEY `keranjang_createby_foreign` (`createBy`);

--
-- Indeks untuk tabel `kritik`
--
ALTER TABLE `kritik`
  ADD PRIMARY KEY (`idKritik`),
  ADD KEY `kritik_createby_foreign` (`createBy`);

--
-- Indeks untuk tabel `kurir`
--
ALTER TABLE `kurir`
  ADD PRIMARY KEY (`idKurir`),
  ADD KEY `kurir_emailkurir_foreign` (`emailKurir`);

--
-- Indeks untuk tabel `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`idlog`);

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
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`idPesanan`),
  ADD KEY `pesanan_createby_foreign` (`createBy`),
  ADD KEY `pesanan_idkeranjang_foreign` (`idKeranjang`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idProduk`),
  ADD KEY `produk_validateemail_foreign` (`validateEmail`);

--
-- Indeks untuk tabel `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`idSeller`),
  ADD UNIQUE KEY `seller_namatoko_unique` (`namaToko`),
  ADD KEY `seller_validateemail_foreign` (`validateEmail`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`idTransaksi`),
  ADD KEY `transaksi_idpesanan_foreign` (`idPesanan`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUsers`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `idKeranjang` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kritik`
--
ALTER TABLE `kritik`
  MODIFY `idKritik` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `kurir`
--
ALTER TABLE `kurir`
  MODIFY `idKurir` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `log`
--
ALTER TABLE `log`
  MODIFY `idlog` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `idPesanan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `idProduk` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `seller`
--
ALTER TABLE `seller`
  MODIFY `idSeller` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `idTransaksi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `idUsers` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD CONSTRAINT `keranjang_createby_foreign` FOREIGN KEY (`createBy`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `keranjang_idproduk_foreign` FOREIGN KEY (`idProduk`) REFERENCES `produk` (`idProduk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kritik`
--
ALTER TABLE `kritik`
  ADD CONSTRAINT `kritik_createby_foreign` FOREIGN KEY (`createBy`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kurir`
--
ALTER TABLE `kurir`
  ADD CONSTRAINT `kurir_emailkurir_foreign` FOREIGN KEY (`emailKurir`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_createby_foreign` FOREIGN KEY (`createBy`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanan_idkeranjang_foreign` FOREIGN KEY (`idKeranjang`) REFERENCES `keranjang` (`idKeranjang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_validateemail_foreign` FOREIGN KEY (`validateEmail`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `seller`
--
ALTER TABLE `seller`
  ADD CONSTRAINT `seller_validateemail_foreign` FOREIGN KEY (`validateEmail`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_idpesanan_foreign` FOREIGN KEY (`idPesanan`) REFERENCES `pesanan` (`idPesanan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
