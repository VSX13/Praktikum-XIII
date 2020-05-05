-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Bulan Mei 2020 pada 21.59
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_country`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_acase`
--

CREATE TABLE `tb_acase` (
  `id_acase` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_acase`
--

INSERT INTO `tb_acase` (`id_acase`, `id_country`, `active`) VALUES
(1, 1, 831100),
(2, 2, 84403),
(3, 3, 105205),
(4, 4, 95365),
(5, 5, 139123),
(6, 6, 35816),
(7, 7, 72852),
(8, 8, 84235),
(9, 9, 14268),
(10, 10, 648);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_country`
--

CREATE TABLE `tb_country` (
  `id_country` int(11) NOT NULL,
  `country` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_country`
--

INSERT INTO `tb_country` (`id_country`, `country`) VALUES
(1, 'USA'),
(2, 'Spain'),
(3, 'Italy'),
(4, 'France'),
(5, 'UK'),
(6, 'Germany'),
(7, 'Turkey'),
(8, 'Russia'),
(9, 'Iran'),
(10, 'China');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_ncase`
--

CREATE TABLE `tb_ncase` (
  `id_ncase` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `new` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_ncase`
--

INSERT INTO `tb_ncase` (`id_ncase`, `id_country`, `new`) VALUES
(1, 1, 19522),
(2, 2, 2706),
(3, 3, 2091),
(4, 4, 2638),
(5, 5, 3996),
(6, 6, 673),
(7, 7, 2392),
(8, 8, 6411),
(9, 9, 1112),
(10, 10, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_ndeaths`
--

CREATE TABLE `tb_ndeaths` (
  `id_ndeaths` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `new` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_ndeaths`
--

INSERT INTO `tb_ndeaths` (`id_ndeaths`, `id_country`, `new`) VALUES
(1, 1, 1843),
(2, 2, 301),
(3, 3, 382),
(4, 4, 367),
(5, 5, 586),
(6, 6, 89),
(7, 7, 92),
(8, 8, 73),
(9, 9, 71),
(10, 10, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tcase`
--

CREATE TABLE `tb_tcase` (
  `id_tcase` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_tcase`
--

INSERT INTO `tb_tcase` (`id_tcase`, `id_country`, `total`) VALUES
(1, 1, 1029878),
(2, 2, 232128),
(3, 3, 201505),
(4, 4, 165911),
(5, 5, 161145),
(6, 6, 159431),
(7, 7, 114653),
(8, 8, 93558),
(9, 9, 92584),
(10, 10, 82836);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tdeaths`
--

CREATE TABLE `tb_tdeaths` (
  `id_tdeaths` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_tdeaths`
--

INSERT INTO `tb_tdeaths` (`id_tdeaths`, `id_country`, `total`) VALUES
(1, 1, 58640),
(2, 2, 23822),
(3, 3, 27359),
(4, 4, 23660),
(5, 5, 21678),
(6, 6, 6215),
(7, 7, 2992),
(8, 8, 867),
(9, 9, 5877),
(10, 10, 4633);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_trecovered`
--

CREATE TABLE `tb_trecovered` (
  `id_trecovered` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_trecovered`
--

INSERT INTO `tb_trecovered` (`id_trecovered`, `id_country`, `total`) VALUES
(1, 1, 140138),
(2, 2, 123093),
(3, 3, 68941),
(4, 4, 46886),
(5, 5, 0),
(6, 6, 117400),
(7, 7, 38809),
(8, 8, 8456),
(9, 9, 72439),
(10, 10, 77555);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_acase`
--
ALTER TABLE `tb_acase`
  ADD PRIMARY KEY (`id_acase`);

--
-- Indeks untuk tabel `tb_country`
--
ALTER TABLE `tb_country`
  ADD PRIMARY KEY (`id_country`);

--
-- Indeks untuk tabel `tb_ncase`
--
ALTER TABLE `tb_ncase`
  ADD PRIMARY KEY (`id_ncase`);

--
-- Indeks untuk tabel `tb_ndeaths`
--
ALTER TABLE `tb_ndeaths`
  ADD PRIMARY KEY (`id_ndeaths`);

--
-- Indeks untuk tabel `tb_tcase`
--
ALTER TABLE `tb_tcase`
  ADD PRIMARY KEY (`id_tcase`);

--
-- Indeks untuk tabel `tb_tdeaths`
--
ALTER TABLE `tb_tdeaths`
  ADD PRIMARY KEY (`id_tdeaths`);

--
-- Indeks untuk tabel `tb_trecovered`
--
ALTER TABLE `tb_trecovered`
  ADD PRIMARY KEY (`id_trecovered`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_acase`
--
ALTER TABLE `tb_acase`
  MODIFY `id_acase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_country`
--
ALTER TABLE `tb_country`
  MODIFY `id_country` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_ncase`
--
ALTER TABLE `tb_ncase`
  MODIFY `id_ncase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_ndeaths`
--
ALTER TABLE `tb_ndeaths`
  MODIFY `id_ndeaths` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_tcase`
--
ALTER TABLE `tb_tcase`
  MODIFY `id_tcase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_tdeaths`
--
ALTER TABLE `tb_tdeaths`
  MODIFY `id_tdeaths` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_trecovered`
--
ALTER TABLE `tb_trecovered`
  MODIFY `id_trecovered` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
