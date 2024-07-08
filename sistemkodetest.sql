-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2024 at 07:16 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistemkodetest`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NIM` varchar(10) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Alamat` varchar(255) NOT NULL,
  `Jurusan` varchar(50) NOT NULL,
  `Umur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`NIM`, `Nama`, `Alamat`, `Jurusan`, `Umur`) VALUES
('123456', 'John', 'Jl. Raya No. 5', 'Teknik Informatika', 21),
('1234567', 'Alice', 'Jl. Gatot Subroto', 'Sistem Informasi', 23),
('1345678', 'Bob', 'Jl. Sudirman No.51', 'Teknik Informatika', 20),
('1456789', 'Cindy', 'Jl. Pahlawan No.', 'Manajemen', 22),
('1567890', 'David', 'Jl. Diponegoro No. 3', 'Teknik Elektro', 25),
('1678901', 'Emily', 'Jl. Cendrawasih No. 4', 'Manajemen', 24),
('1789012', 'Frank', 'Jl. Ahmad Yani No. 6', 'Teknik Informatika', 19);

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `ID` int(11) NOT NULL,
  `Mata_Kuliah` varchar(50) NOT NULL,
  `NIM` varchar(10) NOT NULL,
  `Nilai` int(11) DEFAULT NULL,
  `Dosen_Pengajar` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`ID`, `Mata_Kuliah`, `NIM`, `Nilai`, `Dosen_Pengajar`) VALUES
(1, 'Pemrograman Web', '123456', 85, 'Pak Budi'),
(2, 'Basis Data', '1234567', 70, 'Ibu Ani'),
(3, 'Jaringan Komputer', '345678', 75, 'Pak Dodi'),
(4, 'Sistem Operasi', '123456', 90, 'Pak Budi'),
(5, 'Manajemen Proyek', '4567891', 80, 'Ibu Desi'),
(6, 'Bahasa Inggris', '1567890', 85, 'Ibu Eka'),
(7, 'Statistika', '1678901', 75, 'Pak Farhan'),
(8, 'Algoritma', '1789012', 65, 'Pak Galih'),
(9, 'Pemrograman Java', '123456', 95, 'Pak Budi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NIM`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
