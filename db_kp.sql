-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Jan 2022 pada 20.22
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `namaLengkap` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(10) NOT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `namaLengkap`, `username`, `password`, `level`) VALUES
(1, 'administrator', 'admin', 'admin', '1'),
(2, 'andi febrian', 'andi_f', 'admin', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `adopsi`
--

CREATE TABLE `adopsi` (
  `id_adopsi` int(11) NOT NULL,
  `id_pengadopsi` int(11) DEFAULT NULL,
  `id_anak` int(11) DEFAULT NULL,
  `tgl_adopsi` date DEFAULT NULL,
  `ket` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `adopsi`
--

INSERT INTO `adopsi` (`id_adopsi`, `id_pengadopsi`, `id_anak`, `tgl_adopsi`, `ket`) VALUES
(1, 1, 8, '2021-08-18', 'yhyh'),
(2, 1, 8, '2021-08-24', 'dd'),
(3, 1, 8, '2021-08-12', 'sss'),
(4, 1, 8, '2021-08-17', 'ssss'),
(5, 1, 8, '2021-08-13', 'ssss');

-- --------------------------------------------------------

--
-- Struktur dari tabel `album`
--

CREATE TABLE `album` (
  `id_album` int(11) NOT NULL,
  `nama_album` varchar(255) DEFAULT NULL,
  `tgl` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `album`
--

INSERT INTO `album` (`id_album`, `nama_album`, `tgl`) VALUES
(2, 'Anak-anak Kami', '2021-08-01'),
(3, 'Sarana Prasarana', '2021-08-01'),
(5, 'Keseharian Kami', '2021-08-01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `anak_asuh`
--

CREATE TABLE `anak_asuh` (
  `id_anak` int(11) NOT NULL,
  `nama_lengkap` varchar(255) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `tgl_masuk_panti` date DEFAULT NULL,
  `status_klg` varchar(255) DEFAULT NULL,
  `tingkat_pendidikan_masuk` varchar(255) DEFAULT NULL,
  `tingkat_pendidikan_keluar` varchar(255) DEFAULT NULL,
  `nama_ayah` varchar(255) DEFAULT NULL,
  `pekerjaan_ayah` varchar(255) DEFAULT NULL,
  `nama_ibu` varchar(255) DEFAULT NULL,
  `pekerjaan_ibu` varchar(255) DEFAULT NULL,
  `alamat_ortu` varchar(255) DEFAULT NULL,
  `status_pernikahan` varchar(255) DEFAULT NULL,
  `tgl_keluar_panti` varchar(255) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `anak_asuh`
--

INSERT INTO `anak_asuh` (`id_anak`, `nama_lengkap`, `tgl_lahir`, `jenis_kelamin`, `tgl_masuk_panti`, `status_klg`, `tingkat_pendidikan_masuk`, `tingkat_pendidikan_keluar`, `nama_ayah`, `pekerjaan_ayah`, `nama_ibu`, `pekerjaan_ibu`, `alamat_ortu`, `status_pernikahan`, `tgl_keluar_panti`, `tempat_lahir`) VALUES
(11, 'Marisa', '2003-07-07', 'putri', '2019-02-28', 'Tidak Mampu', 'Aliyah', '-', 'Saudi', 'Petani', 'Mariam', 'Petani', 'Desa M.Mensao Limun Sarolangun', 'Menikah', '0001-01-01', 'muara bulian'),
(12, 'Yeni Halamah', '2003-04-14', 'putri', '2019-07-13', 'Tidak Mampu', 'Aliyah', '-', 'Janari', 'Petani', 'Arni', 'Petani', 'Desa Beringin Tinggi Jangkat Timur Merangin', 'Menikah', '', NULL),
(13, 'Serlina Safitri', '2004-09-29', 'putri', '2019-07-13', 'Tidak Mampu', 'MTS', '-', 'Andri', 'Petani', 'Hermawati', 'Petani', 'Desa Beringin Tinggi Jangkat Timur Merangin', 'Menikah', '', NULL),
(14, 'Tiara Wulandari', '2005-07-23', 'putri', '2020-07-11', 'Yatim', 'MTS', '-', 'Mujiyono', 'Petani', 'Elma', 'Petani', 'Desa Tagan Batin III Ulu Bungo', 'Cerai', '', NULL),
(15, 'Aliya', '2006-08-18', 'putri', '2019-07-09', ' Piatu', 'MTS', '-', 'Sapni', 'Kuli Bangunan', 'Marni', '-', 'Desa Jangkat Ulu Rawa Muratara', 'Cerai Mati', '', NULL),
(16, 'Rangga Gustian', '2003-08-25', 'putra', '2021-01-02', 'Yatim', 'Aliyah', '-', 'Wagimin', 'Petani', 'Julita', 'Petani', 'Desa Tagan Batin III Ulu Bungo', 'Cerai Mati', '', NULL),
(17, 'Khoiri', '2004-07-07', 'putra', '2021-06-06', 'Tidak Mampu', 'Aliyah', '-', 'Rusli', 'Petani', 'Leni', 'Petani', 'Desa Meribung Limun Sarolangun', 'Cerai', '', NULL),
(18, 'Sandi Alfajri', '2007-11-09', 'putra', '2020-07-02', 'Tidak Mampu', 'SD', '-', 'Ishak Darmawi', 'Petani', 'Siti', 'Petani', 'Desa Pisang Rebus Sitiung Sumsel', 'Cerai', '', NULL),
(19, 'Dias Herlangga', '2008-09-08', 'putra', '2020-06-29', 'Tidak Mampu', 'SD', '-', 'Nangcik', 'Petani', 'Hartati', 'Petani', 'Desa Jangkat Ulu Rawa Muratara', 'Menikah', '', NULL),
(20, 'Toha Amrihi', '2008-08-06', 'putra', '2020-02-15', 'Tidak Mampu', 'SD', '-', 'Yasman', 'Petani', 'Siti Hurmi', 'Petani', 'Desa Tagan Batin III Ulu Bungo', 'Menikah', '', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_alat_angkut`
--

CREATE TABLE `data_alat_angkut` (
  `id_code` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `asal_negara` varchar(255) DEFAULT NULL,
  `tujuan_negara` varchar(255) DEFAULT NULL,
  `aktivitas` varchar(255) DEFAULT NULL,
  `no_register` varchar(255) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `nama_agen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_alat_angkut`
--

INSERT INTO `data_alat_angkut` (`id_code`, `nama`, `asal_negara`, `tujuan_negara`, `aktivitas`, `no_register`, `tgl`, `nama_agen`) VALUES
(12, 'PTB SRL 1007/BG LL 9517', 'INDONESIA', 'BELANDA', 'Keberangkatan', 'OYSY/15/F/X/2021 ', '2021-11-01', 'PT.YGDUAW'),
(141, 'ATF SOL  01007/BG LL 251', 'INDONESIA', 'MYANMAR', 'Keberangkatan', 'TA/1/D/X/2021 ', '2021-12-01', 'PT.HSPGG'),
(142, 'ATB SOL 1007/BG LL 2517', 'INDONESIA', 'KAMBOJA', 'Keberangkatan', 'RUA/1/D/X/2021 ', '2021-11-04', 'PT.NNBB'),
(143, 'PTB SOL 1007/BG LL 2517', 'INDONESIA', 'JAPAN', 'Keberangkatan', 'RUA/1/D/X/2021 ', '2021-11-01', 'PT.NOI'),
(245, 'TB SOL 1007/BG LL 2517', 'GERMAN', 'INDONESIA', 'Kedatangan', '6346', '2022-01-02', 'PT.JUKSIP');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `id_album` varchar(255) DEFAULT NULL,
  `nama_foto` varchar(255) DEFAULT NULL,
  `tgl` datetime DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `id_album`, `nama_foto`, `tgl`, `foto`, `ket`) VALUES
(4, '2', 'foto anak kemarin', '2021-09-15 00:00:00', 'foto_anak_kemarin.jpg', 'memory pada saat anak mendapat bantuan donasi berupa sembako'),
(5, '5', 'foto kumpul bersama', '2021-09-15 00:00:00', 'foto_kumpul_bersama.jpg', 'memperingato hahaha'),
(6, '3', 'sarana', '2021-09-07 00:00:00', 'sarana.jpg', 'Mohon doa keselamatan, lancar usaha dan jauh dari marabahaya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id_kegiatan` int(11) NOT NULL,
  `nama_kegiatan` varchar(255) DEFAULT NULL,
  `tgl` varchar(255) DEFAULT NULL,
  `tempat` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kegiatan`
--

INSERT INTO `kegiatan` (`id_kegiatan`, `nama_kegiatan`, `tgl`, `tempat`, `foto`, `ket`) VALUES
(7, 'Kunjungan lembaga asosiasi', '2021-09-14', 'Panti Asuhan Taman Bina Insany', 'Kunjungan_lembaga_asosiasi.png', 'Kegiatan ini merupakan kunjungan dari lembaga Asosiasi Badan Usaha Jasa Pengamanan Indonesia dalam rangka memperingati hari ulang tahun satpam ke 36'),
(8, 'Kunjungan', '09 Oktober 2020', 'Panti Asuhan Taman Bina Insany', 'Kunjungan.jpg', 'Kegiatan ini merupakan kunjungan yang dilakukan oleh bapak M. Sum Indra selaku Anggota DPD RI Dapil Jambi pada masa pandemi. Beliau memberikan bantuan dana pembangunan dan Al-Quran kepada Panti Asuhan Taman Bina Insany Jambi.'),
(9, 'Kunjungan 2', '2021-09-14', 'Panti Asuhan Taman Bina Insany', 'Kunjungan_2.jpg', 'dalam rangka poto anaka anak asuh'),
(10, 'Kunjungan bupati', '2021-09-14', 'Panti Asuhan Taman Bina Insany', 'Kunjungan_bupati.jpg', 'dfasa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengadopsi`
--

CREATE TABLE `pengadopsi` (
  `id_pengadopsi` int(11) NOT NULL,
  `nama_lengkap` varchar(255) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jk` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `rt` varchar(255) DEFAULT NULL,
  `kel` varchar(255) DEFAULT NULL,
  `kec` varchar(255) DEFAULT NULL,
  `prov` varchar(255) DEFAULT NULL,
  `agama` varchar(255) DEFAULT NULL,
  `status_kawin` varchar(255) DEFAULT NULL,
  `pekerjaan` varchar(255) DEFAULT NULL,
  `pendidikan` varchar(255) DEFAULT NULL,
  `negara` varchar(255) DEFAULT NULL,
  `tlp` varchar(255) DEFAULT NULL,
  `nama_klg` varchar(255) DEFAULT NULL,
  `tlp_klg` varchar(255) DEFAULT NULL,
  `foto` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengadopsi`
--

INSERT INTO `pengadopsi` (`id_pengadopsi`, `nama_lengkap`, `tempat_lahir`, `tgl_lahir`, `jk`, `alamat`, `rt`, `kel`, `kec`, `prov`, `agama`, `status_kawin`, `pekerjaan`, `pendidikan`, `negara`, `tlp`, `nama_klg`, `tlp_klg`, `foto`) VALUES
(1, 'ibel FCC kkk', 'dd', '2021-08-02', 'putra', 'jambi', '008', 'gg', '2021-08-25', 'dd', 'ggg', 'dd', 'dd', 'dd', 'dd', '55', 'dd', '777', 'ibel_FCC_kkk.jpg'),
(2, 'x', 'x', '2021-09-13', 'putra', 'x', 'x', 'xx', '2021-09-30', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengurus_panti`
--

CREATE TABLE `pengurus_panti` (
  `id_pengurus` int(11) NOT NULL,
  `nama_lengkap` varchar(255) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `pendidikan` varchar(255) DEFAULT NULL,
  `tgl_masuk` date DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `instansi` varchar(255) DEFAULT NULL,
  `tgl_keluar` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengurus_panti`
--

INSERT INTO `pengurus_panti` (`id_pengurus`, `nama_lengkap`, `tgl_lahir`, `jenis_kelamin`, `alamat`, `no_hp`, `pendidikan`, `tgl_masuk`, `jabatan`, `instansi`, `tgl_keluar`, `status`) VALUES
(1, 'khairul', '2021-09-07', 'putra', 'jambi', '08133', 'd', '2021-09-16', 'dd', NULL, NULL, 'Tidak Aktif'),
(2, ' badai', '1999-06-08', 'putra', 'dfaadf', '80594683', 's1', '2021-11-23', 'dssf', NULL, NULL, 'Aktif');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `adopsi`
--
ALTER TABLE `adopsi`
  ADD PRIMARY KEY (`id_adopsi`);

--
-- Indeks untuk tabel `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indeks untuk tabel `anak_asuh`
--
ALTER TABLE `anak_asuh`
  ADD PRIMARY KEY (`id_anak`);

--
-- Indeks untuk tabel `data_alat_angkut`
--
ALTER TABLE `data_alat_angkut`
  ADD PRIMARY KEY (`id_code`);

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`) USING BTREE;

--
-- Indeks untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indeks untuk tabel `pengadopsi`
--
ALTER TABLE `pengadopsi`
  ADD PRIMARY KEY (`id_pengadopsi`) USING BTREE;

--
-- Indeks untuk tabel `pengurus_panti`
--
ALTER TABLE `pengurus_panti`
  ADD PRIMARY KEY (`id_pengurus`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `adopsi`
--
ALTER TABLE `adopsi`
  MODIFY `id_adopsi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `anak_asuh`
--
ALTER TABLE `anak_asuh`
  MODIFY `id_anak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `data_alat_angkut`
--
ALTER TABLE `data_alat_angkut`
  MODIFY `id_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id_kegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `pengadopsi`
--
ALTER TABLE `pengadopsi`
  MODIFY `id_pengadopsi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pengurus_panti`
--
ALTER TABLE `pengurus_panti`
  MODIFY `id_pengurus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
