-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 11 Feb 2020 pada 10.35
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `idkategori` int(5) NOT NULL,
  `nama_kategori` text NOT NULL,
  `icon` text NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`idkategori`, `nama_kategori`, `icon`, `keterangan`) VALUES
(8, 'Rumah Sakit', 'hospital-building.png', 'Puskesmas Muncan'),
(14, 'Pasar', 'market.png', 'Jelojok Kopang'),
(15, 'Sekolah', 'school.png', 'STMIK LOMBOK'),
(16, 'Masjid', 'mosquee.png', 'tempat ibadah'),
(17, 'Sungai', 'lake.png', 'kokoh');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kecamatan`
--

CREATE TABLE `kecamatan` (
  `idkecamatan` int(10) NOT NULL,
  `Nama_Wilayah` text NOT NULL,
  `Wilayah` text NOT NULL,
  `Data_Wilayah` text NOT NULL,
  `Keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kecamatan`
--

INSERT INTO `kecamatan` (`idkecamatan`, `Nama_Wilayah`, `Wilayah`, `Data_Wilayah`, `Keterangan`) VALUES
(3, 'Kecamatan Kopang', 'Kopang', 'kopang.js', 'Batas Kecamatan Kopanag'),
(4, 'Kecamatan Pringgarata', 'Pringgarata', 'peringgarata.js', 'Batas Kecamatan Pringgarata'),
(5, 'Kecamatan Pujut', 'Pujut', 'pujut.js', 'Batas Kecamatan Pujut'),
(6, 'Kecamatan Janapria', 'Janapria', 'janapria.js', 'Batas Kecamatan Janapria');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasi`
--

CREATE TABLE `lokasi` (
  `idlokasi` int(11) NOT NULL,
  `Nama_Lokasi` text NOT NULL,
  `idkategori` text NOT NULL,
  `Latitude` varchar(25) NOT NULL,
  `Logitude` varchar(25) NOT NULL,
  `Keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `lokasi`
--

INSERT INTO `lokasi` (`idlokasi`, `Nama_Lokasi`, `idkategori`, `Latitude`, `Logitude`, `Keterangan`) VALUES
(6, 'muncan', 'puskesmas', '111', '2222', 'puskesmas'),
(8, 'monggas', 'camat', '555', '4131', 'kantor desa'),
(9, 'monggas', '14', '-8.705589674528062', '116.27878189086915', 'tempat berbelanja'),
(10, 'mujur', '15', '-8.68963906812765', '116.31191253662111', 'Tempat belajar'),
(11, 'peringgarata', '8', '-8.695747891260487', '116.26539230346681', 'puskesmas'),
(12, 'Praya', '16', '-8.699311325423164', '116.26951217651369', 'tempat ibadah'),
(13, 'mujur', '8', '-8.696087267403255', '116.30453109741212', 'rawat jalan'),
(14, 'kokoh babak', '17', '-8.68726338779965', '116.28719329833986', 'blabur'),
(15, 'kuta', '14', '-8.702705040718609', '116.28221511840822', 'aooa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`idkecamatan`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`idlokasi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `idkategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `idkecamatan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `idlokasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
