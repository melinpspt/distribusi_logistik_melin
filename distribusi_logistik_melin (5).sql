-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Bulan Mei 2025 pada 14.30
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `distribusi_logistik_melin`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kecamatan_melin`
--

CREATE TABLE `kecamatan_melin` (
  `id_kecamatan_melin` int(11) NOT NULL,
  `id_kota_melin` int(11) NOT NULL,
  `nama_kecamatan_melin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kecamatan_melin`
--

INSERT INTO `kecamatan_melin` (`id_kecamatan_melin`, `id_kota_melin`, `nama_kecamatan_melin`) VALUES
(3, 3, 'Cimahi Utara'),
(7, 6, 'Andir'),
(8, 6, 'Lengkong'),
(9, 13, 'gatau');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelurahan_melin`
--

CREATE TABLE `kelurahan_melin` (
  `id_kelurahan_melin` int(11) NOT NULL,
  `id_kecamatan_melin` int(11) NOT NULL,
  `nama_kelurahan_melin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kelurahan_melin`
--

INSERT INTO `kelurahan_melin` (`id_kelurahan_melin`, `id_kecamatan_melin`, `nama_kelurahan_melin`) VALUES
(3, 3, 'Citeureup'),
(6, 3, 'Cipageran'),
(8, 7, 'Ciroyom'),
(9, 8, 'Burangrang'),
(10, 9, 'apa aja');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfirmasi_kurir_melin`
--

CREATE TABLE `konfirmasi_kurir_melin` (
  `id_konfirmasi_kurir_melin` int(11) NOT NULL,
  `id_pengiriman_melin` int(11) NOT NULL,
  `id_kurir_melin` int(11) NOT NULL,
  `resi_melin` varchar(20) NOT NULL,
  `nama_barang_melin` varchar(255) NOT NULL,
  `status_kurir_melin` enum('Sedang Menuju Alamat','Sudah Sampai') NOT NULL DEFAULT 'Sedang Menuju Alamat',
  `lokasi_kurir_melin` varchar(255) DEFAULT NULL,
  `waktu_konfirmasi_kurir_melin` datetime NOT NULL DEFAULT current_timestamp(),
  `keterangan_kurir_melin` text DEFAULT NULL,
  `foto_bukti_kurir_melin` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `konfirmasi_kurir_melin`
--

INSERT INTO `konfirmasi_kurir_melin` (`id_konfirmasi_kurir_melin`, `id_pengiriman_melin`, `id_kurir_melin`, `resi_melin`, `nama_barang_melin`, `status_kurir_melin`, `lokasi_kurir_melin`, `waktu_konfirmasi_kurir_melin`, `keterangan_kurir_melin`, `foto_bukti_kurir_melin`) VALUES
(1, 83, 22, 'JNE1747542210193', 'aaaaaaaaaa', 'Sedang Menuju Alamat', NULL, '2025-05-18 11:40:30', NULL, NULL),
(2, 81, 22, 'JNE1747541614639', '3', 'Sedang Menuju Alamat', NULL, '2025-05-18 11:40:30', NULL, NULL),
(3, 79, 22, 'JNE1747539928246', 'ayam', 'Sedang Menuju Alamat', NULL, '2025-05-18 11:40:30', NULL, NULL),
(4, 78, 22, 'JNE1747539897405', 'ayam', 'Sedang Menuju Alamat', NULL, '2025-05-18 11:40:30', NULL, NULL),
(5, 82, 22, 'JNE1747541925229', 'ssssssssss', 'Sedang Menuju Alamat', NULL, '2025-05-18 11:41:20', NULL, NULL),
(6, 83, 22, 'JNE1747542210193', 'aaaaaaaaaa', 'Sedang Menuju Alamat', 'ssss', '2025-05-18 11:47:31', 'sss', NULL),
(7, 83, 22, 'JNE1747542210193', 'aaaaaaaaaa', 'Sedang Menuju Alamat', 'sssss', '2025-05-18 11:47:49', 'ssss', NULL),
(8, 83, 22, 'JNE1747542210193', 'aaaaaaaaaa', 'Sudah Sampai', 'sss', '2025-05-18 11:48:26', 'sss', 'bukti_1747543706_5462.png'),
(9, 82, 22, 'JNE1747541925229', 'ssssssssss', 'Sudah Sampai', 'sssss', '2025-05-18 11:52:03', 's', 'bukti_1747543923_4431.png'),
(10, 84, 22, 'JNE1747544106973', 'q', 'Sedang Menuju Alamat', NULL, '2025-05-18 11:57:17', NULL, NULL),
(11, 84, 22, 'JNE1747544106973', 'q', 'Sedang Menuju Alamat', 'sssss', '2025-05-18 12:00:02', 'ss', NULL),
(12, 84, 22, 'JNE1747544106973', 'q', 'Sudah Sampai', 'ww', '2025-05-18 12:00:41', 'ww', 'bukti_1747544441_7564.png'),
(13, 84, 22, 'JNE1747544106973', 'q', 'Sedang Menuju Alamat', 'ssss', '2025-05-18 12:04:30', 'ss', NULL),
(14, 84, 22, 'JNE1747544106973', 'q', 'Sudah Sampai', 'ssss', '2025-05-18 12:04:57', 'ssssssssssssssssssssssssss', 'bukti_1747544697_1230.png'),
(15, 81, 22, 'JNE1747541614639', '3', 'Sudah Sampai', 'sssss', '2025-05-18 13:58:43', '', 'bukti_1747551523_4435.png'),
(16, 85, 22, 'JNE1747551696152', 'ww', 'Sedang Menuju Alamat', NULL, '2025-05-18 20:26:39', NULL, NULL),
(17, 78, 22, 'JNE1747539897405', 'ayam', 'Sudah Sampai', 'depan rumah', '2025-05-18 20:27:31', 'mhcusdhcds', 'bukti_1747574851_4243.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfirmasi_petugas_melin`
--

CREATE TABLE `konfirmasi_petugas_melin` (
  `id_konfirmasi_petugas_melin` int(11) NOT NULL,
  `id_pengiriman_melin` int(11) NOT NULL,
  `id_petugas_melin` int(11) NOT NULL,
  `waktu_konfirmasi_petugas_melin` datetime DEFAULT current_timestamp(),
  `status_konfirmasi_petugas_melin` enum('Belum Dikirim','Sedang Dikirim') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `konfirmasi_petugas_melin`
--

INSERT INTO `konfirmasi_petugas_melin` (`id_konfirmasi_petugas_melin`, `id_pengiriman_melin`, `id_petugas_melin`, `waktu_konfirmasi_petugas_melin`, `status_konfirmasi_petugas_melin`) VALUES
(1, 80, 22, '2025-05-18 11:09:36', 'Belum Dikirim'),
(2, 81, 20, '2025-05-18 11:13:34', 'Belum Dikirim'),
(3, 82, 20, '2025-05-18 11:18:45', 'Belum Dikirim'),
(4, 83, 20, '2025-05-18 11:23:30', 'Belum Dikirim'),
(5, 83, 20, '2025-05-18 11:24:05', 'Sedang Dikirim'),
(6, 84, 20, '2025-05-18 11:55:06', 'Belum Dikirim'),
(7, 84, 20, '2025-05-18 11:55:25', 'Sedang Dikirim'),
(8, 85, 20, '2025-05-18 14:01:36', 'Belum Dikirim'),
(9, 85, 20, '2025-05-18 14:02:14', 'Sedang Dikirim'),
(10, 86, 20, '2025-05-18 19:28:24', 'Belum Dikirim'),
(11, 87, 20, '2025-05-18 19:37:33', 'Belum Dikirim'),
(12, 88, 20, '2025-05-18 19:49:15', 'Belum Dikirim'),
(13, 88, 20, '2025-05-18 20:10:05', 'Sedang Dikirim'),
(14, 87, 20, '2025-05-18 20:10:05', 'Sedang Dikirim'),
(15, 86, 20, '2025-05-18 20:10:05', 'Sedang Dikirim');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kota_melin`
--

CREATE TABLE `kota_melin` (
  `id_kota_melin` int(11) NOT NULL,
  `nama_kota_melin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kota_melin`
--

INSERT INTO `kota_melin` (`id_kota_melin`, `nama_kota_melin`) VALUES
(3, 'Cimahi'),
(6, 'Bandung'),
(7, 'Bogor'),
(12, 'Bekasi'),
(13, 'Jakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `label_pengiriman_melin`
--

CREATE TABLE `label_pengiriman_melin` (
  `id_label_melin` int(11) NOT NULL,
  `id_pengiriman_melin` int(11) NOT NULL,
  `waktu_cetak_melin` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `label_pengiriman_melin`
--

INSERT INTO `label_pengiriman_melin` (`id_label_melin`, `id_pengiriman_melin`, `waktu_cetak_melin`) VALUES
(2, 34, '2025-05-02 23:18:24'),
(3, 35, '2025-05-02 23:19:04'),
(4, 50, '2025-05-04 08:14:19'),
(5, 54, '2025-05-06 01:33:56'),
(6, 55, '2025-05-06 01:41:08'),
(7, 55, '2025-05-06 19:38:41'),
(8, 64, '2025-05-09 02:30:54'),
(9, 66, '2025-05-14 06:18:44'),
(10, 86, '2025-05-18 07:28:49'),
(11, 86, '2025-05-18 07:30:41'),
(12, 86, '2025-05-18 07:31:05'),
(13, 86, '2025-05-18 07:31:46'),
(14, 87, '2025-05-18 07:37:56'),
(15, 88, '2025-05-18 07:49:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran_melin`
--

CREATE TABLE `pembayaran_melin` (
  `id_pembayaran_cod_melin` int(11) NOT NULL,
  `id_pengiriman_melin` int(11) NOT NULL,
  `resi_melin` varchar(50) NOT NULL,
  `uang_diberikan_melin` decimal(10,2) NOT NULL,
  `kembalian_melin` decimal(10,2) NOT NULL,
  `tanggal_pembayaran_melin` timestamp NOT NULL DEFAULT current_timestamp(),
  `total_bayar_melin` int(11) NOT NULL,
  `status_pembayaran_melin` enum('Lunas') NOT NULL DEFAULT 'Lunas',
  `id_user_melin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pembayaran_melin`
--

INSERT INTO `pembayaran_melin` (`id_pembayaran_cod_melin`, `id_pengiriman_melin`, `resi_melin`, `uang_diberikan_melin`, `kembalian_melin`, `tanggal_pembayaran_melin`, `total_bayar_melin`, `status_pembayaran_melin`, `id_user_melin`) VALUES
(5, 35, 'JNE1745648871623', 400000.00, 50000.00, '2025-04-26 06:27:57', 350000, 'Lunas', 1),
(17, 48, 'JNE1746243965267', 100000.00, 40000.00, '2025-05-03 04:04:54', 60000, 'Lunas', 1),
(18, 49, 'JNE1746250613135', 150000.00, 30000.00, '2025-05-03 05:37:02', 120000, 'Lunas', 1),
(19, 50, 'JNE1746364407284', 150000.00, 30000.00, '2025-05-04 13:13:55', 120000, 'Lunas', 20),
(20, 51, 'JNE1746451216402', 100000.00, 10000.00, '2025-05-05 13:20:22', 90000, 'Lunas', 20),
(21, 52, 'JNE1746451301137', 20000.00, 2000.00, '2025-05-05 13:21:47', 18000, 'Lunas', 20),
(22, 53, 'JNE1746451364301', 30000.00, 0.00, '2025-05-05 13:22:50', 30000, 'Lunas', 20),
(23, 54, 'JNE1746513208388', 30000.00, 6000.00, '2025-05-06 06:33:45', 24000, 'Lunas', 20),
(24, 55, 'JNE1746513640712', 20000.00, 0.00, '2025-05-06 06:40:49', 20000, 'Lunas', 20),
(25, 59, 'JNE1746578484337', 520000.00, 0.00, '2025-05-07 00:41:33', 520000, 'Lunas', 20),
(26, 63, 'JNE1746772616314', 100000.00, 76000.00, '2025-05-09 06:37:23', 24000, 'Lunas', 20),
(27, 64, 'JNE1746775829883', 20000.00, 0.00, '2025-05-09 07:30:49', 20000, 'Lunas', 20),
(28, 65, 'JNE1747195579905', 75000.00, 3000.00, '2025-05-14 04:07:23', 72000, 'Lunas', 20),
(29, 66, 'JNE1747196192426', 50000.00, 2000.00, '2025-05-14 04:17:10', 48000, 'Lunas', 20),
(30, 67, 'JNE1747222036415', 20000.00, 15000.00, '2025-05-14 11:27:34', 5000, 'Lunas', 20),
(31, 68, 'JNE1747222074432', 200000.00, 160000.00, '2025-05-14 11:29:55', 40000, 'Lunas', 20),
(32, 69, 'JNE1747381546166', 111111.00, 99111.00, '2025-05-16 07:45:53', 12000, 'Lunas', 20),
(33, 70, 'JNE1747382189827', 100000.00, 80000.00, '2025-05-16 07:56:48', 20000, 'Lunas', 20),
(34, 71, 'JNE1747388680592', 11111.00, 9111.00, '2025-05-16 09:44:44', 2000, 'Lunas', 20),
(35, 72, 'JNE1747453648727', 21000.00, 1000.00, '2025-05-17 03:47:35', 20000, 'Lunas', 20),
(36, 72, 'JNE1747455714821', 7000.00, 1000.00, '2025-05-17 04:22:06', 6000, 'Lunas', 20),
(37, 76, 'JNE1747456465410', 150000.00, 3000.00, '2025-05-17 04:34:34', 147000, 'Lunas', 20),
(38, 77, 'JNE1747478461686', 7000.00, 2000.00, '2025-05-17 10:41:07', 5000, 'Lunas', 20),
(39, 79, 'JNE1747539928246', 19000.00, 1000.00, '2025-05-18 03:45:40', 18000, 'Lunas', 20),
(40, 80, 'JNE1747541376372', 21000.00, 1000.00, '2025-05-18 04:09:41', 20000, 'Lunas', 22),
(41, 81, 'JNE1747541614639', 333000.00, 13000.00, '2025-05-18 04:13:38', 320000, 'Lunas', 20),
(42, 82, 'JNE1747541925229', 13000.00, 1000.00, '2025-05-18 04:18:50', 12000, 'Lunas', 20),
(43, 83, 'JNE1747542210193', 8000.00, 2000.00, '2025-05-18 04:23:35', 6000, 'Lunas', 20),
(44, 84, 'JNE1747544106973', 21000.00, 1000.00, '2025-05-18 04:55:10', 20000, 'Lunas', 20),
(45, 85, 'JNE1747551696152', 33000.00, 0.00, '2025-05-18 07:01:48', 33000, 'Lunas', 20),
(46, 86, 'JNE1747571304649', 200000.00, 50000.00, '2025-05-18 12:28:43', 150000, 'Lunas', 20),
(47, 87, 'JNE1747571853414', 150000.00, 50000.00, '2025-05-18 12:37:51', 100000, 'Lunas', 20),
(48, 88, 'JNE1747572555366', 50000.00, 14000.00, '2025-05-18 12:49:31', 36000, 'Lunas', 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengiriman_melin`
--

CREATE TABLE `pengiriman_melin` (
  `id_pengiriman_melin` int(11) NOT NULL,
  `id_user_melin` int(11) NOT NULL,
  `id_kota_pengirim_melin` int(11) DEFAULT NULL,
  `id_kecamatan_pengirim_melin` int(11) DEFAULT NULL,
  `id_kelurahan_pengirim_melin` int(11) DEFAULT NULL,
  `id_kota_penerima_melin` int(11) DEFAULT NULL,
  `id_kecamatan_penerima_melin` int(11) DEFAULT NULL,
  `id_kelurahan_penerima_melin` int(11) DEFAULT NULL,
  `nama_kota_pengirim_melin` varchar(100) DEFAULT NULL,
  `nama_kecamatan_pengirim_melin` varchar(100) DEFAULT NULL,
  `nama_kelurahan_pengirim_melin` varchar(100) DEFAULT NULL,
  `nama_kota_penerima_melin` varchar(100) DEFAULT NULL,
  `nama_kecamatan_penerima_melin` varchar(100) DEFAULT NULL,
  `nama_kelurahan_penerima_melin` varchar(100) DEFAULT NULL,
  `resi_melin` varchar(20) NOT NULL,
  `nama_barang_melin` varchar(255) NOT NULL,
  `jumlah_produk_melin` int(11) NOT NULL,
  `berat_melin` decimal(10,2) NOT NULL,
  `layanan_melin` enum('Ekspres','Reguler','Hemat') NOT NULL,
  `status_pengiriman_melin` enum('Belum Dikirim','Sedang Dikirim','Sedang Menuju Alamat','Sudah Sampai','Dibatalkan') NOT NULL DEFAULT 'Belum Dikirim',
  `nama_pengirim_melin` varchar(255) NOT NULL,
  `telepon_pengirim_melin` varchar(15) NOT NULL,
  `alamat_pengirim_melin` text NOT NULL,
  `nama_penerima_melin` varchar(255) NOT NULL,
  `telepon_penerima_melin` varchar(15) NOT NULL,
  `alamat_penerima_melin` text NOT NULL,
  `status_pembayaran_melin` enum('Lunas','Belum Lunas') NOT NULL DEFAULT 'Belum Lunas',
  `metode_pembayaran_melin` enum('CASH') DEFAULT NULL,
  `total_harga_melin` int(11) NOT NULL,
  `tanggal_input_melin` datetime DEFAULT current_timestamp(),
  `estimasi_sampai_melin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengiriman_melin`
--

INSERT INTO `pengiriman_melin` (`id_pengiriman_melin`, `id_user_melin`, `id_kota_pengirim_melin`, `id_kecamatan_pengirim_melin`, `id_kelurahan_pengirim_melin`, `id_kota_penerima_melin`, `id_kecamatan_penerima_melin`, `id_kelurahan_penerima_melin`, `nama_kota_pengirim_melin`, `nama_kecamatan_pengirim_melin`, `nama_kelurahan_pengirim_melin`, `nama_kota_penerima_melin`, `nama_kecamatan_penerima_melin`, `nama_kelurahan_penerima_melin`, `resi_melin`, `nama_barang_melin`, `jumlah_produk_melin`, `berat_melin`, `layanan_melin`, `status_pengiriman_melin`, `nama_pengirim_melin`, `telepon_pengirim_melin`, `alamat_pengirim_melin`, `nama_penerima_melin`, `telepon_penerima_melin`, `alamat_penerima_melin`, `status_pembayaran_melin`, `metode_pembayaran_melin`, `total_harga_melin`, `tanggal_input_melin`, `estimasi_sampai_melin`) VALUES
(72, 20, 3, 6, 7, 3, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'JNE1747455714821', 'mel', 2, 1.00, 'Reguler', 'Sedang Menuju Alamat', 'jj', '08888888', 'jl', 'ja', '08', 'jl', 'Lunas', 'CASH', 6000, '2025-05-17 11:21:54', '2025-05-20'),
(73, 20, 3, 6, 7, 3, 3, 3, 'Cimahi', '4444', '444444444444', 'Cimahi', 'Cimahi Utara', 'Citeureup', 'JNE1747456040177', 'jj', 7, 7.00, 'Reguler', 'Sudah Sampai', 'ff', '9', 'f', 'ff', '4', 'f', 'Belum Lunas', '', 147000, '2025-05-17 11:27:20', '2025-05-20'),
(74, 20, 3, 6, 7, 3, 6, 7, 'Cimahi', '4444', '444444444444', 'Cimahi', '4444', '444444444444', 'JNE1747456170989', 'jj', 7, 7.00, 'Reguler', 'Sedang Menuju Alamat', 'ff', '9', 'f', 'ff', '4', 'f', 'Belum Lunas', '', 147000, '2025-05-17 11:29:30', '2025-05-20'),
(75, 20, 3, 6, 7, 3, 3, 3, 'Cimahi', '4444', '444444444444', 'Cimahi', 'Cimahi Utara', 'Citeureup', 'JNE1747456394983', 'jj', 7, 7.00, 'Reguler', 'Sedang Menuju Alamat', 'ff', '9', 'f', 'ff', '4', 'f', 'Belum Lunas', '', 147000, '2025-05-17 11:33:14', '2025-05-20'),
(76, 20, 3, 6, 7, 3, 3, 3, 'Cimahi', '4444', '444444444444', 'Cimahi', 'Cimahi Utara', 'Citeureup', 'JNE1747456465410', 'jj', 7, 7.00, 'Reguler', 'Sedang Menuju Alamat', 'ff', '9', 'f', 'ff', '4', 'f', 'Lunas', 'CASH', 147000, '2025-05-17 11:34:25', '2025-05-20'),
(77, 20, 3, 6, 7, 3, 3, 6, 'Cimahi', '4444', '444444444444', 'Cimahi', 'Cimahi Utara', 'Cipageran', 'JNE1747478461686', '2222', 1, 1.00, 'Ekspres', 'Sedang Menuju Alamat', '1', '1', '1', '22', '2', '2', 'Lunas', 'CASH', 5000, '2025-05-17 17:41:01', '2025-05-20'),
(78, 20, 3, 3, 6, 3, 3, 3, 'Cimahi', 'Cimahi Utara', 'Cipageran', 'Cimahi', 'Cimahi Utara', 'Citeureup', 'JNE1747539897405', 'ayam', 1, 2.00, 'Reguler', 'Sudah Sampai', 'mel', '08888888', 'kmrng', 'linda', '0888888888', 'kmrnh', 'Belum Lunas', '', 6000, '2025-05-18 10:44:57', '2025-05-21'),
(79, 20, 3, 3, 6, 3, 3, 3, 'Cimahi', 'Cimahi Utara', 'Cipageran', 'Cimahi', 'Cimahi Utara', 'Citeureup', 'JNE1747539928246', 'ayam', 3, 2.00, 'Reguler', 'Sedang Menuju Alamat', 'mel', '08888888', 'kmrng', 'linda', '0888888888', 'kmrnh', 'Lunas', 'CASH', 18000, '2025-05-18 10:45:28', '2025-05-21'),
(80, 22, 3, 3, 6, 3, 3, 3, 'Cimahi', 'Cimahi Utara', 'Cipageran', 'Cimahi', 'Cimahi Utara', 'Citeureup', 'JNE1747541376372', 'w', 2, 2.00, 'Ekspres', 'Belum Dikirim', 'mel', '08888888', 'g', '1111', '111', 'g', 'Lunas', 'CASH', 20000, '2025-05-18 11:09:36', '2025-05-21'),
(81, 20, 3, 3, 6, 3, 3, 3, 'Cimahi', 'Cimahi Utara', 'Cipageran', 'Cimahi', 'Cimahi Utara', 'Citeureup', 'JNE1747541614639', '3', 2, 32.00, 'Ekspres', 'Sudah Sampai', 'mel', '22', '2', '2', '111', '2', 'Lunas', 'CASH', 320000, '2025-05-18 11:13:34', '2025-05-21'),
(82, 20, 3, 3, 6, 3, 3, 6, 'Cimahi', 'Cimahi Utara', 'Cipageran', 'Cimahi', 'Cimahi Utara', 'Cipageran', 'JNE1747541925229', 'ssssssssss', 4, 1.00, 'Reguler', 'Sedang Menuju Alamat', '4', '08888888', '4', '4', '4', '4', 'Lunas', 'CASH', 12000, '2025-05-18 11:18:45', '2025-05-21'),
(83, 20, 3, 3, 6, 3, 3, 3, 'Cimahi', 'Cimahi Utara', 'Cipageran', 'Cimahi', 'Cimahi Utara', 'Citeureup', 'JNE1747542210193', 'aaaaaaaaaa', 2, 1.00, 'Reguler', 'Sedang Menuju Alamat', 'aaaaaaaa', '08888888', 'aaaaaaa', 'aaaaaaaaaa', '08', 'aaaaa', 'Lunas', 'CASH', 6000, '2025-05-18 11:23:30', '2025-05-21'),
(84, 20, 3, 3, 3, 3, 3, 3, 'Cimahi', 'Cimahi Utara', 'Citeureup', 'Cimahi', 'Cimahi Utara', 'Citeureup', 'JNE1747544106973', 'q', 2, 2.00, 'Ekspres', 'Sudah Sampai', 'q', 'q', 'q', 'q', 'q', 'q', 'Lunas', 'CASH', 20000, '2025-05-18 11:55:06', '2025-05-21'),
(85, 20, 3, 3, 6, 3, 3, 6, 'Cimahi', 'Cimahi Utara', 'Cipageran', 'Cimahi', 'Cimahi Utara', 'Cipageran', 'JNE1747551696152', 'ww', 1, 11.00, 'Reguler', 'Sedang Menuju Alamat', '1', '1', '1', 'xx', '88', 'sd', 'Lunas', 'CASH', 33000, '2025-05-18 14:01:36', '2025-05-21'),
(86, 20, 3, 3, 6, 6, 7, 8, 'Cimahi', 'Cimahi Utara', 'Cipageran', 'Bandung', 'Andir', 'Ciroyom', 'JNE1747571304649', 'botol minum', 10, 5.00, 'Reguler', 'Sedang Dikirim', 'azkia', '088888888888', 'jl.harapan palsu rt.09 rw.08 no.90', 'lanaya', '088888888888', 'jl.manis di awal rt.05 rw.09 no.34', 'Lunas', 'CASH', 150000, '2025-05-18 19:28:24', '2025-05-20'),
(87, 20, 6, 8, 9, 3, 3, 3, 'Bandung', 'Lengkong', 'Burangrang', 'Cimahi', 'Cimahi Utara', 'Citeureup', 'JNE1747571853414', 'dimsum', 10, 5.00, 'Hemat', 'Sedang Dikirim', 'halim', '088888888888', 'jl.kali rt.09 rw.09 no.09', 'linda', '088888888888', 'jl.kali rt.04 rw.09 no.08', 'Lunas', 'CASH', 100000, '2025-05-18 19:37:33', '2025-05-22'),
(88, 20, 6, 8, 9, 3, 3, 3, 'Bandung', 'Lengkong', 'Burangrang', 'Cimahi', 'Cimahi Utara', 'Citeureup', 'JNE1747572555366', 'botol minum', 6, 3.00, 'Hemat', 'Sedang Dikirim', 'mel', '08888888', 'hbfdvbfdb', 'linda', '0888888888', 'fgdshntehfdgb', 'Lunas', 'CASH', 36000, '2025-05-18 19:49:15', '2025-05-22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tracking_melin`
--

CREATE TABLE `tracking_melin` (
  `id_tracking_melin` int(11) NOT NULL,
  `resi_melin` varchar(20) NOT NULL,
  `status_pengiriman_melin` enum('Belum Dikirim','Sedang Dikirim','Selesai') NOT NULL,
  `waktu_update_melin` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tracking_melin`
--

INSERT INTO `tracking_melin` (`id_tracking_melin`, `resi_melin`, `status_pengiriman_melin`, `waktu_update_melin`) VALUES
(1, 'JNE1746243965267', 'Belum Dikirim', '2025-05-04 10:14:20'),
(2, 'JNE1746364407284', 'Sedang Dikirim', '2025-05-04 13:15:17'),
(3, 'JNE1746513208388', 'Belum Dikirim', '2025-05-06 06:34:32'),
(4, 'JNE1747478461686', '', '2025-05-18 07:58:24'),
(5, 'JNE1747478461686', '', '2025-05-18 07:58:54'),
(6, 'JNE1747478461686', '', '2025-05-18 08:00:00'),
(7, 'JNE1747478461686', '', '2025-05-18 08:00:15'),
(8, 'JNE1747478461686', '', '2025-05-18 08:26:51'),
(9, 'JNE1747478461686', '', '2025-05-18 12:38:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_melin`
--

CREATE TABLE `users_melin` (
  `id_user_melin` int(11) NOT NULL,
  `foto_profil_melin` varchar(255) NOT NULL,
  `nama_melin` varchar(100) NOT NULL,
  `username_melin` varchar(50) NOT NULL,
  `alamat_melin` text NOT NULL,
  `jenis_kelamin_melin` enum('Laki-Laki','Perempuan') NOT NULL,
  `no_telp_melin` varchar(15) NOT NULL,
  `email_melin` varchar(100) NOT NULL,
  `password_melin` varchar(255) NOT NULL,
  `role_melin` enum('admin','petugas','kurir') NOT NULL,
  `tgl_dibuat_melin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users_melin`
--

INSERT INTO `users_melin` (`id_user_melin`, `foto_profil_melin`, `nama_melin`, `username_melin`, `alamat_melin`, `jenis_kelamin_melin`, `no_telp_melin`, `email_melin`, `password_melin`, `role_melin`, `tgl_dibuat_melin`) VALUES
(1, 'Oryctolagus_cuniculus_Tasmania_2.jpg', 'melinda', 'melinda', 'Jl.Kamarung', 'Perempuan', '083844330225', 'melinda@gmail.com', '$2y$10$BofXXqmPWe2KBNV3JpFJn.0QneR28cV1Ej0YxQIWNUu0mv.sI2Lai', 'petugas', '2025-04-02 17:31:23'),
(19, 'profil_68173a0b924c9.jpg', 'melinda puspita', 'puspita', 'jl. kamarung ', 'Perempuan', '083844330225', 'melpus@gmail.com', '$2y$10$dImReHslhnDJAk5YvQ9BKewTyxDnvnSYEi5C0OXfGjHocFJVVfSvy', 'admin', '2025-05-04 11:57:31'),
(20, 'profil_68173a94b0291.jpg', 'anggraeni melinda', 'raeni', 'jl. bandung', 'Laki-Laki', '008382399040', 'raeni@gmail.com', '$2y$10$byjt7DVHbnBpP6aILZG5.uX1F6Rt98ROJ2p85IqGtEjKK5Ig5fJ/i', 'petugas', '2025-05-04 11:59:48'),
(22, 'profil_6821600ed12a5.png', 'kaqwan', 'kurir', 'Jl.Kaqwan', 'Laki-Laki', '083844330225', 'kaqwan@gmail.com', '$2y$10$p3q1ND5N9seJivzzxeUeu.c89VMZDTu3MqXl1OKnsEtQiX/4cLJn2', 'kurir', '2025-05-12 04:42:22'),
(23, 'profil_6829d55be41f8.jpg', 'monkey d luffy', 'karet', 'jl.laut jepanggg', 'Laki-Laki', '083844330225', 'karet@gmail.com', '$2y$10$dTzrb6PQGsWD2EQNsmVWMuaMpfjkvSuBmYhQdZxR1gFnnM/rmk.ky', 'admin', '2025-05-18 14:40:59');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kecamatan_melin`
--
ALTER TABLE `kecamatan_melin`
  ADD PRIMARY KEY (`id_kecamatan_melin`),
  ADD KEY `id_kota_melin` (`id_kota_melin`);

--
-- Indeks untuk tabel `kelurahan_melin`
--
ALTER TABLE `kelurahan_melin`
  ADD PRIMARY KEY (`id_kelurahan_melin`),
  ADD KEY `id_kecamatan_melin` (`id_kecamatan_melin`);

--
-- Indeks untuk tabel `konfirmasi_kurir_melin`
--
ALTER TABLE `konfirmasi_kurir_melin`
  ADD PRIMARY KEY (`id_konfirmasi_kurir_melin`),
  ADD KEY `fk_kurir_pengiriman_idx` (`id_pengiriman_melin`),
  ADD KEY `fk_kurir_user_idx` (`id_kurir_melin`);

--
-- Indeks untuk tabel `konfirmasi_petugas_melin`
--
ALTER TABLE `konfirmasi_petugas_melin`
  ADD PRIMARY KEY (`id_konfirmasi_petugas_melin`),
  ADD KEY `id_pengiriman_melin` (`id_pengiriman_melin`),
  ADD KEY `id_petugas_melin` (`id_petugas_melin`);

--
-- Indeks untuk tabel `kota_melin`
--
ALTER TABLE `kota_melin`
  ADD PRIMARY KEY (`id_kota_melin`);

--
-- Indeks untuk tabel `label_pengiriman_melin`
--
ALTER TABLE `label_pengiriman_melin`
  ADD PRIMARY KEY (`id_label_melin`),
  ADD KEY `id_pengiriman_melin` (`id_pengiriman_melin`);

--
-- Indeks untuk tabel `pembayaran_melin`
--
ALTER TABLE `pembayaran_melin`
  ADD PRIMARY KEY (`id_pembayaran_cod_melin`),
  ADD KEY `id_user_melin` (`id_user_melin`),
  ADD KEY `id_pengiriman_melin` (`id_pengiriman_melin`);

--
-- Indeks untuk tabel `pengiriman_melin`
--
ALTER TABLE `pengiriman_melin`
  ADD PRIMARY KEY (`id_pengiriman_melin`),
  ADD KEY `resi_melin` (`resi_melin`),
  ADD KEY `id_user_melin` (`id_user_melin`),
  ADD KEY `fk_kota_pengirim` (`id_kota_pengirim_melin`),
  ADD KEY `fk_kecamatan_pengirim` (`id_kecamatan_pengirim_melin`),
  ADD KEY `fk_kelurahan_pengirim` (`id_kelurahan_pengirim_melin`),
  ADD KEY `fk_kota_penerima` (`id_kota_penerima_melin`),
  ADD KEY `fk_kecamatan_penerima` (`id_kecamatan_penerima_melin`),
  ADD KEY `fk_kelurahan_penerima` (`id_kelurahan_penerima_melin`);

--
-- Indeks untuk tabel `tracking_melin`
--
ALTER TABLE `tracking_melin`
  ADD PRIMARY KEY (`id_tracking_melin`),
  ADD KEY `resi_melin` (`resi_melin`);

--
-- Indeks untuk tabel `users_melin`
--
ALTER TABLE `users_melin`
  ADD PRIMARY KEY (`id_user_melin`),
  ADD UNIQUE KEY `username_melin` (`username_melin`),
  ADD UNIQUE KEY `email_melin` (`email_melin`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kecamatan_melin`
--
ALTER TABLE `kecamatan_melin`
  MODIFY `id_kecamatan_melin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `kelurahan_melin`
--
ALTER TABLE `kelurahan_melin`
  MODIFY `id_kelurahan_melin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `konfirmasi_kurir_melin`
--
ALTER TABLE `konfirmasi_kurir_melin`
  MODIFY `id_konfirmasi_kurir_melin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `konfirmasi_petugas_melin`
--
ALTER TABLE `konfirmasi_petugas_melin`
  MODIFY `id_konfirmasi_petugas_melin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `kota_melin`
--
ALTER TABLE `kota_melin`
  MODIFY `id_kota_melin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `label_pengiriman_melin`
--
ALTER TABLE `label_pengiriman_melin`
  MODIFY `id_label_melin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `pembayaran_melin`
--
ALTER TABLE `pembayaran_melin`
  MODIFY `id_pembayaran_cod_melin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `pengiriman_melin`
--
ALTER TABLE `pengiriman_melin`
  MODIFY `id_pengiriman_melin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT untuk tabel `tracking_melin`
--
ALTER TABLE `tracking_melin`
  MODIFY `id_tracking_melin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `users_melin`
--
ALTER TABLE `users_melin`
  MODIFY `id_user_melin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kecamatan_melin`
--
ALTER TABLE `kecamatan_melin`
  ADD CONSTRAINT `kecamatan_melin_ibfk_1` FOREIGN KEY (`id_kota_melin`) REFERENCES `kota_melin` (`id_kota_melin`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kelurahan_melin`
--
ALTER TABLE `kelurahan_melin`
  ADD CONSTRAINT `kelurahan_melin_ibfk_1` FOREIGN KEY (`id_kecamatan_melin`) REFERENCES `kecamatan_melin` (`id_kecamatan_melin`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `konfirmasi_kurir_melin`
--
ALTER TABLE `konfirmasi_kurir_melin`
  ADD CONSTRAINT `fk_kurir_pengiriman` FOREIGN KEY (`id_pengiriman_melin`) REFERENCES `pengiriman_melin` (`id_pengiriman_melin`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_kurir_user` FOREIGN KEY (`id_kurir_melin`) REFERENCES `users_melin` (`id_user_melin`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `konfirmasi_petugas_melin`
--
ALTER TABLE `konfirmasi_petugas_melin`
  ADD CONSTRAINT `konfirmasi_petugas_melin_ibfk_1` FOREIGN KEY (`id_pengiriman_melin`) REFERENCES `pengiriman_melin` (`id_pengiriman_melin`) ON DELETE CASCADE,
  ADD CONSTRAINT `konfirmasi_petugas_melin_ibfk_2` FOREIGN KEY (`id_petugas_melin`) REFERENCES `users_melin` (`id_user_melin`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `label_pengiriman_melin`
--
ALTER TABLE `label_pengiriman_melin`
  ADD CONSTRAINT `label_pengiriman_melin_ibfk_1` FOREIGN KEY (`id_pengiriman_melin`) REFERENCES `pengiriman_melin` (`id_pengiriman_melin`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pembayaran_melin`
--
ALTER TABLE `pembayaran_melin`
  ADD CONSTRAINT `pembayaran_melin_cod_ibfk_1` FOREIGN KEY (`id_user_melin`) REFERENCES `users_melin` (`id_user_melin`),
  ADD CONSTRAINT `pembayaran_melin_cod_ibfk_2` FOREIGN KEY (`id_pengiriman_melin`) REFERENCES `pengiriman_melin` (`id_pengiriman_melin`);

--
-- Ketidakleluasaan untuk tabel `tracking_melin`
--
ALTER TABLE `tracking_melin`
  ADD CONSTRAINT `tracking_melin_ibfk_1` FOREIGN KEY (`resi_melin`) REFERENCES `pengiriman_melin` (`resi_melin`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
