-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2022 at 01:47 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir_klontong`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(1) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'mimin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `detailpenjualan`
--

CREATE TABLE `detailpenjualan` (
  `nonota` varchar(10) DEFAULT NULL,
  `kode` varchar(8) DEFAULT NULL,
  `harga` int(8) DEFAULT NULL,
  `jumlah` int(8) DEFAULT NULL,
  `subtotal` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detailpenjualan`
--

INSERT INTO `detailpenjualan` (`nonota`, `kode`, `harga`, `jumlah`, `subtotal`) VALUES
('1', 'ASB12', 12500, 1, 12500),
('3', '1116', 2000, 2, 4000),
('4', '1112', 6000, 2, 12000);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `nonota` varchar(8) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `kode_barang` varchar(10) DEFAULT NULL,
  `tanggal` date NOT NULL,
  `total` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`nonota`, `id_admin`, `kode_barang`, `tanggal`, `total`) VALUES
('1', 1, 'ASB12', '2021-11-26', 12500),
('2', 1, NULL, '2021-11-26', 0),
('3', 1, '1116', '2021-11-26', 4000),
('4', 1, '1112', '2021-11-29', 12000),
('5', 1, NULL, '2021-11-29', 0),
('6', 1, NULL, '2021-11-29', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblbarang`
--

CREATE TABLE `tblbarang` (
  `id_admin` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `hrg_beli` int(10) NOT NULL,
  `hrg_jual` int(10) NOT NULL,
  `stok` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbarang`
--

INSERT INTO `tblbarang` (`id_admin`, `kode`, `nama`, `hrg_beli`, `hrg_jual`, `stok`) VALUES
(1, '11118', 'fffff', 80000, 90000, 255),
(1, '1112', 'Kecap Tomat Lombok', 6000, 7000, 24),
(1, '1113', 'Kemiri 1 0ns', 4000, 4500, 20),
(1, '1114', '1/4 kg Kacang tanah plocohan ', 6500, 7000, 29),
(1, '1115', 'Sedap Goreng Ayam Bakar Limau', 2000, 3000, 48),
(1, '1116', 'Indomie goreng rendang', 2000, 3000, 46),
(1, '1117', 'Permen Yupi lope lope', 8500, 10000, 15),
(1, '1118', 'Minyak Sunco', 19400, 21000, 24),
(1, '1119', 'Ciki Si Gemoy anaknya Bapak Ge', 4000, 4500, 30),
(1, '1120', 'Mie Eko isi 10', 8500, 9000, 45),
(1, '1121', 'mie eko isi 2', 1500, 2000, 48),
(1, '1122', 'Tepung Terigu', 12500, 15000, 99),
(1, '1123', '1 kg Beras bapak suneo', 9000, 9500, 98),
(1, '1124', '1/4 kg bawang putih', 5500, 6000, 30),
(1, '12251001', 'Ciki Cinta', 4500, 5000, 25);

-- --------------------------------------------------------

--
-- Table structure for table `tblsementara`
--

CREATE TABLE `tblsementara` (
  `kode` varchar(30) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `harga` int(8) DEFAULT NULL,
  `jumlah` int(8) DEFAULT NULL,
  `subtotal` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`nonota`);

--
-- Indexes for table `tblbarang`
--
ALTER TABLE `tblbarang`
  ADD PRIMARY KEY (`kode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
