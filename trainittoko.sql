-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2018 at 12:00 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trainittoko`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'teamtrainit.com', 'teamtrainit.com', 'trainit jogja');

-- --------------------------------------------------------

--
-- Table structure for table `ongkir`
--

CREATE TABLE `ongkir` (
  `id_ongkir` int(5) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ongkir`
--

INSERT INTO `ongkir` (`id_ongkir`, `nama_kota`, `tarif`) VALUES
(1, 'demak', 20000),
(2, 'Cirebon', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `email_pelanggan` varchar(100) NOT NULL,
  `password_pelanggan` varchar(50) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `telepon_pelanggan` varchar(25) NOT NULL,
  `alamat_pelanggan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `email_pelanggan`, `password_pelanggan`, `nama_pelanggan`, `telepon_pelanggan`, `alamat_pelanggan`) VALUES
(1, 'dimasdega@gmail.com', 'dimas', 'dimasdega', '081915505285', ''),
(2, 'restaluviana@gmail.com', 'resta', 'resta', '083128299128', ''),
(3, 'trainittoko@gmail.com', 'trainit', 'trainit jogja', '081223244343', 'jogja'),
(11, 'alex235@gmail.com', '12345', 'alex', '087643123456', 'jogja'),
(15, 'nindialfi@gmail.com', 'qwerty', 'nindi', '08765478970', 'sleman,yogyakarta');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `bukti` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_pembelian`, `nama`, `bank`, `jumlah`, `tanggal`, `bukti`) VALUES
(1, 15, 'dimasdega', 'mandiri', 670000, '2018-11-15', '181115060425'),
(2, 15, 'dimasdega', 'mandiri', 670000, '2018-11-15', '181115060616'),
(3, 15, 'dimasdega', 'mandiri', 670000, '2018-11-15', '181115060650'),
(4, 15, 'dimasdega', 'mandiri', 670000, '2018-11-15', '20181115060822'),
(5, 15, 'dimasdega', 'mandiri', 670000, '2018-11-15', '20181115060905'),
(6, 15, 'dimasdega', 'mandiri', 670000, '2018-11-15', '20181115061153'),
(7, 17, 'dimasdega', 'mandiri', 470, '2018-11-15', '20181115061947'),
(8, 17, 'dimasdega', 'mandiri', 470000, '2018-11-15', '20181115062529'),
(9, 18, 'dimasdega', 'mandiri', 670, '2018-11-15', '20181115104916'),
(10, 15, 'dimasdega', 'mandiri', 670000, '2018-11-15', '20181115105135'),
(11, 16, 'dimasdega', 'mandiri', 920000, '2018-11-15', '20181115105705jaket2.jpg'),
(12, 16, 'dimasdega', 'mandiri', 920000, '2018-11-15', '20181115105752jaket4.jpg'),
(13, 20, 'nindi', 'BNI', 770000, '2018-11-17', '20181117225625vfsa.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_ongkir` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `total_pembelian` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL,
  `alamat_pengiriman` text NOT NULL,
  `status_pembelian` varchar(100) NOT NULL DEFAULT 'pending',
  `resi_pengiriman` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_pelanggan`, `id_ongkir`, `tanggal_pembelian`, `total_pembelian`, `nama_kota`, `tarif`, `alamat_pengiriman`, `status_pembelian`, `resi_pengiriman`) VALUES
(1, 2, 1, '2018-10-28', 1500000, '', 0, '', 'pending', ''),
(2, 2, 1, '2018-10-29', 500000, '', 0, '', 'pending', ''),
(3, 2, 1, '2018-11-10', 470000, '', 0, '', 'pending', ''),
(4, 2, 1, '2018-11-10', 470000, '', 0, '', 'pending', ''),
(5, 2, 1, '2018-11-10', 770000, '', 0, '', 'pending', ''),
(6, 2, 1, '2018-11-10', 670000, '', 0, '', 'pending', ''),
(7, 2, 1, '2018-11-12', 470000, '', 0, '', 'pending', ''),
(8, 2, 1, '2018-11-12', 470000, '', 0, '', 'pending', ''),
(9, 2, 1, '2018-11-12', 470000, '', 0, '', 'pending', ''),
(10, 2, 1, '2018-11-12', 470000, '', 0, '', 'pending', ''),
(11, 2, 1, '2018-11-12', 470000, '', 0, '', 'pending', ''),
(12, 2, 1, '2018-11-12', 470000, '', 0, '', 'pending', ''),
(13, 2, 1, '2018-11-12', 520000, '', 0, '', 'pending', ''),
(14, 2, 1, '2018-11-12', 470000, 'demak', 20000, '', 'pending', ''),
(15, 1, 1, '2018-11-12', 670000, 'demak', 20000, 'kalibulus,bimomartani,ngemplak,sleman', 'lunas', '2343425'),
(16, 1, 1, '2018-11-13', 920000, 'demak', 20000, 'kalibulus,bimomartani,ngemplak,sleman', 'barang dikirim', 'abc123'),
(17, 1, 1, '2018-11-15', 470000, 'demak', 20000, 'kalibulus,bimomartani,ngemplak,sleman', 'sudah kirim pembayaran', ''),
(18, 1, 1, '2018-11-15', 670000, 'demak', 20000, 'kalibulus,bimomartani,ngemplak,sleman', 'sudah kirim pembayaran', ''),
(19, 1, 1, '2018-11-15', 920000, 'demak', 20000, 'kalibulus,bimomartani,ngemplak,sleman', 'pending', ''),
(20, 14, 1, '2018-11-17', 770000, 'demak', 20000, 'kalibulus,bimomartani,ngemplak,sleman', 'barang dikirim', '342312223');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_produk`
--

CREATE TABLE `pembelian_produk` (
  `id_pembelian_produk` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `subberat` int(11) NOT NULL,
  `subharga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian_produk`
--

INSERT INTO `pembelian_produk` (`id_pembelian_produk`, `id_pembelian`, `id_produk`, `jumlah`, `nama`, `harga`, `berat`, `subberat`, `subharga`) VALUES
(1, 1, 1, 1, '', 0, 0, 0, 0),
(2, 1, 2, 1, '', 0, 0, 0, 0),
(3, 4, 9, 1, '', 0, 0, 0, 0),
(4, 4, 7, 1, '', 0, 0, 0, 0),
(5, 5, 9, 2, '', 0, 0, 0, 0),
(6, 5, 7, 1, '', 0, 0, 0, 0),
(7, 6, 9, 1, '', 0, 0, 0, 0),
(8, 6, 10, 1, '', 0, 0, 0, 0),
(9, 7, 7, 1, '', 0, 0, 0, 0),
(10, 7, 9, 1, '', 0, 0, 0, 0),
(11, 8, 7, 1, '', 0, 0, 0, 0),
(12, 8, 9, 1, '', 0, 0, 0, 0),
(13, 9, 7, 1, '', 0, 0, 0, 0),
(14, 9, 9, 1, '', 0, 0, 0, 0),
(15, 10, 7, 1, '', 0, 0, 0, 0),
(16, 10, 9, 1, '', 0, 0, 0, 0),
(17, 11, 7, 1, 'jaket', 150000, 300, 300, 0),
(18, 11, 9, 1, 'jaket 3', 300000, 300, 300, 0),
(19, 12, 9, 1, 'jaket 3', 300000, 300, 300, 0),
(20, 12, 7, 1, 'jaket', 150000, 300, 300, 0),
(21, 13, 7, 1, 'jaket', 150000, 300, 300, 150000),
(22, 13, 10, 1, 'jaket 4', 350000, 200, 200, 350000),
(23, 14, 7, 1, 'jaket', 150000, 300, 300, 150000),
(24, 14, 9, 1, 'jaket 3', 300000, 300, 300, 300000),
(25, 15, 10, 1, 'jaket 4', 350000, 200, 200, 350000),
(26, 15, 9, 1, 'jaket 3', 300000, 300, 300, 300000),
(27, 16, 9, 2, 'jaket 3', 300000, 300, 600, 600000),
(28, 16, 7, 2, 'jaket', 150000, 300, 600, 300000),
(29, 17, 7, 1, 'jaket', 150000, 300, 300, 150000),
(30, 17, 9, 1, 'jaket 3', 300000, 300, 300, 300000),
(31, 18, 9, 1, 'jaket 3', 300000, 300, 300, 300000),
(32, 18, 10, 1, 'jaket 4', 350000, 200, 200, 350000),
(33, 19, 7, 2, 'jaket', 150000, 300, 600, 300000),
(34, 19, 9, 2, 'jaket 3', 300000, 300, 600, 600000),
(35, 20, 9, 2, 'jaket 3', 300000, 300, 600, 600000),
(36, 20, 7, 1, 'jaket', 150000, 300, 300, 150000);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `berat_produk` int(11) NOT NULL,
  `foto_produk` varchar(100) NOT NULL,
  `deskripsi_produk` text NOT NULL,
  `stok_produk` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga_produk`, `berat_produk`, `foto_produk`, `deskripsi_produk`, `stok_produk`) VALUES
(7, 'jaket', 150000, 300, 'jaket.jpg', 'jaket bagus', 2),
(8, 'jaket 2', 200000, 200, 'jaket2.jpg', 'jaket bagus nih', 5),
(9, 'jaket 3', 300000, 300, 'jaket3.jpg', 'hayo', 1),
(10, 'jaket 4', 0, 0, 'asadcascs.jpg', 'jelas', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `ongkir`
--
ALTER TABLE `ongkir`
  ADD PRIMARY KEY (`id_ongkir`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  ADD PRIMARY KEY (`id_pembelian_produk`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ongkir`
--
ALTER TABLE `ongkir`
  MODIFY `id_ongkir` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  MODIFY `id_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
