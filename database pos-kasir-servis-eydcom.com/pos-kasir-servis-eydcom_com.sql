-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2023 at 10:37 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos-kasir-servis-eydcom.com`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `barang_id` int(11) NOT NULL,
  `barang_kode` varchar(500) NOT NULL,
  `barang_kode_slug` varchar(500) NOT NULL,
  `barang_kode_count` int(11) NOT NULL,
  `barang_nama` varchar(250) NOT NULL,
  `barang_harga_beli` varchar(250) NOT NULL,
  `barang_harga` varchar(250) NOT NULL,
  `barang_stock` text NOT NULL,
  `barang_tanggal` varchar(250) NOT NULL,
  `barang_kategori_id` int(11) NOT NULL,
  `kategori_id` varchar(250) NOT NULL,
  `barang_satuan_id` varchar(250) NOT NULL,
  `satuan_id` varchar(250) NOT NULL,
  `barang_deskripsi` text NOT NULL,
  `barang_option_sn` int(11) NOT NULL,
  `barang_status` int(11) NOT NULL,
  `barang_terjual` int(11) NOT NULL,
  `barang_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`barang_id`, `barang_kode`, `barang_kode_slug`, `barang_kode_count`, `barang_nama`, `barang_harga_beli`, `barang_harga`, `barang_stock`, `barang_tanggal`, `barang_kategori_id`, `kategori_id`, `barang_satuan_id`, `satuan_id`, `barang_deskripsi`, `barang_option_sn`, `barang_status`, `barang_terjual`, `barang_cabang`) VALUES
(53, '12345678', '12345678', 7, 'Kabel Sata', '4900', '12000', '-2', '09 November 2021 7:34:19 pm', 8, '8', '2', '2', 'Kabel Sata', 0, 0, 0, 0),
(54, 'BRG 001', 'BRG-001', 6, 'Monitor Samsung', '5667', '150000', '-2', '09 November 2021 7:38:07 pm', 6, '6', '3', '3', 'Monitor Samsung', 0, 0, 0, 0),
(57, '122324242', '122324242', 3, 'Moushe Biasa', '', '25000', '10', '13 November 2021 6:59:25 pm', 7, '7', '3', '3', 'Moushe Biasa', 0, 0, 0, 0),
(62, '12345678434', '12345678434', 5, 'Charger HP', '5000', '15000', '0', '14 November 2021 8:07:11 pm', 8, '8', '2', '2', 'Charger HP', 0, 0, 0, 0),
(63, 'BRG 004', 'BRG-004', 6, 'Kabel Sata Biasa', '', '12000', '5', '14 November 2021 8:52:37 pm', 8, '8', '2', '2', 'Kabel Sata Biasa', 0, 0, 0, 0),
(64, 'BRG 005', 'BRG-005', 7, 'Moushe Samsung', '', '15000', '10', '14 November 2021 8:53:18 pm', 7, '7', '2', '2', 'Moushe Samsung', 0, 0, 0, 0),
(66, 'BRG 007', 'BRG-007', 9, 'Monitor LG 2', '', '1200000', '8', '14 November 2021 8:54:29 pm', 6, '6', '3', '3', 'Monitor LG 2', 0, 3, 2, 0),
(69, 'BRG 0010', 'BRG-0010', 12, 'Monitor Acer', '', '12000000', '17', '14 November 2021 8:56:35 pm', 6, '6', '3', '3', 'Monitor Acer', 0, 1, 1, 0),
(70, 'BRG 008', 'BRG-008', 13, 'FWEF', '', '300000', '7', '15 January 2022 11:36:06 am', 9, '9', '3', '3', 'FEWF', 1, 1, 0, 0),
(71, 'lcd-01', 'lcd-01', 14, 'LCD Samsung', '1000', '200000', '10', '15 January 2022 11:42:05 am', 12, '12', '3', '3', 'LCD Samsung Kualitas Terbaik', 1, 1, 1, 0),
(72, '6465475678568', '6465475678568', 15, 'TS Hp Samsung', '10000', '450000', '4', '18 January 2022 3:13:03 pm', 9, '9', '3', '3', 'TS Hp Samsung', 0, 1, 1, 0),
(73, '45376968543213456', '45376968543213456', 1, 'batt', '', '50000', '11', '28 October 2023 12:52:17 pm', 13, '13', '4', '4', 'frfgvrvecerw', 0, 3, 0, 2),
(74, 'Ram Laptop', 'Ram-Laptop', 1, 'Ram Laptop', '', '150000', '99', '28 October 2023 12:52:50 pm', 13, '13', '4', '4', 'Ram Laptop', 0, 3, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `barang_sn`
--

CREATE TABLE `barang_sn` (
  `barang_sn_id` int(11) NOT NULL,
  `barang_sn_desc` text NOT NULL,
  `barang_kode_slug` varchar(500) NOT NULL,
  `barang_sn_status` int(11) NOT NULL,
  `barang_sn_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `barang_sn`
--

INSERT INTO `barang_sn` (`barang_sn_id`, `barang_sn_desc`, `barang_kode_slug`, `barang_sn_status`, `barang_sn_cabang`) VALUES
(13, '46346346457', 'lcd-01', 3, 0),
(14, '643645745754', 'lcd-01', 3, 0),
(15, '464645754754', 'lcd-01', 3, 0),
(16, '6436457457', 'lcd-01', 3, 0),
(17, '745754758', 'lcd-01', 0, 0),
(18, '745754856', 'lcd-01', 1, 0),
(19, '45756856869679', 'lcd-01', 2, 0),
(20, '457547568', 'lcd-01', 1, 0),
(21, '575485686598659', 'lcd-01', 1, 0),
(22, '8658658454', 'lcd-01', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_nama` varchar(500) NOT NULL,
  `customer_tlpn` varchar(250) NOT NULL,
  `customer_email` varchar(250) NOT NULL,
  `customer_alamat` text NOT NULL,
  `customer_date` varchar(250) NOT NULL,
  `customer_create` varchar(250) NOT NULL,
  `customer_status` varchar(250) NOT NULL,
  `customer_count_invoice` int(11) NOT NULL,
  `customer_count_servis` int(11) NOT NULL,
  `customer_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_nama`, `customer_tlpn`, `customer_email`, `customer_alamat`, `customer_date`, `customer_create`, `customer_status`, `customer_count_invoice`, `customer_count_servis`, `customer_cabang`) VALUES
(0, 'Customer Umum', '', '', '', '', '', '1', 3, 0, 0),
(5, 'Asrul', '081279721081', '', 'Jl. Kedung Cowek No.350, Tanah Kali Kedinding, Kec. Kenjeran, Kota SBY, Jawa Timur 60129', '', '11 April 2020 1:35:37 pm', '1', 0, 0, 0),
(7, 'Raka Abdi', '081279721081', 'abdi@gmail.com', 'Jl. Kedung Cowek No.350, Tanah Kali Kedinding, Kenjeran, Kota SBY, Jawa Timur 60129', '', '12 April 2020 1:00:07 pm', '1', 0, 1, 0),
(10, 'Pak Budi', '081279721081', '', 'Jl. KENJERAN No. 440 Desa Gading Kec. TambaksariKota Surabaya', '', '19 August 2021 6:05:44 pm', '1', 0, 0, 0),
(12, 'Doni Afandi', '081279721081', 'senimankoding@gmail.com', 'Surabaya Jawa Timur', '2022-01-15', '15 January 2022 8:46:24 pm', '1', 0, 0, 0),
(20, 'Raka Putra', '081279721081', '', 'Surabaya', '2022-01-17', '17 January 2022 2:32:11 pm', '1', 0, 2, 0),
(21, 'Rehan', '082372316681', '', 'rewr', '2022-01-22', '22 January 2022 11:30:46 am', '1', 1, 3, 0),
(22, 'Customer Umum', '', '', '', '', '', '1', 0, 0, 0),
(23, 'Doni Afandi', '085780956485', '', 'Surabaya', '2022-03-01', '01 March 2022 5:34:45 pm', '1', 0, 1, 1),
(24, 'tes', '082299078642', '', 'tes', '2022-03-01', '01 March 2022 5:51:07 pm', '1', 0, 0, 1),
(25, 'Joni', '081228736733', '', 'Majapahit', '2023-10-16', '16 October 2023 10:53:09 am', '1', 0, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `data_servis`
--

CREATE TABLE `data_servis` (
  `ds_id` int(11) NOT NULL,
  `ds_nota` text NOT NULL,
  `ds_nota_count` text NOT NULL,
  `ds_customer_id` int(11) NOT NULL,
  `ds_kategori_jenis_barang_servis_id` int(11) NOT NULL,
  `ds_merk` varchar(500) NOT NULL,
  `ds_model_seri` varchar(250) NOT NULL,
  `ds_sn` varchar(250) NOT NULL,
  `ds_imei` varchar(250) NOT NULL,
  `ds_warna` varchar(250) NOT NULL,
  `ds_memory` varchar(250) NOT NULL,
  `ds_kelengkapan` varchar(500) NOT NULL,
  `ds_kerusakan` varchar(500) NOT NULL,
  `ds_kondisi_unit_masuk` varchar(250) NOT NULL,
  `ds_keterangan` text NOT NULL,
  `ds_password` varchar(250) NOT NULL,
  `ds_dp` int(11) NOT NULL,
  `ds_penerima_id` int(11) NOT NULL,
  `ds_terima_date` varchar(250) NOT NULL,
  `ds_terima_date_time` varchar(250) NOT NULL,
  `ds_kondisi_barang` varchar(500) NOT NULL,
  `ds_note` text NOT NULL,
  `ds_total_biaya_jasa` int(11) NOT NULL,
  `ds_total_biaya_sparepart` int(11) NOT NULL,
  `ds_total_biaya_sparepart_beli` int(11) NOT NULL,
  `ds_total` int(11) NOT NULL,
  `ds_total_sisa_bayar` int(11) NOT NULL,
  `ds_teknisi` int(11) NOT NULL,
  `ds_teknisi_disarankan` int(11) NOT NULL,
  `ds_penyerah_id` int(11) NOT NULL,
  `ds_ambil_date` varchar(250) NOT NULL,
  `ds_ambil_date_time` varchar(250) NOT NULL,
  `ds_status` int(11) NOT NULL,
  `ds_garansi` varchar(250) NOT NULL,
  `ds_garansi_date_time` varchar(250) NOT NULL,
  `ds_garansi_komplain_date` varchar(250) NOT NULL,
  `ds_garansi_komplain_date_time` varchar(250) NOT NULL,
  `ds_garansi_komplain_penerima_id` int(11) NOT NULL,
  `ds_garansi_komplain_note` text NOT NULL,
  `ds_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `data_servis`
--

INSERT INTO `data_servis` (`ds_id`, `ds_nota`, `ds_nota_count`, `ds_customer_id`, `ds_kategori_jenis_barang_servis_id`, `ds_merk`, `ds_model_seri`, `ds_sn`, `ds_imei`, `ds_warna`, `ds_memory`, `ds_kelengkapan`, `ds_kerusakan`, `ds_kondisi_unit_masuk`, `ds_keterangan`, `ds_password`, `ds_dp`, `ds_penerima_id`, `ds_terima_date`, `ds_terima_date_time`, `ds_kondisi_barang`, `ds_note`, `ds_total_biaya_jasa`, `ds_total_biaya_sparepart`, `ds_total_biaya_sparepart_beli`, `ds_total`, `ds_total_sisa_bayar`, `ds_teknisi`, `ds_teknisi_disarankan`, `ds_penyerah_id`, `ds_ambil_date`, `ds_ambil_date_time`, `ds_status`, `ds_garansi`, `ds_garansi_date_time`, `ds_garansi_komplain_date`, `ds_garansi_komplain_date_time`, `ds_garansi_komplain_penerima_id`, `ds_garansi_komplain_note`, `ds_cabang`) VALUES
(97, '1', '1', 23, 4, 'Samsung', 'A300', '24242553', '24235235', 'Hitam', '16', 'Btre', 'Flash', 'Nyala', '', '', 0, 3, '2022-03-01', '01 March 2022 5:36:28 pm', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '-', '-', 1, '', '', '', '', 0, '', 1),
(98, '1', '1', 21, 3, 'acer', '4343', '', '', 'hitam', '', 'kabel power', 'No Display', 'rusak', '', '', 0, 3, '2023-09-20', '20 September 2023 10:14:45 am', 'hidup normal', '-', 100000, 0, 0, 100000, 100000, 3, 0, 3, '2023-09-20', '20 September 2023 10:16:53 am', 6, '2023-09-19', '19 September 2023', '', '', 0, '', 0),
(99, '2', '2', 20, 2, 'oppo', 'a37', '', '', 'coklat', '', 'charger', 'lcd', 'lcd pecah', '', '', 0, 3, '2023-09-20', '20 September 2023 10:15:48 am', '', '', 0, 0, 0, 0, 0, 3, 0, 0, '-', '-', 4, '', '', '', '', 0, '', 0),
(100, '3', '3', 7, 3, 'Acer', 'A43s', '', '', 'Hitam', '8gb', 'Charger', 'No display', 'No display', '', '', 0, 3, '2023-09-20', '20 September 2023 12:30:15 pm', 'Oke', '-', 50000, 0, 0, 50000, 50000, 3, 0, 19, '2023-10-11', '11 October 2023 3:48:47 pm', 6, '2023-10-11', '11 October 2023', '', '', 0, '', 0),
(101, '4', '4', 21, 2, 'SAMNUG', '45435435435', '4654366456', '465435234', 'ygfhgh', 'ghtrh', 'tryrytre', 'trhtrhgtr', 'retetr4et', 'fdgdgfre', '1234', 1000, 3, '2023-10-11', '11 October 2023 9:14:26 am', '', '', 0, 0, 0, 0, 0, 0, 21, 0, '-', '-', 1, '', '', '', '', 0, '', 0),
(102, '1', '1', 25, 5, 'SAMNUG', '45435435435', '4654366456', '65643532321', 'Merah', '', 'Laptop', 'MATOT', 'MATOT', 'MATOT', '1234', 10000, 3, '2023-10-16', '16 October 2023 10:58:52 am', '', '', 0, 0, 0, 0, 0, 0, 21, 0, '-', '-', 1, '', '', '', '', 0, '', 2),
(103, '2', '2', 25, 5, 'SAMNUG', '45435435435', '4654366456', '65643532321', 'Merah', '', 'Laptop', 'MATOT', 'MATOT', '', '1234', 100000, 23, '2023-10-19', '19 October 2023 10:21:43 am', '', '', 0, 0, 0, 0, 0, 3, 0, 0, '-', '-', 4, '', '', '', '', 0, '', 2),
(104, '5', '5', 21, 3, 'Acer', '4743', '', '', 'Hitam', '', 'Charger dan laptop', 'No display', 'Layar gelap', '', '', 0, 19, '2023-10-20', '20 October 2023 10:40:05 pm', 'oke', 'Konfirmasi Servis\r\nEYD COMPUTER\r\nwww.eydcom.com\r\n\r\n&quot;LAPTOP&quot; nya sudah kami cek kak..ðŸ˜ŠðŸ™\r\nKerusakan &quot;MAINBOARD&quot; nya..\r\n-Biaya servis &quot;Rp. 700.000&quot;\r\n-Garansi &quot;1bulan&quot;\r\n-Estimasi pengerjaan &quot;14 hari kerja&quot; \r\n(itu hanya waktu estimasi ya kak.. pengerjaan bisa lebih cepat atau lebih lama tergantung kendala dalam pengerjaan)\r\nJika sudah selesai akan langsung kami hubungiðŸ˜ŠðŸ™\r\n&quot;Untuk kerusakan lain nya belum bisa kami cek ya kak karna sekarang masih dalam keadaan rusak..ðŸ˜ŠðŸ™&quot;\r\nMohon segera konfirmasi kembali ya kak, mau dilanjutkan servis atau tidak..\r\nTerimaksihðŸ˜ŠðŸ™ ', 0, 2400000, 0, 2400000, 2400000, 3, 0, 0, '-', '-', 4, '', '', '', '', 0, '', 0),
(105, '3', '3', 25, 6, 'oppo', 'a37', '', '', 'putih', '', 'unit', 'no display', 'mati', '', '', 0, 3, '2023-10-29', '29 October 2023 12:56:01 pm', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '-', '-', 1, '', '', '', '', 0, '', 2),
(106, '6', '6', 20, 2, 'oppo', 'a37', '', '', 'putih', '', 'unit', 'no display', 'nyala tidak tampil', 'sedang di pakai tiba tiba mati tidak tampil', '', 0, 3, '2023-11-02', '02 November 2023 8:50:22 am', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '-', '-', 1, '', '', '', '', 0, '', 0);

--
-- Triggers `data_servis`
--
DELIMITER $$
CREATE TRIGGER `customer_count_servis` AFTER INSERT ON `data_servis` FOR EACH ROW BEGIN 
	UPDATE customer SET customer_count_servis = customer_count_servis+1
    WHERE customer_id = NEW.ds_customer_id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `customer_count_servis_delete` AFTER DELETE ON `data_servis` FOR EACH ROW BEGIN
 UPDATE customer
 SET customer_count_servis = customer_count_servis - 1
WHERE customer_id = OLD.ds_customer_id;
 END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `data_servis_sparepart`
--

CREATE TABLE `data_servis_sparepart` (
  `dss_id` int(11) NOT NULL,
  `dss_nama` varchar(500) NOT NULL,
  `dss_harga_beli` varchar(250) NOT NULL,
  `dss_harga` varchar(250) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `barang_kode_slug` varchar(250) NOT NULL,
  `dss_qty` int(11) NOT NULL,
  `dss_barang_sn_id` int(11) NOT NULL,
  `dss_barang_option_sn` int(11) NOT NULL,
  `dss_sn` text NOT NULL,
  `dss_id_teknisi` int(11) NOT NULL,
  `dss_nota` varchar(500) NOT NULL,
  `dss_cek` int(11) NOT NULL,
  `dss_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `data_servis_sparepart`
--

INSERT INTO `data_servis_sparepart` (`dss_id`, `dss_nama`, `dss_harga_beli`, `dss_harga`, `barang_id`, `barang_kode_slug`, `dss_qty`, `dss_barang_sn_id`, `dss_barang_option_sn`, `dss_sn`, `dss_id_teknisi`, `dss_nota`, `dss_cek`, `dss_cabang`) VALUES
(5, 'Monitor LG 2', '', '1200000', 66, 'BRG-007', 1, 0, 0, '0', 3, '2', 66302, 0),
(8, 'Ram Laptop', '', '150000', 74, 'Ram-Laptop', 1, 0, 0, '0', 3, '2', 74322, 2),
(10, 'Monitor LG 2', '', '1200000', 66, 'BRG-007', 1, 0, 0, '0', 3, '5', 66305, 0);

--
-- Triggers `data_servis_sparepart`
--
DELIMITER $$
CREATE TRIGGER `batal_add_sparepart` AFTER DELETE ON `data_servis_sparepart` FOR EACH ROW BEGIN
 UPDATE barang
 SET barang_stock = barang_stock + OLD.dss_qty,
 barang_terjual = barang_terjual - OLD.dss_qty
 WHERE
 barang_id = OLD.barang_id;
 END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `data_servis_teknisi`
--

CREATE TABLE `data_servis_teknisi` (
  `dst_id` int(11) NOT NULL,
  `dst_id_nota` int(11) NOT NULL,
  `dst_teknisi_id` int(11) NOT NULL,
  `dst_id_servis` int(11) NOT NULL,
  `dst_kategori_servis` int(11) NOT NULL,
  `dst_nama_servis` varchar(500) NOT NULL,
  `ds_biaya_jasa_teknisi` int(11) NOT NULL,
  `ds_biaya_profit` int(11) NOT NULL,
  `dst_servis_biaya` int(11) NOT NULL,
  `dst_pengambilan_date` varchar(250) NOT NULL,
  `dst_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `data_servis_teknisi`
--

INSERT INTO `data_servis_teknisi` (`dst_id`, `dst_id_nota`, `dst_teknisi_id`, `dst_id_servis`, `dst_kategori_servis`, `dst_nama_servis`, `ds_biaya_jasa_teknisi`, `ds_biaya_profit`, `dst_servis_biaya`, `dst_pengambilan_date`, `dst_cabang`) VALUES
(26, 1, 3, 6, 2, 'Flash Hp', 60000, 40000, 100000, '2023-09-20', 0),
(27, 3, 3, 2, 3, 'Servis Lcd', 20000, 30000, 50000, '2023-10-11', 0),
(28, 2, 3, 6, 2, 'Flash Hp', 60000, 40000, 100000, '', 0),
(29, 2, 3, 8, 5, 'Laptop', 100000, 500, 100500, '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ekspedisi`
--

CREATE TABLE `ekspedisi` (
  `ekspedisi_id` int(11) NOT NULL,
  `ekspedisi_nama` varchar(500) NOT NULL,
  `ekspedisi_status` varchar(250) NOT NULL,
  `ekspedisi_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ekspedisi`
--

INSERT INTO `ekspedisi` (`ekspedisi_id`, `ekspedisi_nama`, `ekspedisi_status`, `ekspedisi_cabang`) VALUES
(2, 'JNE', '1', 0),
(3, 'TIKI', '1', 0),
(4, 'POS', '1', 0),
(5, 'JNE Cabang', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `history_servis_tekinis`
--

CREATE TABLE `history_servis_tekinis` (
  `hst_id` int(11) NOT NULL,
  `hst_nota` varchar(500) NOT NULL,
  `hst_teknisi` int(11) NOT NULL,
  `hst_status` int(11) NOT NULL,
  `hst_date` varchar(250) NOT NULL,
  `hst_date_time` varchar(250) NOT NULL,
  `hst_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `history_servis_tekinis`
--

INSERT INTO `history_servis_tekinis` (`hst_id`, `hst_nota`, `hst_teknisi`, `hst_status`, `hst_date`, `hst_date_time`, `hst_cabang`) VALUES
(137, '1', 3, 4, '2023-09-20', '20 September 2023 10:16:01 am', 0),
(138, '1', 3, 5, '2023-09-20', '20 September 2023 10:16:29 am', 0),
(139, '1', 3, 6, '2023-09-20', '20 September 2023 10:16:53 am', 0),
(140, '3', 3, 4, '2023-09-20', '20 September 2023 12:30:36 pm', 0),
(141, '3', 3, 5, '2023-09-20', '20 September 2023 12:31:12 pm', 0),
(142, '2', 3, 4, '2023-09-20', '20 September 2023 3:14:07 pm', 0),
(143, '3', 3, 6, '2023-10-11', '11 October 2023 3:48:47 pm', 0),
(144, '2', 3, 4, '2023-10-28', '28 October 2023 12:49:42 pm', 2),
(145, '5', 3, 4, '2023-11-01', '01 November 2023 12:04:19 pm', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hutang`
--

CREATE TABLE `hutang` (
  `hutang_id` int(11) NOT NULL,
  `hutang_invoice` text NOT NULL,
  `hutang_invoice_parent` text NOT NULL,
  `hutang_date` varchar(500) NOT NULL,
  `hutang_date_time` varchar(500) NOT NULL,
  `hutang_kasir` int(11) NOT NULL,
  `hutang_nominal` varchar(500) NOT NULL,
  `hutang_tipe_pembayaran` int(11) NOT NULL,
  `hutang_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hutang_kembalian`
--

CREATE TABLE `hutang_kembalian` (
  `hl_id` int(11) NOT NULL,
  `hl_invoice` text NOT NULL,
  `hl_invoice_parent` text NOT NULL,
  `hl_date` varchar(500) NOT NULL,
  `hl_date_time` varchar(500) NOT NULL,
  `hl_nominal` varchar(500) NOT NULL,
  `hl_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hutang_kembalian`
--

INSERT INTO `hutang_kembalian` (`hl_id`, `hl_invoice`, `hl_invoice_parent`, `hl_date`, `hl_date_time`, `hl_nominal`, `hl_cabang`) VALUES
(1, '643645745890', '20211110430', '2021-11-10', '10 November 2021 6:53:09 pm', '5000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `penjualan_invoice` text NOT NULL,
  `penjualan_invoice_count` varchar(250) NOT NULL,
  `invoice_tgl` varchar(250) NOT NULL,
  `invoice_customer` varchar(500) NOT NULL,
  `invoice_kurir` varchar(500) NOT NULL,
  `invoice_status_kurir` int(11) NOT NULL,
  `invoice_tipe_transaksi` int(11) NOT NULL,
  `invoice_total_beli` int(11) NOT NULL,
  `invoice_total` int(11) NOT NULL,
  `invoice_ongkir` int(11) NOT NULL,
  `invoice_sub_total` int(11) NOT NULL,
  `invoice_bayar` int(11) NOT NULL,
  `invoice_kembali` int(11) NOT NULL,
  `invoice_kasir` varchar(500) NOT NULL,
  `invoice_date` date NOT NULL,
  `invoice_date_edit` varchar(500) NOT NULL,
  `invoice_kasir_edit` varchar(250) NOT NULL,
  `invoice_total_beli_lama` int(11) NOT NULL,
  `invoice_total_lama` varchar(500) NOT NULL,
  `invoice_ongkir_lama` int(11) NOT NULL,
  `invoice_sub_total_lama` int(11) NOT NULL,
  `invoice_bayar_lama` varchar(500) NOT NULL,
  `invoice_kembali_lama` varchar(500) NOT NULL,
  `invoice_marketplace` varchar(500) NOT NULL,
  `invoice_ekspedisi` int(11) NOT NULL,
  `invoice_no_resi` varchar(500) NOT NULL,
  `invoice_date_selesai_kurir` varchar(500) NOT NULL,
  `invoice_piutang` int(11) NOT NULL,
  `invoice_piutang_dp` varchar(500) NOT NULL,
  `invoice_piutang_jatuh_tempo` varchar(500) NOT NULL,
  `invoice_piutang_lunas` int(11) NOT NULL,
  `invoice_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `penjualan_invoice`, `penjualan_invoice_count`, `invoice_tgl`, `invoice_customer`, `invoice_kurir`, `invoice_status_kurir`, `invoice_tipe_transaksi`, `invoice_total_beli`, `invoice_total`, `invoice_ongkir`, `invoice_sub_total`, `invoice_bayar`, `invoice_kembali`, `invoice_kasir`, `invoice_date`, `invoice_date_edit`, `invoice_kasir_edit`, `invoice_total_beli_lama`, `invoice_total_lama`, `invoice_ongkir_lama`, `invoice_sub_total_lama`, `invoice_bayar_lama`, `invoice_kembali_lama`, `invoice_marketplace`, `invoice_ekspedisi`, `invoice_no_resi`, `invoice_date_selesai_kurir`, `invoice_piutang`, `invoice_piutang_dp`, `invoice_piutang_jatuh_tempo`, `invoice_piutang_lunas`, `invoice_cabang`) VALUES
(2, '202309201', '1', '20 September 2023 10:17:49 am', '0', '0', 1, 0, 0, 12000000, 0, 12000000, 12000000, 0, '3', '2023-09-20', ' ', ' ', 0, '12000000', 0, 12000000, '12000000', '0', '', 0, '-', '-', 0, '0', '0', 0, 0),
(3, '202309202', '2', '20 September 2023 12:28:58 pm', '0', '0', 1, 0, 200000, 450000, 0, 450000, 450000, 0, '3', '2023-09-20', ' ', ' ', 200000, '450000', 0, 450000, '450000', '0', '', 0, '-', '-', 0, '0', '0', 0, 0),
(4, '202310113', '3', '11 October 2023 9:33:14 am', '0', '0', 1, 0, 0, 0, 0, 0, 200000, 200000, '19', '2023-10-11', '2023-10-12', '3', 0, '200000', 0, 200000, '200000', '0', '', 0, '-', '-', 0, '0', '0', 0, 0),
(5, '202311024', '4', '02 November 2023 8:28:33 am', '21', '0', 1, 1, 1000, 200000, 0, 200000, 200000, 0, '3', '2023-11-02', ' ', ' ', 1000, '200000', 0, 200000, '200000', '0', '', 0, '-', '-', 0, '0', '0', 0, 0);

--
-- Triggers `invoice`
--
DELIMITER $$
CREATE TRIGGER `customer_count_invoice` AFTER INSERT ON `invoice` FOR EACH ROW BEGIN 
	UPDATE customer SET customer_count_invoice = customer_count_invoice+1
    WHERE customer_id = NEW.invoice_customer;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `customer_count_invoice_delete` AFTER DELETE ON `invoice` FOR EACH ROW BEGIN
 UPDATE customer
 SET customer_count_invoice = customer_count_invoice - 1
WHERE customer_id = OLD.invoice_customer;
 END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_pembelian`
--

CREATE TABLE `invoice_pembelian` (
  `invoice_pembelian_id` int(11) NOT NULL,
  `pembelian_invoice` text NOT NULL,
  `pembelian_invoice_parent` text NOT NULL,
  `invoice_tgl` varchar(250) NOT NULL,
  `invoice_supplier` varchar(500) NOT NULL,
  `invoice_total` int(11) NOT NULL,
  `invoice_bayar` int(11) NOT NULL,
  `invoice_kembali` int(11) NOT NULL,
  `invoice_kasir` varchar(500) NOT NULL,
  `invoice_date` date NOT NULL,
  `invoice_date_edit` varchar(500) NOT NULL,
  `invoice_kasir_edit` varchar(250) NOT NULL,
  `invoice_total_lama` varchar(500) NOT NULL,
  `invoice_bayar_lama` varchar(500) NOT NULL,
  `invoice_kembali_lama` varchar(500) NOT NULL,
  `invoice_hutang` int(11) NOT NULL,
  `invoice_hutang_dp` varchar(500) NOT NULL,
  `invoice_hutang_jatuh_tempo` varchar(500) NOT NULL,
  `invoice_hutang_lunas` int(11) NOT NULL,
  `invoice_pembelian_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `invoice_pembelian`
--

INSERT INTO `invoice_pembelian` (`invoice_pembelian_id`, `pembelian_invoice`, `pembelian_invoice_parent`, `invoice_tgl`, `invoice_supplier`, `invoice_total`, `invoice_bayar`, `invoice_kembali`, `invoice_kasir`, `invoice_date`, `invoice_date_edit`, `invoice_kasir_edit`, `invoice_total_lama`, `invoice_bayar_lama`, `invoice_kembali_lama`, `invoice_hutang`, `invoice_hutang_dp`, `invoice_hutang_jatuh_tempo`, `invoice_hutang_lunas`, `invoice_pembelian_cabang`) VALUES
(9, '40', '20231101130', '01 November 2023 11:47:28 am', '4', 41000, 4000, -37000, '3                                  ', '2023-11-01', ' ', ' ', '41000', '4000', '-37000', 0, '0', '0', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_pembelian_number`
--

CREATE TABLE `invoice_pembelian_number` (
  `invoice_pembelian_number_id` int(11) NOT NULL,
  `invoice_pembelian_number_input` varchar(250) NOT NULL,
  `invoice_pembelian_number_parent` text NOT NULL,
  `invoice_pembelian_number_user` varchar(250) NOT NULL,
  `invoice_pembelian_number_delete` varchar(250) NOT NULL,
  `invoice_pembelian_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `invoice_pembelian_number`
--

INSERT INTO `invoice_pembelian_number` (`invoice_pembelian_number_id`, `invoice_pembelian_number_input`, `invoice_pembelian_number_parent`, `invoice_pembelian_number_user`, `invoice_pembelian_number_delete`, `invoice_pembelian_cabang`) VALUES
(9, '1234567876', '2021071912', '3', '202107191230', 0),
(10, '6436457457', '202110233', '3', '20211023330', 0),
(11, '6436457457', '202110233', '3', '20211023331', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(500) NOT NULL,
  `kategori_status` varchar(250) NOT NULL,
  `kategori_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_nama`, `kategori_status`, `kategori_cabang`) VALUES
(2, 'Laptop', '1', 0),
(4, 'Keyboard', '1', 0),
(6, 'Monitor', '1', 0),
(7, 'Mouse', '1', 0),
(8, 'Kabel', '1', 0),
(9, 'Hp', '1', 0),
(12, 'Sparepart', '1', 0),
(13, 'spp', '1', 2);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_servis`
--

CREATE TABLE `kategori_servis` (
  `kategori_servis_id` int(11) NOT NULL,
  `kategori_servis_nama` varchar(500) NOT NULL,
  `kategori_servis_status` int(11) NOT NULL,
  `kategori_servis_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori_servis`
--

INSERT INTO `kategori_servis` (`kategori_servis_id`, `kategori_servis_nama`, `kategori_servis_status`, `kategori_servis_cabang`) VALUES
(2, 'Handphone', 1, 0),
(3, 'Komputer', 1, 0),
(4, 'Handphone', 1, 1),
(5, 'Laptop', 1, 2),
(6, 'handphone', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `keranjang_id` int(11) NOT NULL,
  `keranjang_nama` varchar(500) NOT NULL,
  `keranjang_harga_beli` varchar(250) NOT NULL,
  `keranjang_harga` varchar(250) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `barang_kode_slug` varchar(500) NOT NULL,
  `keranjang_qty` int(11) NOT NULL,
  `keranjang_barang_sn_id` int(11) NOT NULL,
  `keranjang_barang_option_sn` int(11) NOT NULL,
  `keranjang_sn` text NOT NULL,
  `keranjang_id_kasir` int(11) NOT NULL,
  `keranjang_id_cek` varchar(500) NOT NULL,
  `keranjang_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`keranjang_id`, `keranjang_nama`, `keranjang_harga_beli`, `keranjang_harga`, `barang_id`, `barang_kode_slug`, `keranjang_qty`, `keranjang_barang_sn_id`, `keranjang_barang_option_sn`, `keranjang_sn`, `keranjang_id_kasir`, `keranjang_id_cek`, `keranjang_cabang`) VALUES
(4, 'LCD Samsung', '', '200000', 71, 'lcd-01', 1, 0, 1, '0', 19, '71190', 0);

-- --------------------------------------------------------

--
-- Table structure for table `keranjang_pembelian`
--

CREATE TABLE `keranjang_pembelian` (
  `keranjang_id` int(11) NOT NULL,
  `keranjang_nama` varchar(500) NOT NULL,
  `keranjang_harga` varchar(250) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `keranjang_qty` int(11) NOT NULL,
  `keranjang_id_kasir` int(11) NOT NULL,
  `keranjang_id_cek` varchar(500) NOT NULL,
  `keranjang_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `keranjang_pembelian`
--

INSERT INTO `keranjang_pembelian` (`keranjang_id`, `keranjang_nama`, `keranjang_harga`, `barang_id`, `keranjang_qty`, `keranjang_id_kasir`, `keranjang_id_cek`, `keranjang_cabang`) VALUES
(2, 'Monitor Acer', '300000', 69, 1, 19, '69190', 0);

-- --------------------------------------------------------

--
-- Table structure for table `keranjang_transfer`
--

CREATE TABLE `keranjang_transfer` (
  `keranjang_transfer_id` int(11) NOT NULL,
  `keranjang_transfer_nama` text NOT NULL,
  `barang_id` int(11) NOT NULL,
  `barang_kode_slug` text NOT NULL,
  `keranjang_transfer_qty` int(11) NOT NULL,
  `keranjang_barang_sn_id` int(11) NOT NULL,
  `keranjang_barang_option_sn` int(11) NOT NULL,
  `keranjang_sn` text NOT NULL,
  `keranjang_transfer_id_kasir` int(11) NOT NULL,
  `keranjang_id_cek` varchar(500) NOT NULL,
  `keranjang_pengirim_cabang` int(11) NOT NULL,
  `keranjang_penerima_cabang` int(11) NOT NULL,
  `keranjang_transfer_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laba_bersih`
--

CREATE TABLE `laba_bersih` (
  `lb_id` int(11) NOT NULL,
  `lb_pendapatan_lain` int(11) NOT NULL,
  `lb_pengeluaran_gaji` int(11) NOT NULL,
  `lb_pengeluaran_listrik` int(11) NOT NULL,
  `lb_pengeluaran_tlpn_internet` int(11) NOT NULL,
  `lb_pengeluaran_perlengkapan_toko` int(11) NOT NULL,
  `lb_pengeluaran_biaya_penyusutan` int(11) NOT NULL,
  `lb_pengeluaran_bensin` int(11) NOT NULL,
  `lb_pengeluaran_tak_terduga` int(11) NOT NULL,
  `lb_pengeluaran_lain` int(11) NOT NULL,
  `lb_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `laba_bersih`
--

INSERT INTO `laba_bersih` (`lb_id`, `lb_pendapatan_lain`, `lb_pengeluaran_gaji`, `lb_pengeluaran_listrik`, `lb_pengeluaran_tlpn_internet`, `lb_pengeluaran_perlengkapan_toko`, `lb_pengeluaran_biaya_penyusutan`, `lb_pengeluaran_bensin`, `lb_pengeluaran_tak_terduga`, `lb_pengeluaran_lain`, `lb_cabang`) VALUES
(1, 500000, 400000, 150000, 0, 0, 0, 0, 0, 0, 0),
(6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(7, 0, 0, 100000, 50000, 0, 0, 10000, 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `pembelian_id` int(11) NOT NULL,
  `pembelian_barang_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `barang_qty` int(11) NOT NULL,
  `keranjang_id_kasir` int(11) NOT NULL,
  `pembelian_invoice` text NOT NULL,
  `pembelian_invoice_parent` text NOT NULL,
  `pembelian_date` date NOT NULL,
  `barang_qty_lama` varchar(500) NOT NULL,
  `barang_qty_lama_parent` varchar(500) NOT NULL,
  `barang_harga_beli` int(11) NOT NULL,
  `pembelian_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`pembelian_id`, `pembelian_barang_id`, `barang_id`, `barang_qty`, `keranjang_id_kasir`, `pembelian_invoice`, `pembelian_invoice_parent`, `pembelian_date`, `barang_qty_lama`, `barang_qty_lama_parent`, `barang_harga_beli`, `pembelian_cabang`) VALUES
(13, 71, 71, 1, 3, '40', '20231101130', '2023-11-01', '1', '1', 1000, 0),
(14, 72, 72, 4, 3, '40', '20231101130', '2023-11-01', '4', '4', 10000, 0);

--
-- Triggers `pembelian`
--
DELIMITER $$
CREATE TRIGGER `barang_pembelian` AFTER INSERT ON `pembelian` FOR EACH ROW BEGIN 
	UPDATE barang SET barang_stock = barang_stock+new.barang_qty
    WHERE barang_id = NEW.barang_id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tidak_jado` AFTER DELETE ON `pembelian` FOR EACH ROW BEGIN
 UPDATE barang
 SET barang_stock = barang_stock - OLD.barang_qty
 WHERE
 barang_id = OLD.barang_id;
 END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `penjualan_id` int(11) NOT NULL,
  `penjualan_barang_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `barang_qty` int(11) NOT NULL,
  `keranjang_harga_beli` varchar(500) NOT NULL,
  `keranjang_harga` varchar(500) NOT NULL,
  `keranjang_id_kasir` int(11) NOT NULL,
  `penjualan_invoice` text NOT NULL,
  `penjualan_date` date NOT NULL,
  `barang_qty_lama` varchar(500) NOT NULL,
  `barang_qty_lama_parent` varchar(500) NOT NULL,
  `barang_option_sn` int(11) NOT NULL,
  `barang_sn_id` int(11) NOT NULL,
  `barang_sn_desc` text NOT NULL,
  `penjualan_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`penjualan_id`, `penjualan_barang_id`, `barang_id`, `barang_qty`, `keranjang_harga_beli`, `keranjang_harga`, `keranjang_id_kasir`, `penjualan_invoice`, `penjualan_date`, `barang_qty_lama`, `barang_qty_lama_parent`, `barang_option_sn`, `barang_sn_id`, `barang_sn_desc`, `penjualan_cabang`) VALUES
(2, 69, 69, 1, '', '12000000', 3, '202309201', '2023-09-20', '1', '1', 0, 0, '0', 0),
(3, 72, 72, 1, '200000', '450000', 3, '202309202', '2023-09-20', '1', '1', 0, 0, '0', 0),
(4, 71, 71, 0, '', '200000', 19, '202310113', '2023-10-11', '1', '1', 1, 19, '45756856869679', 0),
(5, 71, 71, 1, '1000', '200000', 3, '202311024', '2023-11-02', '1', '1', 1, 17, '745754758', 0);

--
-- Triggers `penjualan`
--
DELIMITER $$
CREATE TRIGGER `batal_beli` AFTER DELETE ON `penjualan` FOR EACH ROW BEGIN
 UPDATE barang
 SET barang_stock = barang_stock + OLD.barang_qty,
 barang_terjual = barang_terjual - OLD.barang_qty
 WHERE
 barang_id = OLD.barang_id;
 END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `penjualan_barang` AFTER INSERT ON `penjualan` FOR EACH ROW BEGIN
	UPDATE barang SET barang_stock=barang_stock-NEW.barang_qty
    WHERE barang_id = NEW.barang_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `piutang`
--

CREATE TABLE `piutang` (
  `piutang_id` int(11) NOT NULL,
  `piutang_invoice` text NOT NULL,
  `piutang_date` varchar(500) NOT NULL,
  `piutang_date_time` varchar(500) NOT NULL,
  `piutang_kasir` int(11) NOT NULL,
  `piutang_nominal` varchar(500) NOT NULL,
  `piutang_tipe_pembayaran` int(11) NOT NULL,
  `piutang_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `piutang_kembalian`
--

CREATE TABLE `piutang_kembalian` (
  `pl_id` int(11) NOT NULL,
  `pl_invoice` text NOT NULL,
  `pl_date` varchar(500) NOT NULL,
  `pl_date_time` varchar(500) NOT NULL,
  `pl_nominal` varchar(250) NOT NULL,
  `pl_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `piutang_kembalian`
--

INSERT INTO `piutang_kembalian` (`pl_id`, `pl_invoice`, `pl_date`, `pl_date_time`, `pl_nominal`, `pl_cabang`) VALUES
(1, '202111102', '2021-11-10', '10 November 2021 6:43:57 pm', '1000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `retur`
--

CREATE TABLE `retur` (
  `retur_id` int(11) NOT NULL,
  `retur_barang_id` varchar(500) NOT NULL,
  `retur_invoice` varchar(500) NOT NULL,
  `retur_admin_id` varchar(500) NOT NULL,
  `retur_date` date NOT NULL,
  `retur_alasan` text NOT NULL,
  `barang_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `retur`
--

INSERT INTO `retur` (`retur_id`, `retur_barang_id`, `retur_invoice`, `retur_admin_id`, `retur_date`, `retur_alasan`, `barang_stock`) VALUES
(12, '5', '202004209', '3', '2020-04-20', ' ', 1),
(13, '5', '202004209', '3', '2020-04-20', ' ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

CREATE TABLE `satuan` (
  `satuan_id` int(11) NOT NULL,
  `satuan_nama` varchar(500) NOT NULL,
  `satuan_status` varchar(250) NOT NULL,
  `satuan_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `satuan`
--

INSERT INTO `satuan` (`satuan_id`, `satuan_nama`, `satuan_status`, `satuan_cabang`) VALUES
(1, 'KG', '1', 0),
(2, 'PCS', '1', 0),
(3, 'Unit', '1', 0),
(4, 'pcs', '1', 2);

-- --------------------------------------------------------

--
-- Table structure for table `servis`
--

CREATE TABLE `servis` (
  `servis_id` int(11) NOT NULL,
  `servis_kode` varchar(500) NOT NULL,
  `servis_kode_slug` varchar(500) NOT NULL,
  `servis_nama` varchar(500) NOT NULL,
  `servis_desc` text NOT NULL,
  `servis_biaya_jasa_teknisi` int(11) NOT NULL,
  `servis_biaya_profit` int(11) NOT NULL,
  `servis_biaya` varchar(500) NOT NULL,
  `servis_kategori` int(11) NOT NULL,
  `servis_status` int(11) NOT NULL,
  `servis_date` varchar(250) NOT NULL,
  `servis_date_time` varchar(250) NOT NULL,
  `servis_id_user_create` int(11) NOT NULL,
  `servis_id_user_edit` int(11) NOT NULL,
  `servis_date_edit` varchar(250) NOT NULL,
  `servis_date_time_edit` varchar(250) NOT NULL,
  `servis_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `servis`
--

INSERT INTO `servis` (`servis_id`, `servis_kode`, `servis_kode_slug`, `servis_nama`, `servis_desc`, `servis_biaya_jasa_teknisi`, `servis_biaya_profit`, `servis_biaya`, `servis_kategori`, `servis_status`, `servis_date`, `servis_date_time`, `servis_id_user_create`, `servis_id_user_edit`, `servis_date_edit`, `servis_date_time_edit`, `servis_cabang`) VALUES
(2, 'servis-pc-lcd', 'servis-pc-lcd', 'Servis Lcd', 'Servis Lcd', 20000, 30000, '50000', 3, 1, '2021-11-24', '24 November 2021 9:15:57 am', 0, 0, '', '', 0),
(5, 'servis-hp-touch', 'servis-hp-touch', 'Servis Touch Screen', 'Servis Touch', 50000, 60000, '110000', 2, 1, '2022-01-17', '17 January 2022 12:42:54 pm', 3, 3, '2022-02-08', '08 February 2022 11:13:45 pm', 0),
(6, 'servis-flash', 'servis-flash', 'Flash Hp', 'Flash Hp', 60000, 40000, '100000', 2, 1, '2022-02-08', '08 February 2022 11:14:34 pm', 3, 0, '', '', 0),
(7, '6346457457', '6346457457', 'Servis HP Flash', 'Servis HP Flash', 200000, 100000, '300000', 4, 1, '2022-03-01', '01 March 2022 5:35:59 pm', 3, 0, '', '', 1),
(8, 'SVCLP', 'SVCLP', 'Laptop', 'Service Laptop', 100000, 500, '100500', 5, 1, '2023-10-16', '16 October 2023 10:57:14 am', 3, 0, '', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_nama` varchar(250) NOT NULL,
  `supplier_wa` varchar(250) NOT NULL,
  `supplier_alamat` text NOT NULL,
  `supplier_company` varchar(250) NOT NULL,
  `supplier_status` int(11) NOT NULL,
  `supplier_create` varchar(250) NOT NULL,
  `supplier_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `supplier_nama`, `supplier_wa`, `supplier_alamat`, `supplier_company`, `supplier_status`, `supplier_create`, `supplier_cabang`) VALUES
(2, 'Doni Afandi', '085780978675', 'Surabaya', 'PT Pemasok Produk', 1, '14 November 2020 7:31:51 pm', 0),
(4, 'Afandi', '085787654321', 'Surabaya', 'PT ABC', 1, '15 November 2020 7:46:06 pm', 0);

-- --------------------------------------------------------

--
-- Table structure for table `terlaris`
--

CREATE TABLE `terlaris` (
  `terlaris_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `barang_terjual` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `terlaris`
--

INSERT INTO `terlaris` (`terlaris_id`, `barang_id`, `barang_terjual`) VALUES
(1, 71, 1),
(2, 66, 1),
(3, 69, 1),
(4, 69, 1),
(5, 72, 1),
(6, 71, 1),
(7, 71, 1);

--
-- Triggers `terlaris`
--
DELIMITER $$
CREATE TRIGGER `barang_terlaris` AFTER INSERT ON `terlaris` FOR EACH ROW BEGIN 
	UPDATE barang SET barang_terjual = barang_terjual+new.barang_terjual
    WHERE barang_id = NEW.barang_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko` (
  `toko_id` int(11) NOT NULL,
  `toko_nama` varchar(500) NOT NULL,
  `toko_kota` varchar(250) NOT NULL,
  `toko_alamat` text NOT NULL,
  `toko_tlpn` varchar(250) NOT NULL,
  `toko_wa` varchar(250) NOT NULL,
  `toko_email` varchar(500) NOT NULL,
  `toko_tipe_print_toko` int(11) NOT NULL,
  `toko_lebar_print_toko` int(11) NOT NULL,
  `toko_tipe_print_servis` int(11) NOT NULL,
  `toko_lebar_print_servis` int(11) NOT NULL,
  `toko_link` varchar(250) NOT NULL,
  `toko_teks_nota_servis_masuk` text NOT NULL,
  `toko_teks_nota_servis_ambil` text NOT NULL,
  `toko_status` int(11) NOT NULL,
  `toko_ongkir` int(11) NOT NULL,
  `toko_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`toko_id`, `toko_nama`, `toko_kota`, `toko_alamat`, `toko_tlpn`, `toko_wa`, `toko_email`, `toko_tipe_print_toko`, `toko_lebar_print_toko`, `toko_tipe_print_servis`, `toko_lebar_print_servis`, `toko_link`, `toko_teks_nota_servis_masuk`, `toko_teks_nota_servis_ambil`, `toko_status`, `toko_ongkir`, `toko_cabang`) VALUES
(1, 'EYD COMPUTER', 'KELAPA TUJUH', 'Kelapa Tujuh', '081279721081', '081279721081', 'id.eydcom@gmail.com', 0, 8, 0, 8, 'https://eydcom.com/demo/pos-kasir/servis', 'Garansi Servis maksimal 1 Minggu 081279721081', 'Barang servis sudah diambil Barang servis sudah diambil Barang servis sudah diambil Barang servis sudah diambil 081279721081', 1, 0, 0),
(8, 'EYD COMPUTER', 'KEBON EMPAT', 'Kebon Empat', '081279721081', '081279721081', 'suport.eydcom@gmail.com', 0, 8, 0, 8, 'https://eydcom.com/demo/pos-kasir/servis', 'Garansi Servis maksimal 1 Minggu 081279721081', 'Barang servis sudah diambil Barang servis sudah diambil Barang servis sudah diambil Barang servis sudah diambil 081279721081', 1, 0, 1),
(9, 'Semarangan', 'Semarang', 'Jl.Merdeka 1945', '081279721081', '081279721081', 'semarang@gmail.com', 1, 6, 1, 10, 'https://eydcom.com/demo/pos-kasir/servis', 'Setiap pengambilan harus bawa tanda terima ini 081279721081', 'Klaim Garansi harus bawa nota 081279721081', 1, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `transfer_id` int(11) NOT NULL,
  `transfer_ref` text NOT NULL,
  `transfer_count` int(11) NOT NULL,
  `transfer_date` varchar(250) NOT NULL,
  `transfer_date_time` varchar(250) NOT NULL,
  `transfer_terima_date` varchar(250) NOT NULL,
  `transfer_terima_date_time` varchar(250) NOT NULL,
  `transfer_note` text NOT NULL,
  `transfer_pengirim_cabang` int(11) NOT NULL,
  `transfer_penerima_cabang` int(11) NOT NULL,
  `transfer_id_tipe_keluar` int(11) NOT NULL,
  `transfer_id_tipe_masuk` int(11) NOT NULL,
  `transfer_status` int(11) NOT NULL,
  `transfer_user` int(11) NOT NULL,
  `transfer_user_penerima` int(11) NOT NULL,
  `transfer_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transfer`
--

INSERT INTO `transfer` (`transfer_id`, `transfer_ref`, `transfer_count`, `transfer_date`, `transfer_date_time`, `transfer_terima_date`, `transfer_terima_date_time`, `transfer_note`, `transfer_pengirim_cabang`, `transfer_penerima_cabang`, `transfer_id_tipe_keluar`, `transfer_id_tipe_masuk`, `transfer_status`, `transfer_user`, `transfer_user_penerima`, `transfer_cabang`) VALUES
(1, '2021111001', 1, '2021-11-10', '10 November 2021 10:35:35 pm', '2021-11-10', '10 November 2021 10:38:43 pm', 'Transfer Dari Gudang Pusat', 0, 1, 0, 1, 2, 3, 16, 0);

-- --------------------------------------------------------

--
-- Table structure for table `transfer_produk_keluar`
--

CREATE TABLE `transfer_produk_keluar` (
  `tpk_id` int(11) NOT NULL,
  `tpk_transfer_barang_id` int(11) NOT NULL,
  `tpk_barang_id` int(11) NOT NULL,
  `tpk_kode_slug` varchar(500) NOT NULL,
  `tpk_qty` int(11) NOT NULL,
  `tpk_ref` text NOT NULL,
  `tpk_date` varchar(11) NOT NULL,
  `tpk_date_time` varchar(500) NOT NULL,
  `tpk_barang_option_sn` int(11) NOT NULL,
  `tpk_barang_sn_id` int(11) NOT NULL,
  `tpk_barang_sn_desc` varchar(500) NOT NULL,
  `tpk_user` int(11) NOT NULL,
  `tpk_pengirim_cabang` int(11) NOT NULL,
  `tpk_penerima_cabang` int(11) NOT NULL,
  `tpk_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transfer_produk_keluar`
--

INSERT INTO `transfer_produk_keluar` (`tpk_id`, `tpk_transfer_barang_id`, `tpk_barang_id`, `tpk_kode_slug`, `tpk_qty`, `tpk_ref`, `tpk_date`, `tpk_date_time`, `tpk_barang_option_sn`, `tpk_barang_sn_id`, `tpk_barang_sn_desc`, `tpk_user`, `tpk_pengirim_cabang`, `tpk_penerima_cabang`, `tpk_cabang`) VALUES
(1, 54, 54, 'BRG-001', 2, '2021111001', '2021-11-10', '10 November 2021 10:35:15 pm', 0, 0, '0', 3, 0, 1, 0),
(2, 53, 53, '12345678', 2, '2021111001', '2021-11-10', '10 November 2021 10:35:15 pm', 0, 0, '0', 3, 0, 1, 0);

--
-- Triggers `transfer_produk_keluar`
--
DELIMITER $$
CREATE TRIGGER `batal_transfer` AFTER DELETE ON `transfer_produk_keluar` FOR EACH ROW BEGIN
 UPDATE barang
 SET barang_stock = barang_stock + OLD.tpk_qty
 WHERE
 barang_id = OLD.tpk_barang_id;
 END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `pengeluaran_barang` AFTER INSERT ON `transfer_produk_keluar` FOR EACH ROW BEGIN
	UPDATE barang SET barang_stock=barang_stock-NEW.tpk_qty
    WHERE barang_id = NEW.tpk_barang_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_produk_masuk`
--

CREATE TABLE `transfer_produk_masuk` (
  `tpm_id` int(11) NOT NULL,
  `tpm_kode_slug` text NOT NULL,
  `tpm_qty` int(11) NOT NULL,
  `tpm_ref` text NOT NULL,
  `tpm_date` varchar(250) NOT NULL,
  `tpm_date_time` varchar(250) NOT NULL,
  `tpm_barang_option_sn` int(11) NOT NULL,
  `tpm_barang_sn_id` int(11) NOT NULL,
  `tpm_barang_sn_desc` varchar(500) NOT NULL,
  `tpm_user` int(11) NOT NULL,
  `tpm_pengirim_cabang` int(11) NOT NULL,
  `tpm_penerima_cabang` int(11) NOT NULL,
  `tpm_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Triggers `transfer_produk_masuk`
--
DELIMITER $$
CREATE TRIGGER `tambah_stock_cabang` AFTER INSERT ON `transfer_produk_masuk` FOR EACH ROW BEGIN
	UPDATE barang SET barang_stock=barang_stock+NEW.tpm_qty
    WHERE barang_kode_slug = NEW.tpm_kode_slug && barang_cabang = NEW.tpm_penerima_cabang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_select_cabang`
--

CREATE TABLE `transfer_select_cabang` (
  `tsc_id` int(11) NOT NULL,
  `tsc_cabang_pusat` int(11) NOT NULL,
  `tsc_cabang_penerima` int(11) NOT NULL,
  `tsc_user_id` int(11) NOT NULL,
  `tsc_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transfer_select_cabang`
--

INSERT INTO `transfer_select_cabang` (`tsc_id`, `tsc_cabang_pusat`, `tsc_cabang_penerima`, `tsc_user_id`, `tsc_cabang`) VALUES
(1, 0, 1, 19, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_nama` varchar(500) NOT NULL,
  `user_no_hp` varchar(250) NOT NULL,
  `user_alamat` text NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_password` varchar(500) NOT NULL,
  `user_create` varchar(250) NOT NULL,
  `user_level` varchar(250) NOT NULL,
  `user_gaji_pokok` int(11) NOT NULL,
  `user_bonus` int(11) NOT NULL,
  `user_status` varchar(250) NOT NULL,
  `user_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_nama`, `user_no_hp`, `user_alamat`, `user_email`, `user_password`, `user_create`, `user_level`, `user_gaji_pokok`, `user_bonus`, `user_status`, `user_cabang`) VALUES
(3, 'eydcom.com', '081279721081', 'Kelapa Tujuh', 'id.eydcom@gmail.com', '10e0f2a34d3c76f1a2a4645d380299cb', '30 March 2020 9:17:00 pm', 'super admin', 0, 0, '1', 0),
(19, 'ADMIN', '081279721081', 'Kelapa Tujuh', 'admin.eydcom@gmail.com', '10e0f2a34d3c76f1a2a4645d380299cb', '20 September 2023 9:59:53 am', 'admin', 0, 0, '1', 0),
(20, 'KASIR', '081279721081', 'Kelapa Tujuh', 'kasir.eydcom@gmail.com', '10e0f2a34d3c76f1a2a4645d380299cb', '20 September 2023 10:00:22 am', 'kasir', 0, 0, '1', 0),
(21, 'TEKNISI', '081279721081', 'Kelapa Tujuh', 'teknisi.eydcom@gmail.com', '10e0f2a34d3c76f1a2a4645d380299cb', '20 September 2023 10:00:47 am', 'teknisi', 0, 0, '1', 0),
(22, 'KURIR', '081279721081', 'Kelapa Tujuh', 'Kurir.eydcom@gmail.com', '10e0f2a34d3c76f1a2a4645d380299cb', '20 September 2023 10:01:14 am', 'kurir', 0, 0, '1', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`barang_id`);

--
-- Indexes for table `barang_sn`
--
ALTER TABLE `barang_sn`
  ADD PRIMARY KEY (`barang_sn_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `data_servis`
--
ALTER TABLE `data_servis`
  ADD PRIMARY KEY (`ds_id`);

--
-- Indexes for table `data_servis_sparepart`
--
ALTER TABLE `data_servis_sparepart`
  ADD PRIMARY KEY (`dss_id`);

--
-- Indexes for table `data_servis_teknisi`
--
ALTER TABLE `data_servis_teknisi`
  ADD PRIMARY KEY (`dst_id`);

--
-- Indexes for table `ekspedisi`
--
ALTER TABLE `ekspedisi`
  ADD PRIMARY KEY (`ekspedisi_id`);

--
-- Indexes for table `history_servis_tekinis`
--
ALTER TABLE `history_servis_tekinis`
  ADD PRIMARY KEY (`hst_id`);

--
-- Indexes for table `hutang`
--
ALTER TABLE `hutang`
  ADD PRIMARY KEY (`hutang_id`);

--
-- Indexes for table `hutang_kembalian`
--
ALTER TABLE `hutang_kembalian`
  ADD PRIMARY KEY (`hl_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `invoice_pembelian`
--
ALTER TABLE `invoice_pembelian`
  ADD PRIMARY KEY (`invoice_pembelian_id`);

--
-- Indexes for table `invoice_pembelian_number`
--
ALTER TABLE `invoice_pembelian_number`
  ADD PRIMARY KEY (`invoice_pembelian_number_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `kategori_servis`
--
ALTER TABLE `kategori_servis`
  ADD PRIMARY KEY (`kategori_servis_id`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`keranjang_id`);

--
-- Indexes for table `keranjang_pembelian`
--
ALTER TABLE `keranjang_pembelian`
  ADD PRIMARY KEY (`keranjang_id`);

--
-- Indexes for table `keranjang_transfer`
--
ALTER TABLE `keranjang_transfer`
  ADD PRIMARY KEY (`keranjang_transfer_id`);

--
-- Indexes for table `laba_bersih`
--
ALTER TABLE `laba_bersih`
  ADD PRIMARY KEY (`lb_id`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`pembelian_id`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`penjualan_id`);

--
-- Indexes for table `piutang`
--
ALTER TABLE `piutang`
  ADD PRIMARY KEY (`piutang_id`);

--
-- Indexes for table `piutang_kembalian`
--
ALTER TABLE `piutang_kembalian`
  ADD PRIMARY KEY (`pl_id`);

--
-- Indexes for table `retur`
--
ALTER TABLE `retur`
  ADD PRIMARY KEY (`retur_id`);

--
-- Indexes for table `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`satuan_id`);

--
-- Indexes for table `servis`
--
ALTER TABLE `servis`
  ADD PRIMARY KEY (`servis_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `terlaris`
--
ALTER TABLE `terlaris`
  ADD PRIMARY KEY (`terlaris_id`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`toko_id`);

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`transfer_id`);

--
-- Indexes for table `transfer_produk_keluar`
--
ALTER TABLE `transfer_produk_keluar`
  ADD PRIMARY KEY (`tpk_id`);

--
-- Indexes for table `transfer_produk_masuk`
--
ALTER TABLE `transfer_produk_masuk`
  ADD PRIMARY KEY (`tpm_id`);

--
-- Indexes for table `transfer_select_cabang`
--
ALTER TABLE `transfer_select_cabang`
  ADD PRIMARY KEY (`tsc_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `barang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `barang_sn`
--
ALTER TABLE `barang_sn`
  MODIFY `barang_sn_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `data_servis`
--
ALTER TABLE `data_servis`
  MODIFY `ds_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `data_servis_sparepart`
--
ALTER TABLE `data_servis_sparepart`
  MODIFY `dss_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `data_servis_teknisi`
--
ALTER TABLE `data_servis_teknisi`
  MODIFY `dst_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `ekspedisi`
--
ALTER TABLE `ekspedisi`
  MODIFY `ekspedisi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `history_servis_tekinis`
--
ALTER TABLE `history_servis_tekinis`
  MODIFY `hst_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `hutang`
--
ALTER TABLE `hutang`
  MODIFY `hutang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hutang_kembalian`
--
ALTER TABLE `hutang_kembalian`
  MODIFY `hl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `invoice_pembelian`
--
ALTER TABLE `invoice_pembelian`
  MODIFY `invoice_pembelian_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `invoice_pembelian_number`
--
ALTER TABLE `invoice_pembelian_number`
  MODIFY `invoice_pembelian_number_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `kategori_servis`
--
ALTER TABLE `kategori_servis`
  MODIFY `kategori_servis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `keranjang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `keranjang_pembelian`
--
ALTER TABLE `keranjang_pembelian`
  MODIFY `keranjang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `keranjang_transfer`
--
ALTER TABLE `keranjang_transfer`
  MODIFY `keranjang_transfer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laba_bersih`
--
ALTER TABLE `laba_bersih`
  MODIFY `lb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `pembelian_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `penjualan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `piutang`
--
ALTER TABLE `piutang`
  MODIFY `piutang_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `piutang_kembalian`
--
ALTER TABLE `piutang_kembalian`
  MODIFY `pl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `retur`
--
ALTER TABLE `retur`
  MODIFY `retur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `satuan`
--
ALTER TABLE `satuan`
  MODIFY `satuan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `servis`
--
ALTER TABLE `servis`
  MODIFY `servis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `terlaris`
--
ALTER TABLE `terlaris`
  MODIFY `terlaris_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `toko`
--
ALTER TABLE `toko`
  MODIFY `toko_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transfer`
--
ALTER TABLE `transfer`
  MODIFY `transfer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transfer_produk_keluar`
--
ALTER TABLE `transfer_produk_keluar`
  MODIFY `tpk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transfer_produk_masuk`
--
ALTER TABLE `transfer_produk_masuk`
  MODIFY `tpm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transfer_select_cabang`
--
ALTER TABLE `transfer_select_cabang`
  MODIFY `tsc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
