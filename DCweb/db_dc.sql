-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 05 Jan 2018 pada 17.04
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctor_computer`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  `id_Anggota` varchar(10) DEFAULT NULL,
  `level` enum('Admin','Sales') DEFAULT 'Sales'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`username`, `password`, `id_Anggota`, `level`) VALUES
('a', 'a', '0010', NULL),
('login', 'login', '0001', 'Admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_Anggota` varchar(50) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Jabatan` varchar(30) NOT NULL,
  `NO_HP` varchar(14) DEFAULT NULL,
  `Email` varchar(30) NOT NULL,
  `Alamat` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_Anggota`, `Nama`, `Jabatan`, `NO_HP`, `Email`, `Alamat`) VALUES
('0001', 'Eko Pujianto', 'CEO', '+6285828949395', 'ekopujianto48@gmail.com', 'JL. P. Suryanata Graha Indah RT. 57 No. 83'),
('0002', 'Riza Al-Muttaqin', '', '+6285654276002', '', NULL),
('0003', 'Muhammad Egi Noviandra', '', '+6282158443299', 'egirajasa@gmail.com', 'JL. Graha Indah Perum Bukit Permata Indah'),
('0004', 'Rizky Alim Nurhuda', '', '+6282255282939', '', 'JL. Markisa No. 38'),
('0005', 'Markarius Paso', '', '+6285393965796', '', 'JL. Nahkoda RT. 15 Bukuan'),
('0006', 'Muhammad Ri\'fai', '', '+6282254562450', 'muhammadrifai811@gmail.com', 'JL. Pepaya RT. 01'),
('0007', 'Andi', 'Bendahara', '085312329271', 'andidian@gmail.com', 'JL.SAID'),
('0008', 'Hendra', 'OAUHULNH', '0818261293', 'hendra@gmail.com', 'DIJALAN'),
('0009', 'Eko', 'CEOCEO', '088888888888', 'eko@gmail.com', 'kawdokaowd'),
('0010', 'Eko', 'Eko', '089999999', 'eko@gmail.com', 'eko');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(10) NOT NULL,
  `Nama_barang` varchar(40) NOT NULL,
  `No_Seri` varchar(40) NOT NULL,
  `Merk` varchar(40) NOT NULL,
  `id_Kategori` int(5) NOT NULL,
  `Harga_Beli_Satuan` int(10) DEFAULT NULL,
  `Harga_Jual_Satuan` int(10) NOT NULL,
  `Stok` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `Nama_barang`, `No_Seri`, `Merk`, `id_Kategori`, `Harga_Beli_Satuan`, `Harga_Jual_Satuan`, `Stok`) VALUES
('CCB-810', 'Cataiwhdo', '3243', 'CANON', 1, 30000, 40000, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_beban`
--

CREATE TABLE `daftar_beban` (
  `id_Beban` varchar(5) NOT NULL,
  `Nama_Beban` varchar(20) DEFAULT NULL,
  `Total_beban` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `daftar_beban`
--

INSERT INTO `daftar_beban` (`id_Beban`, `Nama_Beban`, `Total_beban`) VALUES
('001', 'Beban Listrik', 0),
('002', 'Beban Gaji', 0),
('003', 'Beban Pulsa', 0),
('004', 'Beban Kirim', 0),
('005', 'Beban Asuransi', 0),
('006', 'Beban Pajak', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_harga_service`
--

CREATE TABLE `daftar_harga_service` (
  `id_Service` varchar(5) NOT NULL,
  `Nama_Service` varchar(30) NOT NULL,
  `Harga_Service` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `daftar_harga_service`
--

INSERT INTO `daftar_harga_service` (`id_Service`, `Nama_Service`, `Harga_Service`) VALUES
('1', 'Instal Ulang One OS', 45000),
('2', 'Instal Ulang Dual OS', 100000),
('3', 'Ganti Pasta Prosessor', 50000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_pelanggan`
--

CREATE TABLE `daftar_pelanggan` (
  `id_Pelanggan` varchar(10) NOT NULL,
  `Nama` varchar(30) DEFAULT NULL,
  `Alamat` text,
  `NO_HP` varchar(14) DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `daftar_pelanggan`
--

INSERT INTO `daftar_pelanggan` (`id_Pelanggan`, `Nama`, `Alamat`, `NO_HP`, `Email`) VALUES
('0', 'Unknow', 'Unknow', 'Unknow', 'Unknow'),
('0001', 'Eko', 'Suryanata', '085828949395', 'ekopujianto48@gmail.'),
('0002', 'Indah', 'Hatiku', '085787127035', 'indah@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_penerimaan_pc`
--

CREATE TABLE `daftar_penerimaan_pc` (
  `id_Penerimaan` varchar(10) NOT NULL,
  `id_Pelanggan` varchar(10) DEFAULT NULL,
  `Merk_PC` varchar(30) DEFAULT NULL,
  `Seri_PC` varchar(10) DEFAULT NULL,
  `Kelengkapan` text,
  `Keluhan` text,
  `Tanggal_Terima` datetime DEFAULT NULL,
  `id_Penerima_Staff` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `daftar_penerimaan_pc`
--

INSERT INTO `daftar_penerimaan_pc` (`id_Penerimaan`, `id_Pelanggan`, `Merk_PC`, `Seri_PC`, `Kelengkapan`, `Keluhan`, `Tanggal_Terima`, `id_Penerima_Staff`) VALUES
('1', NULL, 'Toshiba', '11', NULL, NULL, '2017-12-30 04:19:54', '0001'),
('123', NULL, 'auwoawj', 'aiwjsaws', 'Kabel , , , , , Charger', '334343434', '2017-12-30 00:00:00', '0001'),
('123123', NULL, 'Acer', 'E5-471G', 'Kabel, Tas, , , , Charger', 'awd aesgrddjvrnkfmdlskgkjelcvgnn', '2017-12-30 00:00:00', '0001'),
('12312322', NULL, '1233123', '123', NULL, NULL, '2017-12-30 15:40:34', '0003'),
('321', NULL, 'awdaw', 'awdawda', 'Kabel DOSA, Tas, , , , Charger', 'awdawd', '2017-12-30 00:00:00', '0001'),
('7665', NULL, 'Darling', 'Jarang Goy', 'Kabel, , , , , ', 'BUANG', '2017-12-30 00:00:00', '0001');

--
-- Trigger `daftar_penerimaan_pc`
--
DELIMITER $$
CREATE TRIGGER `UpdateStatus` AFTER INSERT ON `daftar_penerimaan_pc` FOR EACH ROW BEGIN
INSERT INTO status_pengembalian_pc
SET  status_pengembalian_pc.id_penerimaan = NEW.id_Penerimaan,
status_pengembalian_pc.id_Pelanggan = NEW.id_Pelanggan,
status_pengembalian_pc.Tgl_Terima = NEW.Tanggal_Terima,
status_pengembalian_pc.Status_pengembalian = 'Belum';
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `UpdateStatus_Update` AFTER UPDATE ON `daftar_penerimaan_pc` FOR EACH ROW BEGIN
INSERT INTO status_pengembalian_pc
SET  status_pengembalian_pc.id_penerimaan = NEW.id_Penerimaan,
status_pengembalian_pc.id_Pelanggan = NEW.id_Pelanggan,
status_pengembalian_pc.Tgl_Terima = NEW.Tanggal_Terima,
status_pengembalian_pc.Status_pengembalian = 'Belum';
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_piutang`
--

CREATE TABLE `daftar_piutang` (
  `id_Piutang` int(11) NOT NULL,
  `id_Penjualan` varchar(10) DEFAULT NULL,
  `Nominal` int(13) DEFAULT '0',
  `Status` enum('LUNAS','BELUM LUNAS') DEFAULT 'BELUM LUNAS',
  `Sisa_Piutang` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `daftar_piutang`
--

INSERT INTO `daftar_piutang` (`id_Piutang`, `id_Penjualan`, `Nominal`, `Status`, `Sisa_Piutang`) VALUES
(1, 'PJ-1', 90000, 'BELUM LUNAS', 0),
(2, 'PJ-1', 90000, 'BELUM LUNAS', 0),
(3, 'PJ-1', 90000, 'BELUM LUNAS', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_supplier`
--

CREATE TABLE `daftar_supplier` (
  `id_Supplier` int(5) NOT NULL,
  `nama_supplier` varchar(50) DEFAULT NULL,
  `Alamat_supplier` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `daftar_supplier`
--

INSERT INTO `daftar_supplier` (`id_Supplier`, `nama_supplier`, `Alamat_supplier`) VALUES
(1, 'Java Computer', 'managuatau'),
(2, 'Aringo', 'Wahab'),
(3, 'DC', 'Graha');

-- --------------------------------------------------------

--
-- Struktur dari tabel `delivery_jasa`
--

CREATE TABLE `delivery_jasa` (
  `id_delivery_jasa` varchar(10) NOT NULL,
  `id_pelanggan` varchar(10) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `Keterangan` text,
  `Status` enum('Belum','Selesai') DEFAULT 'Belum'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `delivery_jasa`
--

INSERT INTO `delivery_jasa` (`id_delivery_jasa`, `id_pelanggan`, `Tanggal`, `Keterangan`, `Status`) VALUES
('1', '0001', '2018-01-02', NULL, 'Selesai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pembelian_barang`
--

CREATE TABLE `detail_pembelian_barang` (
  `id_Pembelian` varchar(10) DEFAULT NULL,
  `id_Barang` varchar(10) DEFAULT NULL,
  `Harga_satuan` int(5) DEFAULT '0',
  `Jumlah_barang` int(11) DEFAULT '0',
  `Total_beban` int(11) DEFAULT '0',
  `Total` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_pembelian_barang`
--

INSERT INTO `detail_pembelian_barang` (`id_Pembelian`, `id_Barang`, `Harga_satuan`, `Jumlah_barang`, `Total_beban`, `Total`) VALUES
('PBB-4', 'CCB-810', 30000, 2, 780, 60780),
('PBB-5', 'CCB-810', 30000, 2, 0, 60000),
('PBB-5', 'CCB-810', 30000, 2, 0, 60000);

--
-- Trigger `detail_pembelian_barang`
--
DELIMITER $$
CREATE TRIGGER `Stok_Barang+_AD` AFTER DELETE ON `detail_pembelian_barang` FOR EACH ROW BEGIN
UPDATE barang
SET barang.Stok = barang.Stok - OLD.Jumlah_Barang
WHERE barang.id_barang = OLD.id_Barang;

UPDATE pembelian
SET pembelian.Total_Harga = (SELECT SUM(Total) FROM detail_pembelian_barang WHERE OLD.id_Pembelian = id_Pembelian)  + pembelian.Total_Beban
WHERE pembelian.id_Pembelian = OLD.id_Pembelian;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `Stok_Barang+_AI` AFTER INSERT ON `detail_pembelian_barang` FOR EACH ROW BEGIN
UPDATE barang
SET barang.Stok = barang.Stok + NEW.Jumlah_Barang
WHERE barang.id_barang = NEW.id_Barang;

UPDATE pembelian
SET pembelian.Total_Harga = (SELECT SUM(Total) FROM detail_pembelian_barang WHERE new.id_Pembelian = id_Pembelian) + pembelian.Total_Beban
WHERE pembelian.id_Pembelian = new.id_Pembelian;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `Stok_Barang+_AU` AFTER UPDATE ON `detail_pembelian_barang` FOR EACH ROW BEGIN
UPDATE barang
SET barang.Stok = barang.Stok - OLD.Jumlah_Barang + NEW.Jumlah_Barang
WHERE barang.id_barang = NEW.id_Barang;

UPDATE pembelian
SET pembelian.Total_Harga = (SELECT SUM(Total) FROM detail_pembelian_barang WHERE NEW.id_Pembelian = id_Pembelian) + pembelian.Total_Beban
WHERE pembelian.id_Pembelian = NEW.id_Pembelian;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `detail_pembelian_barang_before_insert` BEFORE INSERT ON `detail_pembelian_barang` FOR EACH ROW BEGIN
SET NEW.Total = (NEW.Jumlah_barang*NEW.Harga_satuan)+ new.Total_beban;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `detail_pembelian_barang_before_update` BEFORE UPDATE ON `detail_pembelian_barang` FOR EACH ROW BEGIN
SET NEW.Total = (NEW.Jumlah_barang*NEW.Harga_satuan) + new.Total_beban;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pembelian_inven`
--

CREATE TABLE `detail_pembelian_inven` (
  `id_Pembelian` varchar(10) DEFAULT '0',
  `id_Inven` varchar(10) DEFAULT '0',
  `Harga_satuan` int(5) DEFAULT '0',
  `Jumlah_barang` int(11) DEFAULT '0',
  `Total_beban` int(11) DEFAULT '0',
  `Total` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_pembelian_inven`
--

INSERT INTO `detail_pembelian_inven` (`id_Pembelian`, `id_Inven`, `Harga_satuan`, `Jumlah_barang`, `Total_beban`, `Total`) VALUES
('PBB-3', '1', 40000, 2, 0, 80000);

--
-- Trigger `detail_pembelian_inven`
--
DELIMITER $$
CREATE TRIGGER `detail_pembelian_inven_after_insert` AFTER INSERT ON `detail_pembelian_inven` FOR EACH ROW BEGIN
UPDATE inventaris
SET inventaris.Jumlah_Barang = inventaris.Jumlah_Barang + NEW.Jumlah_barang
WHERE inventaris.id_Inven = NEW.id_Inven;

UPDATE pembelian
SET pembelian.Total_Harga = (SELECT SUM(Total) FROM detail_pembelian_inven WHERE new.id_Pembelian = id_Pembelian)
WHERE pembelian.id_Pembelian = new.id_Pembelian;

UPDATE inventaris
SET inventaris.Harga_beli = new.Harga_satuan WHERE new.id_Inven = inventaris.id_Inven;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `detail_pembelian_inven_after_update` AFTER UPDATE ON `detail_pembelian_inven` FOR EACH ROW BEGIN
UPDATE inventaris
SET inventaris.Jumlah_Barang = inventaris.Jumlah_Barang + NEW.Jumlah_barang - OLD.Jumlah_barang
WHERE inventaris.id_Inven = NEW.id_Inven;

UPDATE pembelian
SET pembelian.Total_Harga = (SELECT SUM(Total) FROM detail_pembelian_inven WHERE new.id_Pembelian = id_Pembelian)
WHERE pembelian.id_Pembelian = new.id_Pembelian;

UPDATE inventaris
SET inventaris.Harga_beli = new.Harga_satuan WHERE new.id_Inven = inventaris.id_Inven;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `detail_pembelian_inven_before_insert` BEFORE INSERT ON `detail_pembelian_inven` FOR EACH ROW BEGIN
SET NEW.Total = NEW.Harga_satuan* NEW.Jumlah_barang + new.Total_beban;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `detail_pembelian_inven_before_update` BEFORE UPDATE ON `detail_pembelian_inven` FOR EACH ROW BEGIN
SET NEW.Total = NEW.Harga_satuan* NEW.Jumlah_barang + new.Total_beban;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pemesanan_barang`
--

CREATE TABLE `detail_pemesanan_barang` (
  `id_Pesan` int(5) DEFAULT NULL,
  `id_Barang` varchar(10) DEFAULT NULL,
  `Jumlah` int(5) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_pemesanan_barang`
--

INSERT INTO `detail_pemesanan_barang` (`id_Pesan`, `id_Barang`, `Jumlah`) VALUES
(1, 'CCB-810', 2),
(2, 'CCB-810', 2),
(2, 'CCB-810', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pendapatan_jasa`
--

CREATE TABLE `detail_pendapatan_jasa` (
  `id_Pendapatan` varchar(10) DEFAULT NULL,
  `id_Service` varchar(5) DEFAULT NULL,
  `Harga` int(11) DEFAULT '0',
  `Diskon` int(11) DEFAULT '0',
  `Total_harga` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Trigger `detail_pendapatan_jasa`
--
DELIMITER $$
CREATE TRIGGER `detail_pendapatan_jasa_after_insert` AFTER INSERT ON `detail_pendapatan_jasa` FOR EACH ROW BEGIN
UPDATE pendapatan_jasa
SET pendapatan_jasa.Total = (SELECT SUM(Total_harga) FROM detail_pendapatan_jasa WHERE new.id_Pendapatan = id_Pendapatan)
WHERE pendapatan_jasa.id_Pendapatan = new.id_Pendapatan;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `detail_pendapatan_jasa_after_update` AFTER UPDATE ON `detail_pendapatan_jasa` FOR EACH ROW BEGIN
UPDATE pendapatan_jasa
SET pendapatan_jasa.Total = (SELECT SUM(Total_harga) FROM detail_pendapatan_jasa WHERE new.id_Pendapatan = id_Pendapatan)
WHERE pendapatan_jasa.id_Pendapatan = new.id_Pendapatan;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `detail_pendapatan_jasa_before_insert` BEFORE INSERT ON `detail_pendapatan_jasa` FOR EACH ROW BEGIN
SET NEW.Harga = (SELECT Harga_Service FROM daftar_harga_service WHERE NEW.id_Service=daftar_harga_service.id_Service);
SET NEW.Total_harga = (SELECT Harga_Service FROM daftar_harga_service WHERE NEW.id_Service=daftar_harga_service.id_Service)
 - NEW.Diskon;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `detail_pendapatan_jasa_before_update` BEFORE UPDATE ON `detail_pendapatan_jasa` FOR EACH ROW BEGIN
SET NEW.Harga = (SELECT Harga_Service FROM daftar_harga_service WHERE NEW.id_Service=daftar_harga_service.id_Service);
SET NEW.Total_harga = (SELECT Harga_Service FROM daftar_harga_service WHERE NEW.id_Service=daftar_harga_service.id_Service)
 - NEW.Diskon;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pengeluaran_beban`
--

CREATE TABLE `detail_pengeluaran_beban` (
  `id` int(11) NOT NULL,
  `id_Pembelian` varchar(10) NOT NULL DEFAULT '0',
  `id_Beban` varchar(5) NOT NULL,
  `Harga` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_pengeluaran_beban`
--

INSERT INTO `detail_pengeluaran_beban` (`id`, `id_Pembelian`, `id_Beban`, `Harga`) VALUES
(43, 'PBB-4', '004', 700),
(44, 'PBB-4', '006', 80);

--
-- Trigger `detail_pengeluaran_beban`
--
DELIMITER $$
CREATE TRIGGER `daftar_detail_pengeluaran_beban_after_insert` AFTER INSERT ON `detail_pengeluaran_beban` FOR EACH ROW BEGIN
UPDATE pembelian
SET pembelian.Total_Beban = pembelian.Total_Beban + NEW.Harga
WHERE NEW.id_Pembelian = pembelian.id_Pembelian;

UPDATE daftar_beban
SET daftar_beban.Total_beban = (SELECT SUM(Harga) FROM detail_pengeluaran_beban WHERE new.id_Beban = id_Beban)
WHERE daftar_beban.id_Beban = new.id_Beban;

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `daftar_detail_pengeluaran_beban_after_update` AFTER UPDATE ON `detail_pengeluaran_beban` FOR EACH ROW BEGIN
UPDATE pembelian
SET pembelian.Total_Beban = pembelian.Total_Beban + NEW.Harga
WHERE NEW.id_Pembelian = pembelian.id_Pembelian;

UPDATE daftar_beban
SET daftar_beban.Total_beban = (SELECT SUM(Harga) FROM detail_pengeluaran_beban WHERE new.id_Beban = id_Beban)
WHERE daftar_beban.id_Beban = new.id_Beban;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `id_Penjualan` varchar(10) DEFAULT NULL,
  `id_Barang` varchar(10) DEFAULT NULL,
  `Harga_satuan` int(10) NOT NULL DEFAULT '0',
  `Jumlah` int(5) NOT NULL DEFAULT '0',
  `Diskon` int(10) DEFAULT '0',
  `Ongkir` int(10) DEFAULT '0',
  `Total_Harga` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`id_Penjualan`, `id_Barang`, `Harga_satuan`, `Jumlah`, `Diskon`, `Ongkir`, `Total_Harga`) VALUES
('PJ-1', 'CCB-810', 40000, 1, 0, 0, 40000),
('PJ-2', 'CCB-810', 40000, 1, 0, 0, 40000),
('PJ-2', 'CCB-810', 40000, 3, 0, 0, 120000),
('PJ-3', 'CCB-810', 40000, 7, 0, 0, 280000),
('PJ-3', 'CCB-810', 40000, 8, 0, 0, 320000),
('PJ-4', 'ccb-810', 40000, 6, 0, 0, 240000),
('PJ-8', 'CCB-810', 40000, 5, 0, 0, 200000),
('PJ-9', 'CCB-810', 40000, 9, 0, 0, 360000),
('PJ-10', 'CCB-810', 40000, 2, 0, 0, 80000);

--
-- Trigger `detail_penjualan`
--
DELIMITER $$
CREATE TRIGGER `Stok_Barang-_AU` AFTER UPDATE ON `detail_penjualan` FOR EACH ROW BEGIN
UPDATE barang
SET barang.Stok = barang.Stok + OLD.Jumlah - NEW.Jumlah
WHERE barang.id_barang = NEW.id_Barang;

UPDATE penjualan_barang
SET penjualan_barang.Total_Harga = (SELECT SUM(Total_Harga) FROM detail_penjualan WHERE new.id_Penjualan = id_Penjualan)
WHERE penjualan_barang.id_Penjualan = new.id_Penjualan;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `Stok_Barang_AD` AFTER DELETE ON `detail_penjualan` FOR EACH ROW BEGIN
UPDATE barang
SET barang.Stok = barang.Stok - OLD.Jumlah
WHERE barang.id_barang = OLD.id_Barang;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `Stok_Barang_AI` AFTER INSERT ON `detail_penjualan` FOR EACH ROW BEGIN
UPDATE barang
SET barang.Stok = barang.Stok - NEW.Jumlah
WHERE barang.id_barang = NEW.id_Barang;

UPDATE penjualan_barang
SET penjualan_barang.Total_Harga = (SELECT SUM(Total_Harga) FROM detail_penjualan WHERE new.id_Penjualan = id_Penjualan)
WHERE penjualan_barang.id_Penjualan = new.id_Penjualan;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `menghitung_penjualan_up` BEFORE UPDATE ON `detail_penjualan` FOR EACH ROW BEGIN
SET NEW.Total_Harga = (NEW.Jumlah*NEW.Harga_satuan) - NEW.Diskon + NEW.Ongkir;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `menghitung_total_penjualan` BEFORE INSERT ON `detail_penjualan` FOR EACH ROW BEGIN
SET NEW.Total_Harga = (NEW.Jumlah*NEW.Harga_satuan) - NEW.Diskon + NEW.Ongkir;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `inventaris`
--

CREATE TABLE `inventaris` (
  `id_Inven` varchar(10) NOT NULL,
  `Nama_Inven` varchar(30) DEFAULT NULL,
  `No_Seri` varchar(30) DEFAULT NULL,
  `Merk` varchar(30) DEFAULT NULL,
  `Jumlah_Barang` int(5) DEFAULT '0',
  `Harga_beli` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `inventaris`
--

INSERT INTO `inventaris` (`id_Inven`, `Nama_Inven`, `No_Seri`, `Merk`, `Jumlah_Barang`, `Harga_beli`) VALUES
('1', 'Flashdisk', '89219', 'Tosiiiii', 5, 40000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_barang`
--

CREATE TABLE `kategori_barang` (
  `id_kategori` int(5) NOT NULL,
  `Nama_kategori` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori_barang`
--

INSERT INTO `kategori_barang` (`id_kategori`, `Nama_kategori`) VALUES
(1, 'Flashdisk');

-- --------------------------------------------------------

--
-- Stand-in structure for view `keuntungan_penjualan`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `keuntungan_penjualan` (
`id_Penjualan` varchar(10)
,`Tanggal` date
,`Keuntungan` decimal(43,0)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelunasan_piutang`
--

CREATE TABLE `pelunasan_piutang` (
  `id_Pelunasan` int(11) NOT NULL,
  `id_Piutang` int(11) DEFAULT NULL,
  `Tanggal_Pembayaran` date DEFAULT NULL,
  `Jumlah_Bayar` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Trigger `pelunasan_piutang`
--
DELIMITER $$
CREATE TRIGGER `pelunasan_piutan_hutang_after_insert` AFTER INSERT ON `pelunasan_piutang` FOR EACH ROW BEGIN
UPDATE daftar_piutang
SET daftar_piutang.Status = 'LUNAS'
WHERE daftar_piutang.Nominal = (
SELECT SUM(Jumlah_Bayar) FROM pelunasan_piutang WHERE NEW.id_Piutang = daftar_piutang.id_Piutang)
AND NEW.id_Piutang = daftar_piutang.id_Piutang;

UPDATE daftar_piutang
SET Sisa_Piutang = daftar_piutang.Nominal -
(SELECT SUM(Jumlah_Bayar) FROM pelunasan_piutang 
WHERE daftar_piutang.id_Piutang = pelunasan_piutang.id_Piutang)
WHERE daftar_piutang.id_Piutang = NEW.id_Piutang;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `pelunasan_piutang_after_update` AFTER UPDATE ON `pelunasan_piutang` FOR EACH ROW BEGIN
UPDATE daftar_piutang
SET Sisa_Piutang = daftar_piutang.Nominal -
(SELECT SUM(Jumlah_Bayar) FROM pelunasan_piutang 
WHERE daftar_piutang.id_Piutang = pelunasan_piutang.id_Piutang)
WHERE daftar_piutang.id_Piutang = NEW.id_Piutang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran_beban`
--

CREATE TABLE `pembayaran_beban` (
  `id_Beban` varchar(5) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `Keterangan` text,
  `Total` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran_beban`
--

INSERT INTO `pembayaran_beban` (`id_Beban`, `Tanggal`, `Keterangan`, `Total`) VALUES
('002', '2017-12-30', 'feffefefe', '9000000'),
('002', '2017-12-30', 'kuawhd', '9000000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `id_Pembelian` varchar(10) NOT NULL,
  `Tanggal` date DEFAULT NULL,
  `id_Supplier` int(5) DEFAULT NULL,
  `Keterangan` text,
  `Total_Beban` int(10) DEFAULT '0',
  `Total_Harga` int(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`id_Pembelian`, `Tanggal`, `id_Supplier`, `Keterangan`, `Total_Beban`, `Total_Harga`) VALUES
('PBB-1', '2018-01-02', 2, NULL, 0, 0),
('PBB-2', '2017-12-29', 2, 'Pembelian Barang Dagangan', 0, 0),
('PBB-3', '2017-12-29', 2, 'Pembelian Inventori', 0, 80000),
('PBB-4', '2017-12-29', 3, 'Pembelian Barang Dagangan', 780, 60780),
('PBB-5', '2017-12-29', 1, 'Pembelian Barang Dagangan', 0, 120000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan_barang`
--

CREATE TABLE `pemesanan_barang` (
  `id_Pesan` int(5) NOT NULL,
  `id_pelanggan` varchar(10) DEFAULT '0',
  `Tanggal` date DEFAULT NULL,
  `Keterangan` enum('Selesai','Belum','Batal') DEFAULT 'Belum'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pemesanan_barang`
--

INSERT INTO `pemesanan_barang` (`id_Pesan`, `id_pelanggan`, `Tanggal`, `Keterangan`) VALUES
(1, '0001', '2018-01-02', 'Belum'),
(2, '0002', '2018-01-02', 'Selesai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendapatan_jasa`
--

CREATE TABLE `pendapatan_jasa` (
  `id_Pendapatan` varchar(10) NOT NULL,
  `id_Penerimaan` varchar(10) DEFAULT NULL,
  `Tanggal` datetime NOT NULL,
  `Nama_Teknisi` varchar(6) NOT NULL,
  `Total` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pendapatan_jasa`
--

INSERT INTO `pendapatan_jasa` (`id_Pendapatan`, `id_Penerimaan`, `Tanggal`, `Nama_Teknisi`, `Total`) VALUES
('J-1', NULL, '2018-01-02 00:00:00', '0002 ', 0);

--
-- Trigger `pendapatan_jasa`
--
DELIMITER $$
CREATE TRIGGER `StatusPengembalian` AFTER INSERT ON `pendapatan_jasa` FOR EACH ROW BEGIN
UPDATE status_pengembalian_pc
SET status_pengembalian_pc.Status_pengembalian = 'Sudah' 
WHERE NEW.id_Penerimaan = status_pengembalian_pc.id_penerimaan;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan_barang`
--

CREATE TABLE `penjualan_barang` (
  `id_Penjualan` varchar(10) NOT NULL,
  `Tanggal` date NOT NULL,
  `Keterangan` text NOT NULL,
  `Total_Harga` int(20) DEFAULT '0',
  `Pelayan` varchar(5) DEFAULT NULL,
  `id_Pelanggan` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penjualan_barang`
--

INSERT INTO `penjualan_barang` (`id_Penjualan`, `Tanggal`, `Keterangan`, `Total_Harga`, `Pelayan`, `id_Pelanggan`) VALUES
('PJ-1', '2018-01-02', '', 40000, '0001', '0'),
('PJ-10', '2018-01-01', '', 80000, '0007', '0002'),
('PJ-11', '0000-00-00', '', 0, NULL, NULL),
('PJ-2', '2018-01-02', '', 160000, '0001', '0'),
('PJ-3', '2018-01-02', '', 600000, '0001', '0'),
('PJ-4', '2018-01-02', '', 240000, '0001', '0'),
('PJ-5', '2018-01-02', '', 0, '0001', '0'),
('PJ-6', '2018-01-02', '', 0, '0001', '0002'),
('PJ-7', '2018-01-03', '', 0, '0001', '0'),
('PJ-8', '2018-04-04', '', 200000, '0007', '0001'),
('PJ-9', '2018-01-04', '', 360000, '0010', '0002');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_pengembalian_pc`
--

CREATE TABLE `status_pengembalian_pc` (
  `id_penerimaan` varchar(10) DEFAULT NULL,
  `id_Pelanggan` varchar(10) DEFAULT NULL,
  `Tgl_Terima` datetime DEFAULT NULL,
  `Tgl_Pengembalian` datetime DEFAULT NULL,
  `Status_pengembalian` enum('Sudah','Belum') DEFAULT 'Belum'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur untuk view `keuntungan_penjualan`
--
DROP TABLE IF EXISTS `keuntungan_penjualan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `keuntungan_penjualan`  AS  select `penjualan_barang`.`id_Penjualan` AS `id_Penjualan`,`penjualan_barang`.`Tanggal` AS `Tanggal`,sum(((`detail_penjualan`.`Harga_satuan` * `detail_penjualan`.`Jumlah`) - (`barang`.`Harga_Beli_Satuan` * `detail_penjualan`.`Jumlah`))) AS `Keuntungan` from ((`detail_penjualan` join `barang`) join `penjualan_barang`) where ((`detail_penjualan`.`id_Barang` = `barang`.`id_barang`) and (`penjualan_barang`.`id_Penjualan` = `detail_penjualan`.`id_Penjualan`)) group by `penjualan_barang`.`id_Penjualan` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`username`),
  ADD KEY `FK_akun_anggota` (`id_Anggota`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_Anggota`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `FK_barang_kategori_barang` (`id_Kategori`);

--
-- Indexes for table `daftar_beban`
--
ALTER TABLE `daftar_beban`
  ADD PRIMARY KEY (`id_Beban`);

--
-- Indexes for table `daftar_harga_service`
--
ALTER TABLE `daftar_harga_service`
  ADD PRIMARY KEY (`id_Service`);

--
-- Indexes for table `daftar_pelanggan`
--
ALTER TABLE `daftar_pelanggan`
  ADD PRIMARY KEY (`id_Pelanggan`);

--
-- Indexes for table `daftar_penerimaan_pc`
--
ALTER TABLE `daftar_penerimaan_pc`
  ADD PRIMARY KEY (`id_Penerimaan`),
  ADD KEY `FK_daftar_penerimaan_pc_daftar_pelanggan` (`id_Pelanggan`),
  ADD KEY `FK_daftar_penerimaan_pc_anggota` (`id_Penerima_Staff`);

--
-- Indexes for table `daftar_piutang`
--
ALTER TABLE `daftar_piutang`
  ADD PRIMARY KEY (`id_Piutang`),
  ADD KEY `FK_daftar_piutang_penjualan_barang` (`id_Penjualan`);

--
-- Indexes for table `daftar_supplier`
--
ALTER TABLE `daftar_supplier`
  ADD PRIMARY KEY (`id_Supplier`);

--
-- Indexes for table `delivery_jasa`
--
ALTER TABLE `delivery_jasa`
  ADD PRIMARY KEY (`id_delivery_jasa`),
  ADD KEY `FK_pemesanan_jasabarang_daftar_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `detail_pembelian_barang`
--
ALTER TABLE `detail_pembelian_barang`
  ADD KEY `FK_detail_pembelian_barang` (`id_Barang`),
  ADD KEY `FK_detail_pembelian_pembelian_barang` (`id_Pembelian`);

--
-- Indexes for table `detail_pembelian_inven`
--
ALTER TABLE `detail_pembelian_inven`
  ADD KEY `FK_detail_pembelian_inven_inventaris` (`id_Inven`),
  ADD KEY `FK_detail_pembelian_inven_pembelian` (`id_Pembelian`);

--
-- Indexes for table `detail_pemesanan_barang`
--
ALTER TABLE `detail_pemesanan_barang`
  ADD KEY `FK_detail_pemesanan_barang_pemesanan_barang` (`id_Pesan`),
  ADD KEY `FK_detail_pemesanan_barang_barang` (`id_Barang`);

--
-- Indexes for table `detail_pendapatan_jasa`
--
ALTER TABLE `detail_pendapatan_jasa`
  ADD KEY `FK_detail_pendapatan_jasa_pendapatan_jasa` (`id_Pendapatan`),
  ADD KEY `FK_detail_pendapatan_jasa_daftar_harga_service` (`id_Service`);

--
-- Indexes for table `detail_pengeluaran_beban`
--
ALTER TABLE `detail_pengeluaran_beban`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_daftar_detail_pengeluaran_beban_pembelian_barang` (`id_Pembelian`),
  ADD KEY `FK_daftar_detail_pengeluaran_beban_daftar_pengeluaran_beban` (`id_Beban`);

--
-- Indexes for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD KEY `FK_detail_penjualan_penjualan_barang` (`id_Penjualan`),
  ADD KEY `FK_detail_penjualan_barang` (`id_Barang`);

--
-- Indexes for table `inventaris`
--
ALTER TABLE `inventaris`
  ADD PRIMARY KEY (`id_Inven`);

--
-- Indexes for table `kategori_barang`
--
ALTER TABLE `kategori_barang`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `pelunasan_piutang`
--
ALTER TABLE `pelunasan_piutang`
  ADD PRIMARY KEY (`id_Pelunasan`),
  ADD KEY `FK_pelunasan_piutang_daftar_piutang` (`id_Piutang`);

--
-- Indexes for table `pembayaran_beban`
--
ALTER TABLE `pembayaran_beban`
  ADD KEY `FK_pembayaran_beban_daftar_beban` (`id_Beban`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_Pembelian`),
  ADD KEY `FK_pembelian_barang_daftar_supplier` (`id_Supplier`);

--
-- Indexes for table `pemesanan_barang`
--
ALTER TABLE `pemesanan_barang`
  ADD PRIMARY KEY (`id_Pesan`),
  ADD KEY `FK_pemesanan_barang_daftar_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `pendapatan_jasa`
--
ALTER TABLE `pendapatan_jasa`
  ADD PRIMARY KEY (`id_Pendapatan`),
  ADD KEY `FK_pendapatan_jasa_anggota` (`Nama_Teknisi`),
  ADD KEY `FK_pendapatan_jasa_daftar_pelanggan` (`id_Penerimaan`);

--
-- Indexes for table `penjualan_barang`
--
ALTER TABLE `penjualan_barang`
  ADD PRIMARY KEY (`id_Penjualan`),
  ADD KEY `FK_penjualan_barang_anggota` (`Pelayan`),
  ADD KEY `FK_penjualan_barang_daftar_pelanggan` (`id_Pelanggan`);

--
-- Indexes for table `status_pengembalian_pc`
--
ALTER TABLE `status_pengembalian_pc`
  ADD KEY `FK_status_pengembalian_pc_daftar_penerimaan_pc` (`id_penerimaan`),
  ADD KEY `FK_status_pengembalian_pc_daftar_pelanggan` (`id_Pelanggan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar_piutang`
--
ALTER TABLE `daftar_piutang`
  MODIFY `id_Piutang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `detail_pengeluaran_beban`
--
ALTER TABLE `detail_pengeluaran_beban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `pelunasan_piutang`
--
ALTER TABLE `pelunasan_piutang`
  MODIFY `id_Pelunasan` int(11) NOT NULL AUTO_INCREMENT;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD CONSTRAINT `FK_akun_anggota` FOREIGN KEY (`id_Anggota`) REFERENCES `anggota` (`id_Anggota`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `FK_barang_kategori_barang` FOREIGN KEY (`id_Kategori`) REFERENCES `kategori_barang` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `daftar_penerimaan_pc`
--
ALTER TABLE `daftar_penerimaan_pc`
  ADD CONSTRAINT `FK_daftar_penerimaan_pc_anggota` FOREIGN KEY (`id_Penerima_Staff`) REFERENCES `anggota` (`id_Anggota`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `FK_daftar_penerimaan_pc_daftar_pelanggan` FOREIGN KEY (`id_Pelanggan`) REFERENCES `daftar_pelanggan` (`id_Pelanggan`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Ketidakleluasaan untuk tabel `daftar_piutang`
--
ALTER TABLE `daftar_piutang`
  ADD CONSTRAINT `FK_daftar_piutang_penjualan_barang` FOREIGN KEY (`id_Penjualan`) REFERENCES `penjualan_barang` (`id_Penjualan`);

--
-- Ketidakleluasaan untuk tabel `delivery_jasa`
--
ALTER TABLE `delivery_jasa`
  ADD CONSTRAINT `FK_pemesanan_jasabarang_daftar_pelanggan` FOREIGN KEY (`id_pelanggan`) REFERENCES `daftar_pelanggan` (`id_Pelanggan`);

--
-- Ketidakleluasaan untuk tabel `detail_pembelian_barang`
--
ALTER TABLE `detail_pembelian_barang`
  ADD CONSTRAINT `FK_detail_pembelian_barang` FOREIGN KEY (`id_Barang`) REFERENCES `barang` (`id_barang`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `FK_detail_pembelian_pembelian_barang` FOREIGN KEY (`id_Pembelian`) REFERENCES `pembelian` (`id_Pembelian`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Ketidakleluasaan untuk tabel `detail_pembelian_inven`
--
ALTER TABLE `detail_pembelian_inven`
  ADD CONSTRAINT `FK_detail_pembelian_inven_inventaris` FOREIGN KEY (`id_Inven`) REFERENCES `inventaris` (`id_Inven`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `FK_detail_pembelian_inven_pembelian` FOREIGN KEY (`id_Pembelian`) REFERENCES `pembelian` (`id_Pembelian`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Ketidakleluasaan untuk tabel `detail_pemesanan_barang`
--
ALTER TABLE `detail_pemesanan_barang`
  ADD CONSTRAINT `FK_detail_pemesanan_barang_barang` FOREIGN KEY (`id_Barang`) REFERENCES `barang` (`id_barang`),
  ADD CONSTRAINT `FK_detail_pemesanan_barang_pemesanan_barang` FOREIGN KEY (`id_Pesan`) REFERENCES `pemesanan_barang` (`id_Pesan`);

--
-- Ketidakleluasaan untuk tabel `detail_pendapatan_jasa`
--
ALTER TABLE `detail_pendapatan_jasa`
  ADD CONSTRAINT `FK_detail_pendapatan_jasa_daftar_harga_service` FOREIGN KEY (`id_Service`) REFERENCES `daftar_harga_service` (`id_Service`),
  ADD CONSTRAINT `FK_detail_pendapatan_jasa_pendapatan_jasa` FOREIGN KEY (`id_Pendapatan`) REFERENCES `pendapatan_jasa` (`id_Pendapatan`);

--
-- Ketidakleluasaan untuk tabel `detail_pengeluaran_beban`
--
ALTER TABLE `detail_pengeluaran_beban`
  ADD CONSTRAINT `FK_daftar_detail_pengeluaran_beban_daftar_pengeluaran_beban` FOREIGN KEY (`id_Beban`) REFERENCES `daftar_beban` (`id_Beban`),
  ADD CONSTRAINT `FK_daftar_detail_pengeluaran_beban_pembelian_barang` FOREIGN KEY (`id_Pembelian`) REFERENCES `pembelian` (`id_Pembelian`);

--
-- Ketidakleluasaan untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD CONSTRAINT `FK_detail_penjualan_barang` FOREIGN KEY (`id_Barang`) REFERENCES `barang` (`id_barang`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `FK_detail_penjualan_penjualan_barang` FOREIGN KEY (`id_Penjualan`) REFERENCES `penjualan_barang` (`id_Penjualan`);

--
-- Ketidakleluasaan untuk tabel `pelunasan_piutang`
--
ALTER TABLE `pelunasan_piutang`
  ADD CONSTRAINT `FK_pelunasan_piutang_daftar_piutang` FOREIGN KEY (`id_Piutang`) REFERENCES `daftar_piutang` (`id_Piutang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pembayaran_beban`
--
ALTER TABLE `pembayaran_beban`
  ADD CONSTRAINT `FK_pembayaran_beban_daftar_beban` FOREIGN KEY (`id_Beban`) REFERENCES `daftar_beban` (`id_Beban`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Ketidakleluasaan untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `FK_pembelian_barang_daftar_supplier` FOREIGN KEY (`id_Supplier`) REFERENCES `daftar_supplier` (`id_Supplier`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pemesanan_barang`
--
ALTER TABLE `pemesanan_barang`
  ADD CONSTRAINT `FK_pemesanan_barang_daftar_pelanggan` FOREIGN KEY (`id_pelanggan`) REFERENCES `daftar_pelanggan` (`id_Pelanggan`);

--
-- Ketidakleluasaan untuk tabel `pendapatan_jasa`
--
ALTER TABLE `pendapatan_jasa`
  ADD CONSTRAINT `FK_pendapatan_jasa_anggota` FOREIGN KEY (`Nama_Teknisi`) REFERENCES `anggota` (`id_Anggota`),
  ADD CONSTRAINT `FK_pendapatan_jasa_daftar_pelanggan` FOREIGN KEY (`id_Penerimaan`) REFERENCES `daftar_penerimaan_pc` (`id_Penerimaan`);

--
-- Ketidakleluasaan untuk tabel `penjualan_barang`
--
ALTER TABLE `penjualan_barang`
  ADD CONSTRAINT `FK_penjualan_barang_anggota` FOREIGN KEY (`Pelayan`) REFERENCES `anggota` (`id_Anggota`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `FK_penjualan_barang_daftar_pelanggan` FOREIGN KEY (`id_Pelanggan`) REFERENCES `daftar_pelanggan` (`id_Pelanggan`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Ketidakleluasaan untuk tabel `status_pengembalian_pc`
--
ALTER TABLE `status_pengembalian_pc`
  ADD CONSTRAINT `FK_status_pengembalian_pc_daftar_pelanggan` FOREIGN KEY (`id_Pelanggan`) REFERENCES `daftar_pelanggan` (`id_Pelanggan`),
  ADD CONSTRAINT `FK_status_pengembalian_pc_daftar_penerimaan_pc` FOREIGN KEY (`id_penerimaan`) REFERENCES `daftar_penerimaan_pc` (`id_Penerimaan`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
