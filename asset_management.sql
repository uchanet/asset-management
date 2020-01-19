-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Jan 2020 pada 07.28
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asset_management`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `asset`
--

CREATE TABLE `asset` (
  `id` int(10) NOT NULL,
  `barang_id` int(10) NOT NULL,
  `staf_id` int(10) NOT NULL,
  `kondisi` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `asset`
--

INSERT INTO `asset` (`id`, `barang_id`, `staf_id`, `kondisi`, `status`, `tanggal`) VALUES
(1, 1, 2, 'Baik ji', 1, '2019-09-16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(10) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tipe` varchar(50) NOT NULL,
  `merek` varchar(50) NOT NULL,
  `kategori_id` int(10) NOT NULL,
  `no_asset` varchar(20) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `nama`, `tipe`, `merek`, `kategori_id`, `no_asset`, `status`) VALUES
(1, 'Jupiter', 'Motor', 'Yamaha', 0, '', 1),
(2, 'Vario', 'Motor', 'Honda', 0, '', 1),
(3, 'Laptop', 'Aspire4830TG', 'Acer', 3, 'A100', 1),
(4, 'Smart TV', 'KX100', 'Sony', 4, 'A200', 1),
(5, 'erw asdasd', 'Aspire4830TG', 'Sony', 3, 'A2002', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(2) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama`) VALUES
(1, 'Staff Keuangan'),
(2, 'Security'),
(3, 'Staff IT'),
(4, 'Manager'),
(5, 'Admin'),
(6, 'Super Visor'),
(7, 'Office Boy'),
(9, 'Operation Manager'),
(10, 'Database Office'),
(11, 'Head Office'),
(12, 'Finance Manager'),
(13, 'Senior Analis'),
(14, 'Konsultan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(2) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama_kategori`) VALUES
(1, 'Motor'),
(2, 'Mobil'),
(3, 'Laptop'),
(4, 'Desktop'),
(5, 'Aksesoris'),
(6, 'Meja');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasi`
--

CREATE TABLE `lokasi` (
  `id` int(2) NOT NULL,
  `nama_lokasi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `lokasi`
--

INSERT INTO `lokasi` (`id`, `nama_lokasi`) VALUES
(1, 'Ujung Pandang'),
(2, 'Sengkang'),
(3, 'Soppeng'),
(4, 'Wajo'),
(5, 'Gowa'),
(6, 'Pangkep'),
(7, 'Jakarta'),
(8, 'Bandung'),
(9, 'Semarang'),
(10, 'Aceh'),
(11, 'Jogja'),
(12, 'Manado');

-- --------------------------------------------------------

--
-- Struktur dari tabel `staff`
--

CREATE TABLE `staff` (
  `id` int(10) NOT NULL,
  `nama_staff` varchar(50) NOT NULL,
  `lokasi_id` int(2) NOT NULL,
  `jabatan_id` int(2) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `staff`
--

INSERT INTO `staff` (`id`, `nama_staff`, `lokasi_id`, `jabatan_id`, `status`) VALUES
(1, 'Syahrul', 1, 3, 1),
(2, 'Ramadhan', 2, 2, 1),
(3, 'Khaidir', 1, 2, 1),
(4, 'Bayu', 3, 1, 1),
(5, 'Akbar', 4, 5, 1),
(6, 'Ahsan', 5, 4, 1),
(7, 'Umar', 7, 7, 1),
(8, 'Ridho', 9, 10, 1),
(9, 'Roma', 3, 12, 1),
(10, 'Indra', 1, 7, 1),
(11, 'Asep', 10, 10, 1),
(12, 'Cecep', 8, 8, 1),
(13, 'test', 0, 0, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `role` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama_user`, `email`, `password`, `status`, `role`, `foto`) VALUES
(1, 'ucha', 'iem.kautsar@gmail.com', 'aset', 1, 'admin', 'ucha.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `asset`
--
ALTER TABLE `asset`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
