-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jun 2019 pada 05.04
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
-- Database: `dbwebsekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_karyawan`
--

CREATE TABLE `tb_karyawan` (
  `nik` int(11) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `nama_karyawan` varchar(45) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `tmp_lahir` varchar(25) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `status` enum('ketua','guru','staff') NOT NULL,
  `mengajar` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_karyawan`
--

INSERT INTO `tb_karyawan` (`nik`, `foto`, `nama_karyawan`, `jk`, `tmp_lahir`, `tgl_lahir`, `status`, `mengajar`, `alamat`, `no_hp`) VALUES
(11001, 'guru.jpg', 'Abdul Ghoni', 'L', 'Pekalongan', '2019-06-18', 'guru', 'Mesin', 'Sidomulyo', ''),
(11002, 'client2.png', 'Ahmad', 'L', 'Pekalongan', '2015-06-19', 'guru', 'Mesin', 'Sidomulyo', '3333333');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategoripost`
--

CREATE TABLE `tb_kategoripost` (
  `id_kategori` int(11) NOT NULL,
  `kategori_post` varchar(30) NOT NULL,
  `slug_katpost` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kategoripost`
--

INSERT INTO `tb_kategoripost` (`id_kategori`, `kategori_post`, `slug_katpost`) VALUES
(1, 'Breaking News', 'breaking-new'),
(2, 'Sistem Zonasi', 'sistem-zonasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_menu`
--

CREATE TABLE `tb_menu` (
  `id_menu` int(11) NOT NULL,
  `menu` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_menu`
--

INSERT INTO `tb_menu` (`id_menu`, `menu`) VALUES
(1, 'Profile'),
(2, 'Visi dan Misi'),
(3, 'Struktur Organisasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_menudetail`
--

CREATE TABLE `tb_menudetail` (
  `id_md` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `isi_menu` text NOT NULL,
  `slug_menu` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_menudetail`
--

INSERT INTO `tb_menudetail` (`id_md`, `id_menu`, `isi_menu`, `slug_menu`) VALUES
(1, 1, 'isi menu', 'isi-menu'),
(2, 2, 'Visi Misi', 'visi-misi'),
(3, 3, 'Ini detail menu struktur organisasi.', 'struktur-organisasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_post`
--

CREATE TABLE `tb_post` (
  `id_post` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `tgl_post` date NOT NULL,
  `judul` varchar(100) NOT NULL,
  `slug_judul` varchar(200) NOT NULL,
  `header` varchar(20) NOT NULL,
  `isi_post` text NOT NULL,
  `id_user` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_post`
--

INSERT INTO `tb_post` (`id_post`, `id_kategori`, `tgl_post`, `judul`, `slug_judul`, `header`, `isi_post`, `id_user`) VALUES
(1, 1, '2019-06-05', 'Prestasi Siswa', 'prestasi-siswa', 'Prestasi', 'isi post', 'ID001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `nis` varchar(10) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `nama_siswa` varchar(45) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `tmp_lahir` varchar(25) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `tahun_masuk` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`nis`, `foto`, `nama_siswa`, `jk`, `tmp_lahir`, `tgl_lahir`, `alamat`, `tahun_masuk`) VALUES
('0011', 'man3.jpg', 'Andika', 'L', 'Pekalongan', '2019-06-19', 'Sidomulyo', 2025);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` char(5) NOT NULL,
  `nama_user` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama_user`, `password`) VALUES
('ID001', 'Admin', '21232f297a57a5a743894a0e4a801fc3'),
('ID002', 'Admin2', '0192023a7bbd73250516f069df18b500'),
('ID003', 'Admin3', '5136850b6c8f3ebc66122188347efda0');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `tb_kategoripost`
--
ALTER TABLE `tb_kategoripost`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tb_menu`
--
ALTER TABLE `tb_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `tb_menudetail`
--
ALTER TABLE `tb_menudetail`
  ADD PRIMARY KEY (`id_md`,`id_menu`);

--
-- Indeks untuk tabel `tb_post`
--
ALTER TABLE `tb_post`
  ADD PRIMARY KEY (`id_post`,`id_kategori`,`id_user`);

--
-- Indeks untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_kategoripost`
--
ALTER TABLE `tb_kategoripost`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_menu`
--
ALTER TABLE `tb_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_menudetail`
--
ALTER TABLE `tb_menudetail`
  MODIFY `id_md` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_post`
--
ALTER TABLE `tb_post`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
