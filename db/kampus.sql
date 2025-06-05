-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 04, 2025 at 01:40 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kampus`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int NOT NULL,
  `nim` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` enum('pria','wanita') NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `jenis_kelamin`, `alamat`, `telepon`, `email`) VALUES
(1, '2310020061', 'Ebah', 'wanita', 'jalan handil', '081345286832', 'ebahtw@gmail.com'),
(2, '2310020082', 'nur hayati dwi lestari', 'wanita', 'handil bujur', '082145672851', 'hayati@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `id` int NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sks` int NOT NULL,
  `semester` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`id`, `kode`, `nama`, `sks`, `semester`) VALUES
(1, 'MGO101', 'Pendidikan Agama Islam', 2, 1),
(2, 'MGO102', 'Pendidikan Pancasila', 2, 1),
(3, 'MK001', 'Pemrograman Dasar', 3, 1),
(4, 'MK002', 'Algoritma dan Struktur Data', 4, 1),
(5, 'MK003', 'Matematika Diskrit', 3, 1),
(6, 'MK004', 'Pengantar Teknologi Informasi', 2, 1),
(7, 'MK005', 'Bahasa Inggris Teknik', 2, 1),
(8, 'MK006', 'Pemrograman Berorientasi Objek', 4, 2),
(9, 'MK007', 'Basis Data', 3, 2),
(10, 'MK008', 'Jaringan Komputer Dasar', 3, 2),
(11, 'MK009', 'Sistem Operasi', 3, 2),
(12, 'MK010', 'Statistika', 3, 2),
(13, 'MK011', 'Pemrograman Web', 3, 3),
(14, 'MK012', 'Struktur Data Lanjut', 3, 3),
(15, 'MK013', 'Rekayasa Perangkat Lunak', 3, 3),
(16, 'MK014', 'Sistem Basis Data', 3, 3),
(17, 'MK015', 'Kecerdasan Buatan Dasar', 3, 3),
(18, 'MK016', 'Pemrograman Mobile', 3, 4),
(19, 'MK017', 'Jaringan Komputer Lanjut', 3, 4),
(20, 'MK018', 'Interaksi Manusia Komputer', 2, 4),
(21, 'MK019', 'Keamanan Informasi', 3, 4),
(22, 'MK020', 'Data Mining', 3, 4),
(23, 'MK021', 'Cloud Computing', 3, 5),
(24, 'MK022', 'Machine Learning', 3, 5),
(25, 'MK023', 'Big Data', 3, 5),
(26, 'MK024', 'Internet of Things', 3, 5),
(27, 'MK025', 'Pengembangan Aplikasi Enterprise', 4, 5),
(28, 'MK026', 'Kecerdasan Buatan Lanjut', 3, 6),
(29, 'MK027', 'Blockchain', 3, 6),
(30, 'MK028', 'Komputasi Paralel', 3, 6),
(31, 'MK029', 'Manajemen Proyek TI', 3, 6),
(32, 'MK030', 'Etika Profesi TI', 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$QROyZvENk7ptiHGV2tp2c.iO/S0CTwVTXu/MkvoxElsC2ldu6hTju');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `matakuliah`
--
ALTER TABLE `matakuliah`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
