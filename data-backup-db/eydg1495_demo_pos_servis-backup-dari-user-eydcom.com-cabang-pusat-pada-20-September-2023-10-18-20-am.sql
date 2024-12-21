

CREATE TABLE `barang` (
  `barang_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `barang_cabang` int(11) NOT NULL,
  PRIMARY KEY (`barang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

INSERT INTO barang VALUES("53","12345678","12345678","7","Kabel Sata","4900","12000","-2","09 November 2021 7:34:19 pm","8","8","2","2","Kabel Sata","0","0","0","0");
INSERT INTO barang VALUES("54","BRG 001","BRG-001","6","Monitor Samsung","5667","150000","-2","09 November 2021 7:38:07 pm","6","6","3","3","Monitor Samsung","0","0","0","0");
INSERT INTO barang VALUES("57","122324242","122324242","3","Moushe Biasa","","25000","10","13 November 2021 6:59:25 pm","7","7","3","3","Moushe Biasa","0","0","0","0");
INSERT INTO barang VALUES("62","12345678434","12345678434","5","Charger HP","5000","15000","0","14 November 2021 8:07:11 pm","8","8","2","2","Charger HP","0","0","0","0");
INSERT INTO barang VALUES("63","BRG 004","BRG-004","6","Kabel Sata Biasa","","12000","5","14 November 2021 8:52:37 pm","8","8","2","2","Kabel Sata Biasa","0","0","0","0");
INSERT INTO barang VALUES("64","BRG 005","BRG-005","7","Moushe Samsung","","15000","10","14 November 2021 8:53:18 pm","7","7","2","2","Moushe Samsung","0","0","0","0");
INSERT INTO barang VALUES("66","BRG 007","BRG-007","9","Monitor LG 2","","1200000","10","14 November 2021 8:54:29 pm","6","6","3","3","Monitor LG 2","0","3","0","0");
INSERT INTO barang VALUES("69","BRG 0010","BRG-0010","12","Monitor Acer","","12000000","17","14 November 2021 8:56:35 pm","6","6","3","3","Monitor Acer","0","1","1","0");
INSERT INTO barang VALUES("70","BRG 008","BRG-008","13","FWEF","","300000","7","15 January 2022 11:36:06 am","9","9","3","3","FEWF","1","1","0","0");
INSERT INTO barang VALUES("71","lcd-01","lcd-01","14","LCD Samsung","","200000","10","15 January 2022 11:42:05 am","12","12","3","3","LCD Samsung Kualitas Terbaik","1","1","0","0");
INSERT INTO barang VALUES("72","6465475678568","6465475678568","15","TS Hp Samsung","200000","450000","1","18 January 2022 3:13:03 pm","9","9","3","3","TS Hp Samsung","0","1","0","0");



CREATE TABLE `barang_sn` (
  `barang_sn_id` int(11) NOT NULL AUTO_INCREMENT,
  `barang_sn_desc` text NOT NULL,
  `barang_kode_slug` varchar(500) NOT NULL,
  `barang_sn_status` int(11) NOT NULL,
  `barang_sn_cabang` int(11) NOT NULL,
  PRIMARY KEY (`barang_sn_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

INSERT INTO barang_sn VALUES("13","46346346457","lcd-01","3","0");
INSERT INTO barang_sn VALUES("14","643645745754","lcd-01","3","0");
INSERT INTO barang_sn VALUES("15","464645754754","lcd-01","3","0");
INSERT INTO barang_sn VALUES("16","6436457457","lcd-01","3","0");
INSERT INTO barang_sn VALUES("17","745754758","lcd-01","1","0");
INSERT INTO barang_sn VALUES("18","745754856","lcd-01","1","0");
INSERT INTO barang_sn VALUES("19","45756856869679","lcd-01","1","0");
INSERT INTO barang_sn VALUES("20","457547568","lcd-01","1","0");
INSERT INTO barang_sn VALUES("21","575485686598659","lcd-01","1","0");
INSERT INTO barang_sn VALUES("22","8658658454","lcd-01","1","0");



CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_nama` varchar(500) NOT NULL,
  `customer_tlpn` varchar(250) NOT NULL,
  `customer_email` varchar(250) NOT NULL,
  `customer_alamat` text NOT NULL,
  `customer_date` varchar(250) NOT NULL,
  `customer_create` varchar(250) NOT NULL,
  `customer_status` varchar(250) NOT NULL,
  `customer_count_invoice` int(11) NOT NULL,
  `customer_count_servis` int(11) NOT NULL,
  `customer_cabang` int(11) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

INSERT INTO customer VALUES("0","Customer Umum","","","","","","1","1","0","0");
INSERT INTO customer VALUES("5","Asrul","085678900987","","Jl. Kedung Cowek No.350, Tanah Kali Kedinding, Kec. Kenjeran, Kota SBY, Jawa Timur 60129","","11 April 2020 1:35:37 pm","1","0","0","0");
INSERT INTO customer VALUES("7","Raka Abdi","086782121212","abdi@gmail.com","Jl. Kedung Cowek No.350, Tanah Kali Kedinding, Kenjeran, Kota SBY, Jawa Timur 60129","","12 April 2020 1:00:07 pm","1","0","0","0");
INSERT INTO customer VALUES("10","Pak Budi","085780956487","","Jl. KENJERAN No. 440 Desa Gading Kec. TambaksariKota Surabaya","","19 August 2021 6:05:44 pm","1","0","0","0");
INSERT INTO customer VALUES("12","Doni Afandi","082299078642","senimankoding@gmail.com","Surabaya Jawa Timur","2022-01-15","15 January 2022 8:46:24 pm","1","0","0","0");
INSERT INTO customer VALUES("20","Raka Putra","095764893421","","Surabaya","2022-01-17","17 January 2022 2:32:11 pm","1","0","1","0");
INSERT INTO customer VALUES("21","Rehan","082299078643","","rewr","2022-01-22","22 January 2022 11:30:46 am","1","0","1","0");
INSERT INTO customer VALUES("22","Customer Umum","","","","","","1","0","0","0");
INSERT INTO customer VALUES("23","Doni Afandi","085780956485","","Surabaya","2022-03-01","01 March 2022 5:34:45 pm","1","0","1","1");
INSERT INTO customer VALUES("24","tes","082299078642","","tes","2022-03-01","01 March 2022 5:51:07 pm","1","0","0","1");



CREATE TABLE `data_servis` (
  `ds_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `ds_cabang` int(11) NOT NULL,
  PRIMARY KEY (`ds_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

INSERT INTO data_servis VALUES("97","1","1","23","4","Samsung","A300","24242553","24235235","Hitam","16","Btre","Flash","Nyala","","","0","3","2022-03-01","01 March 2022 5:36:28 pm","","","0","0","0","0","0","0","0","0","-","-","1","","","","","0","","1");
INSERT INTO data_servis VALUES("98","1","1","21","3","acer","4343","","","hitam","","kabel power","No Display","rusak","","","0","3","2023-09-20","20 September 2023 10:14:45 am","hidup normal","-","100000","0","0","100000","100000","3","0","3","2023-09-20","20 September 2023 10:16:53 am","6","2023-09-19","19 September 2023","","","0","","0");
INSERT INTO data_servis VALUES("99","2","2","20","2","oppo","a37","","","coklat","","charger","lcd","lcd pecah","","","0","3","2023-09-20","20 September 2023 10:15:48 am","","","0","0","0","0","0","0","0","0","-","-","1","","","","","0","","0");



CREATE TABLE `data_servis_sparepart` (
  `dss_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `dss_cabang` int(11) NOT NULL,
  PRIMARY KEY (`dss_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;




CREATE TABLE `data_servis_teknisi` (
  `dst_id` int(11) NOT NULL AUTO_INCREMENT,
  `dst_id_nota` int(11) NOT NULL,
  `dst_teknisi_id` int(11) NOT NULL,
  `dst_id_servis` int(11) NOT NULL,
  `dst_kategori_servis` int(11) NOT NULL,
  `dst_nama_servis` varchar(500) NOT NULL,
  `ds_biaya_jasa_teknisi` int(11) NOT NULL,
  `ds_biaya_profit` int(11) NOT NULL,
  `dst_servis_biaya` int(11) NOT NULL,
  `dst_pengambilan_date` varchar(250) NOT NULL,
  `dst_cabang` int(11) NOT NULL,
  PRIMARY KEY (`dst_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

INSERT INTO data_servis_teknisi VALUES("26","1","3","6","2","Flash Hp","60000","40000","100000","2023-09-20","0");



CREATE TABLE `ekspedisi` (
  `ekspedisi_id` int(11) NOT NULL AUTO_INCREMENT,
  `ekspedisi_nama` varchar(500) NOT NULL,
  `ekspedisi_status` varchar(250) NOT NULL,
  `ekspedisi_cabang` int(11) NOT NULL,
  PRIMARY KEY (`ekspedisi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO ekspedisi VALUES("2","JNE","1","0");
INSERT INTO ekspedisi VALUES("3","TIKI","1","0");
INSERT INTO ekspedisi VALUES("4","POS","1","0");
INSERT INTO ekspedisi VALUES("5","JNE Cabang","1","1");



CREATE TABLE `history_servis_tekinis` (
  `hst_id` int(11) NOT NULL AUTO_INCREMENT,
  `hst_nota` varchar(500) NOT NULL,
  `hst_teknisi` int(11) NOT NULL,
  `hst_status` int(11) NOT NULL,
  `hst_date` varchar(250) NOT NULL,
  `hst_date_time` varchar(250) NOT NULL,
  `hst_cabang` int(11) NOT NULL,
  PRIMARY KEY (`hst_id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=latin1;

INSERT INTO history_servis_tekinis VALUES("137","1","3","4","2023-09-20","20 September 2023 10:16:01 am","0");
INSERT INTO history_servis_tekinis VALUES("138","1","3","5","2023-09-20","20 September 2023 10:16:29 am","0");
INSERT INTO history_servis_tekinis VALUES("139","1","3","6","2023-09-20","20 September 2023 10:16:53 am","0");



CREATE TABLE `hutang` (
  `hutang_id` int(11) NOT NULL AUTO_INCREMENT,
  `hutang_invoice` text NOT NULL,
  `hutang_invoice_parent` text NOT NULL,
  `hutang_date` varchar(500) NOT NULL,
  `hutang_date_time` varchar(500) NOT NULL,
  `hutang_kasir` int(11) NOT NULL,
  `hutang_nominal` varchar(500) NOT NULL,
  `hutang_tipe_pembayaran` int(11) NOT NULL,
  `hutang_cabang` int(11) NOT NULL,
  PRIMARY KEY (`hutang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;




CREATE TABLE `hutang_kembalian` (
  `hl_id` int(11) NOT NULL AUTO_INCREMENT,
  `hl_invoice` text NOT NULL,
  `hl_invoice_parent` text NOT NULL,
  `hl_date` varchar(500) NOT NULL,
  `hl_date_time` varchar(500) NOT NULL,
  `hl_nominal` varchar(500) NOT NULL,
  `hl_cabang` int(11) NOT NULL,
  PRIMARY KEY (`hl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO hutang_kembalian VALUES("1","643645745890","20211110430","2021-11-10","10 November 2021 6:53:09 pm","5000","0");



CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `invoice_cabang` int(11) NOT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO invoice VALUES("2","202309201","1","20 September 2023 10:17:49 am","0","0","1","0","0","12000000","0","12000000","12000000","0","3","2023-09-20"," "," ","0","12000000","0","12000000","12000000","0","","0","-","-","0","0","0","0","0");



CREATE TABLE `invoice_pembelian` (
  `invoice_pembelian_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `invoice_pembelian_cabang` int(11) NOT NULL,
  PRIMARY KEY (`invoice_pembelian_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;




CREATE TABLE `invoice_pembelian_number` (
  `invoice_pembelian_number_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_pembelian_number_input` varchar(250) NOT NULL,
  `invoice_pembelian_number_parent` text NOT NULL,
  `invoice_pembelian_number_user` varchar(250) NOT NULL,
  `invoice_pembelian_number_delete` varchar(250) NOT NULL,
  `invoice_pembelian_cabang` int(11) NOT NULL,
  PRIMARY KEY (`invoice_pembelian_number_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO invoice_pembelian_number VALUES("9","1234567876","2021071912","3","202107191230","0");
INSERT INTO invoice_pembelian_number VALUES("10","6436457457","202110233","3","20211023330","0");
INSERT INTO invoice_pembelian_number VALUES("11","6436457457","202110233","3","20211023331","1");



CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_nama` varchar(500) NOT NULL,
  `kategori_status` varchar(250) NOT NULL,
  `kategori_cabang` int(11) NOT NULL,
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO kategori VALUES("2","Laptop","1","0");
INSERT INTO kategori VALUES("4","Keyboard","1","0");
INSERT INTO kategori VALUES("6","Monitor","1","0");
INSERT INTO kategori VALUES("7","Mouse","1","0");
INSERT INTO kategori VALUES("8","Kabel","1","0");
INSERT INTO kategori VALUES("9","Hp","1","0");
INSERT INTO kategori VALUES("12","Sparepart","1","0");



CREATE TABLE `kategori_servis` (
  `kategori_servis_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_servis_nama` varchar(500) NOT NULL,
  `kategori_servis_status` int(11) NOT NULL,
  `kategori_servis_cabang` int(11) NOT NULL,
  PRIMARY KEY (`kategori_servis_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO kategori_servis VALUES("2","Handphone","1","0");
INSERT INTO kategori_servis VALUES("3","Komputer","1","0");
INSERT INTO kategori_servis VALUES("4","Handphone","1","1");



CREATE TABLE `keranjang` (
  `keranjang_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `keranjang_cabang` int(11) NOT NULL,
  PRIMARY KEY (`keranjang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;




CREATE TABLE `keranjang_pembelian` (
  `keranjang_id` int(11) NOT NULL AUTO_INCREMENT,
  `keranjang_nama` varchar(500) NOT NULL,
  `keranjang_harga` varchar(250) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `keranjang_qty` int(11) NOT NULL,
  `keranjang_id_kasir` int(11) NOT NULL,
  `keranjang_id_cek` varchar(500) NOT NULL,
  `keranjang_cabang` int(11) NOT NULL,
  PRIMARY KEY (`keranjang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `keranjang_transfer` (
  `keranjang_transfer_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `keranjang_transfer_cabang` int(11) NOT NULL,
  PRIMARY KEY (`keranjang_transfer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `laba_bersih` (
  `lb_id` int(11) NOT NULL AUTO_INCREMENT,
  `lb_pendapatan_lain` int(11) NOT NULL,
  `lb_pengeluaran_gaji` int(11) NOT NULL,
  `lb_pengeluaran_listrik` int(11) NOT NULL,
  `lb_pengeluaran_tlpn_internet` int(11) NOT NULL,
  `lb_pengeluaran_perlengkapan_toko` int(11) NOT NULL,
  `lb_pengeluaran_biaya_penyusutan` int(11) NOT NULL,
  `lb_pengeluaran_bensin` int(11) NOT NULL,
  `lb_pengeluaran_tak_terduga` int(11) NOT NULL,
  `lb_pengeluaran_lain` int(11) NOT NULL,
  `lb_cabang` int(11) NOT NULL,
  PRIMARY KEY (`lb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO laba_bersih VALUES("1","500000","400000","150000","0","0","0","0","0","0","0");
INSERT INTO laba_bersih VALUES("6","0","0","0","0","0","0","0","0","0","1");



CREATE TABLE `pembelian` (
  `pembelian_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `pembelian_cabang` int(11) NOT NULL,
  PRIMARY KEY (`pembelian_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;




CREATE TABLE `penjualan` (
  `penjualan_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `penjualan_cabang` int(11) NOT NULL,
  PRIMARY KEY (`penjualan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO penjualan VALUES("2","69","69","1","","12000000","3","202309201","2023-09-20","1","1","0","0","0","0");



CREATE TABLE `piutang` (
  `piutang_id` int(11) NOT NULL AUTO_INCREMENT,
  `piutang_invoice` text NOT NULL,
  `piutang_date` varchar(500) NOT NULL,
  `piutang_date_time` varchar(500) NOT NULL,
  `piutang_kasir` int(11) NOT NULL,
  `piutang_nominal` varchar(500) NOT NULL,
  `piutang_tipe_pembayaran` int(11) NOT NULL,
  `piutang_cabang` int(11) NOT NULL,
  PRIMARY KEY (`piutang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `piutang_kembalian` (
  `pl_id` int(11) NOT NULL AUTO_INCREMENT,
  `pl_invoice` text NOT NULL,
  `pl_date` varchar(500) NOT NULL,
  `pl_date_time` varchar(500) NOT NULL,
  `pl_nominal` varchar(250) NOT NULL,
  `pl_cabang` int(11) NOT NULL,
  PRIMARY KEY (`pl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO piutang_kembalian VALUES("1","202111102","2021-11-10","10 November 2021 6:43:57 pm","1000","0");



CREATE TABLE `retur` (
  `retur_id` int(11) NOT NULL AUTO_INCREMENT,
  `retur_barang_id` varchar(500) NOT NULL,
  `retur_invoice` varchar(500) NOT NULL,
  `retur_admin_id` varchar(500) NOT NULL,
  `retur_date` date NOT NULL,
  `retur_alasan` text NOT NULL,
  `barang_stock` int(11) NOT NULL,
  PRIMARY KEY (`retur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

INSERT INTO retur VALUES("12","5","202004209","3","2020-04-20"," ","1");
INSERT INTO retur VALUES("13","5","202004209","3","2020-04-20"," ","1");



CREATE TABLE `satuan` (
  `satuan_id` int(11) NOT NULL AUTO_INCREMENT,
  `satuan_nama` varchar(500) NOT NULL,
  `satuan_status` varchar(250) NOT NULL,
  `satuan_cabang` int(11) NOT NULL,
  PRIMARY KEY (`satuan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO satuan VALUES("1","KG","1","0");
INSERT INTO satuan VALUES("2","PCS","1","0");
INSERT INTO satuan VALUES("3","Unit","1","0");



CREATE TABLE `servis` (
  `servis_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `servis_cabang` int(11) NOT NULL,
  PRIMARY KEY (`servis_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO servis VALUES("2","servis-pc-lcd","servis-pc-lcd","Servis Lcd","Servis Lcd","20000","30000","50000","3","1","2021-11-24","24 November 2021 9:15:57 am","0","0","","","0");
INSERT INTO servis VALUES("5","servis-hp-touch","servis-hp-touch","Servis Touch Screen","Servis Touch","50000","60000","110000","2","1","2022-01-17","17 January 2022 12:42:54 pm","3","3","2022-02-08","08 February 2022 11:13:45 pm","0");
INSERT INTO servis VALUES("6","servis-flash","servis-flash","Flash Hp","Flash Hp","60000","40000","100000","2","1","2022-02-08","08 February 2022 11:14:34 pm","3","0","","","0");
INSERT INTO servis VALUES("7","6346457457","6346457457","Servis HP Flash","Servis HP Flash","200000","100000","300000","4","1","2022-03-01","01 March 2022 5:35:59 pm","3","0","","","1");



CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_nama` varchar(250) NOT NULL,
  `supplier_wa` varchar(250) NOT NULL,
  `supplier_alamat` text NOT NULL,
  `supplier_company` varchar(250) NOT NULL,
  `supplier_status` int(11) NOT NULL,
  `supplier_create` varchar(250) NOT NULL,
  `supplier_cabang` int(11) NOT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO supplier VALUES("2","Doni Afandi","085780978675","Surabaya","PT Pemasok Produk","1","14 November 2020 7:31:51 pm","0");
INSERT INTO supplier VALUES("4","Afandi","085787654321","Surabaya","PT ABC","1","15 November 2020 7:46:06 pm","0");



CREATE TABLE `terlaris` (
  `terlaris_id` int(11) NOT NULL AUTO_INCREMENT,
  `barang_id` int(11) NOT NULL,
  `barang_terjual` int(11) NOT NULL,
  PRIMARY KEY (`terlaris_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO terlaris VALUES("1","71","1");
INSERT INTO terlaris VALUES("2","66","1");
INSERT INTO terlaris VALUES("3","69","1");
INSERT INTO terlaris VALUES("4","69","1");



CREATE TABLE `toko` (
  `toko_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `toko_cabang` int(11) NOT NULL,
  PRIMARY KEY (`toko_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO toko VALUES("1","EYD COMPUTER","KELAPA TUJUH","Kelapa Tujuh","031890876","08578909876","id.eydcom@gmail.com","0","8","0","8","https://eydcom.com/demo/pos-kasir/pos-kasir&amp;servis","Garansi Servis maksimal 1 Minggu","Barang servis sudah siambil Barang servis sudah siambil Barang servis sudah siambil Barang servis sudah siambil","1","0","0");
INSERT INTO toko VALUES("8","EYD COMPUTER","KEBON EMPAT","Kebon Empat","07241234","08237687654","suport.eydcom@gmail.com","0","8","0","8","https://eydcom.com/demo/pos-kasir/pos-kasir&amp;servis","Garansi Servis maksimal 1 Minggu","Barang servis sudah siambil Barang servis sudah siambil Barang servis sudah siambil Barang servis sudah siambil","1","0","1");



CREATE TABLE `transfer` (
  `transfer_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `transfer_cabang` int(11) NOT NULL,
  PRIMARY KEY (`transfer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO transfer VALUES("1","2021111001","1","2021-11-10","10 November 2021 10:35:35 pm","2021-11-10","10 November 2021 10:38:43 pm","Transfer Dari Gudang Pusat","0","1","0","1","2","3","16","0");



CREATE TABLE `transfer_produk_keluar` (
  `tpk_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `tpk_cabang` int(11) NOT NULL,
  PRIMARY KEY (`tpk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO transfer_produk_keluar VALUES("1","54","54","BRG-001","2","2021111001","2021-11-10","10 November 2021 10:35:15 pm","0","0","0","3","0","1","0");
INSERT INTO transfer_produk_keluar VALUES("2","53","53","12345678","2","2021111001","2021-11-10","10 November 2021 10:35:15 pm","0","0","0","3","0","1","0");



CREATE TABLE `transfer_produk_masuk` (
  `tpm_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `tpm_cabang` int(11) NOT NULL,
  PRIMARY KEY (`tpm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;




CREATE TABLE `transfer_select_cabang` (
  `tsc_id` int(11) NOT NULL AUTO_INCREMENT,
  `tsc_cabang_pusat` int(11) NOT NULL,
  `tsc_cabang_penerima` int(11) NOT NULL,
  `tsc_user_id` int(11) NOT NULL,
  `tsc_cabang` int(11) NOT NULL,
  PRIMARY KEY (`tsc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `user_cabang` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

INSERT INTO user VALUES("3","eydcom.com","08679889","Kelapa Tujuh","id.eydcom@gmail.com","7be3fbbfb4ac65a98a8570eb3a9f6844","30 March 2020 9:17:00 pm","super admin","0","0","1","0");
INSERT INTO user VALUES("7","Naga Afandi ","086798890000","Surabaya","superadmin@senimankoding.com","550e1bafe077ff0b0b67f4e32f29d751","16 April 2020 9:31:04 pm","super admin","0","0","0","0");
INSERT INTO user VALUES("19","ADMIN","08679889","Kelapa Tujuh","admin.eydcom@gmail.com","7be3fbbfb4ac65a98a8570eb3a9f6844","20 September 2023 9:59:53 am","admin","0","0","1","0");
INSERT INTO user VALUES("20","KASIR","08123456","Kelapa Tujuh","kasir.eydcom@gmail.com","7be3fbbfb4ac65a98a8570eb3a9f6844","20 September 2023 10:00:22 am","kasir","0","0","1","0");
INSERT INTO user VALUES("21","TEKNISI","086798894444","Kelapa Tujuh","teknisi.eydcom@gmail.com","7be3fbbfb4ac65a98a8570eb3a9f6844","20 September 2023 10:00:47 am","teknisi","0","0","1","0");
INSERT INTO user VALUES("22","KURIR","0867988985656","Kelapa Tujuh","Kurir.eydcom@gmail.com","7be3fbbfb4ac65a98a8570eb3a9f6844","20 September 2023 10:01:14 am","kurir","0","0","1","0");

