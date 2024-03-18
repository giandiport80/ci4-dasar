-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.9.4-MariaDB-log - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for ci4_dasar
CREATE DATABASE IF NOT EXISTS `ci4_dasar` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;
USE `ci4_dasar`;

-- Dumping structure for table ci4_dasar.komik
CREATE TABLE IF NOT EXISTS `komik` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `penulis` varchar(255) DEFAULT NULL,
  `penerbit` varchar(255) DEFAULT NULL,
  `sampul` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table ci4_dasar.komik: ~3 rows (approximately)
INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
	(1, 'Naruto', 'naruto', 'Masashi Kisimotosss', 'Shonen Jump', 'naruto.jpeg', NULL, '2024-03-18 02:13:53'),
	(2, 'One Piece', 'one-piece', 'Eichiro Oda', 'Gramedia', 'one-piece.jpg', NULL, '2024-03-18 02:17:26'),
	(12, 'Attack On Titan', 'attack-on-titan', 'Hajime Isayama', 'Shone Jump', '1710733985_05dbf0dca6590f3905f4.jpeg', '2024-03-18 03:21:02', '2024-03-18 03:53:05');

-- Dumping structure for table ci4_dasar.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table ci4_dasar.migrations: ~1 rows (approximately)
INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
	(2, '2024-03-18-040318', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1710736272, 1);

-- Dumping structure for table ci4_dasar.orang
CREATE TABLE IF NOT EXISTS `orang` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `alamat` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table ci4_dasar.orang: ~150 rows (approximately)
INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
	(1, 'Aswani Kairav Sinaga', 'Jr. Cikutra Barat No. 553, Cilegon 52537, Sulteng', '2000-08-28 04:43:09', '1997-08-31 09:05:46'),
	(2, 'Carla Mardhiyah', 'Jr. Gatot Subroto No. 175, Dumai 80656, Papua', '1977-06-22 01:06:16', '1981-02-02 20:09:25'),
	(3, 'Olga Pradana', 'Psr. B.Agam 1 No. 574, Surabaya 59621, Malut', '1984-06-18 22:04:42', '1988-10-10 12:07:37'),
	(4, 'Hardana Saadat Rajata M.M.', 'Ki. Lada No. 639, Banjarbaru 44981, Kepri', '1987-10-20 15:23:50', '2001-09-13 02:15:12'),
	(5, 'Sidiq Ramadan S.Farm', 'Kpg. Monginsidi No. 640, Kediri 46150, Kepri', '1970-10-18 02:53:07', '2021-06-13 08:04:12'),
	(6, 'Ulya Suryatmi', 'Ds. Ters. Pasir Koja No. 459, Banda Aceh 36057, NTT', '2008-12-02 16:50:22', '2012-11-02 08:06:16'),
	(7, 'Ifa Halimah', 'Gg. Ujung No. 766, Sabang 80457, NTT', '2022-11-20 17:13:20', '1973-05-10 13:50:37'),
	(8, 'Patricia Lidya Zulaika', 'Dk. Dipatiukur No. 954, Bandar Lampung 97859, Kalbar', '2021-04-05 01:43:42', '2022-12-28 16:07:47'),
	(9, 'Citra Lailasari', 'Gg. Baranang Siang No. 355, Banjar 65880, NTB', '1992-02-01 20:51:02', '1982-12-03 11:53:09'),
	(10, 'Hartana Zulkarnain', 'Kpg. Ters. Jakarta No. 587, Denpasar 86184, DIY', '1993-04-29 08:32:33', '2020-05-27 08:44:26'),
	(11, 'Natalia Diah Handayani M.Kom.', 'Jln. Suniaraja No. 77, Solok 47883, Sultra', '1989-11-21 10:46:55', '1988-07-20 00:22:29'),
	(12, 'Vivi Laksita M.Ak', 'Dk. Astana Anyar No. 710, Tebing Tinggi 12812, Riau', '1971-02-05 11:04:12', '1993-09-01 18:17:40'),
	(13, 'Cinta Puspasari S.T.', 'Ds. Suryo Pranoto No. 84, Kendari 99983, Sultra', '1977-10-25 21:23:11', '1982-12-31 15:55:10'),
	(14, 'Wirda Hassanah', 'Psr. Peta No. 671, Denpasar 67919, Jambi', '2003-03-01 18:12:13', '1998-01-20 21:30:28'),
	(15, 'Nadine Usada M.Ak', 'Ki. Ki Hajar Dewantara No. 17, Binjai 89246, Sumbar', '1991-05-08 11:46:21', '1977-03-18 16:47:14'),
	(16, 'Indah Namaga', 'Kpg. Baha No. 779, Salatiga 21454, Kalbar', '2023-06-09 19:22:35', '1994-12-18 09:29:34'),
	(17, 'Raharja Marpaung S.H.', 'Jr. K.H. Wahid Hasyim (Kopo) No. 471, Jayapura 58589, Kalteng', '1985-11-28 17:29:22', '2015-01-08 11:02:15'),
	(18, 'Ami Kasiyah Padmasari S.Kom', 'Jr. Gambang No. 797, Bandung 71218, Aceh', '1999-07-03 19:52:01', '2006-11-05 17:10:12'),
	(19, 'Bambang Irawan', 'Jr. Sumpah Pemuda No. 743, Balikpapan 48174, Sulteng', '2008-07-09 00:51:09', '1971-04-26 15:08:36'),
	(20, 'Paulin Yuniar S.Psi', 'Psr. Babadak No. 563, Tangerang 95239, Jabar', '1998-05-12 12:40:59', '2001-12-23 16:23:02'),
	(21, 'Putri Laksmiwati', 'Ds. Baja Raya No. 566, Ambon 51381, NTT', '1986-06-25 06:44:51', '2012-01-20 18:33:21'),
	(22, 'Tari Usada S.E.', 'Kpg. Rajawali Barat No. 708, Tual 93607, Babel', '1981-12-16 01:09:02', '2006-11-09 23:27:52'),
	(23, 'Agnes Mulyani', 'Ki. S. Parman No. 536, Padang 63754, DKI', '2022-10-31 04:12:01', '2006-03-14 20:59:56'),
	(24, 'Karimah Nasyidah S.Sos', 'Kpg. Ir. H. Juanda No. 423, Samarinda 90897, Aceh', '1973-04-29 17:52:31', '2002-03-17 08:34:37'),
	(25, 'Cahyanto Hidayat', 'Jr. Industri No. 510, Sukabumi 46948, Sumsel', '2007-03-04 12:01:20', '2024-03-17 17:03:54'),
	(26, 'Cinta Maryati S.Pd', 'Kpg. Muwardi No. 275, Madiun 76285, Kaltara', '1997-08-25 18:51:18', '1972-07-25 22:16:31'),
	(27, 'Digdaya Kunthara Nugroho', 'Ds. Sukabumi No. 677, Mojokerto 36215, NTB', '1991-11-01 09:42:37', '1998-11-18 02:27:00'),
	(28, 'Maria Riyanti', 'Jr. Kebangkitan Nasional No. 565, Kotamobagu 24359, Sulsel', '1983-10-24 23:35:05', '1982-08-11 10:13:53'),
	(29, 'Jasmin Namaga S.IP', 'Dk. Kali No. 896, Madiun 30979, Sulteng', '1997-06-29 23:49:39', '2023-06-05 12:43:48'),
	(30, 'Pranata Daliono Waluyo', 'Psr. Jaksa No. 531, Samarinda 61788, Lampung', '1983-09-04 22:09:14', '2013-01-01 14:29:57'),
	(31, 'Hasta Sihombing S.E.I', 'Psr. Urip Sumoharjo No. 862, Kupang 57567, Bali', '1990-09-12 07:04:18', '1992-02-13 13:24:08'),
	(32, 'Eva Kusmawati S.Farm', 'Kpg. Ikan No. 802, Batam 65027, Babel', '2000-09-26 22:00:31', '2017-11-02 06:00:29'),
	(33, 'Eli Nurdiyanti', 'Gg. BKR No. 75, Kupang 75020, Pabar', '1981-01-17 19:45:40', '1994-03-27 20:48:28'),
	(34, 'Hesti Susanti S.Pd', 'Dk. Teuku Umar No. 143, Pekanbaru 26013, Lampung', '1971-08-07 12:37:21', '1978-02-16 04:47:35'),
	(35, 'Lantar Mahendra', 'Jr. Ters. Pasir Koja No. 198, Kotamobagu 48184, Lampung', '1995-11-18 14:20:38', '2006-12-06 19:52:06'),
	(36, 'Gabriella Humaira Mulyani', 'Dk. Rajiman No. 624, Batam 14470, Sultra', '1978-06-21 03:09:41', '1971-08-18 08:46:03'),
	(37, 'Irnanto Tampubolon', 'Jr. PHH. Mustofa No. 351, Denpasar 20566, Kalteng', '2012-02-27 12:33:16', '2006-01-06 11:45:03'),
	(38, 'Ella Ciaobella Handayani', 'Jr. Bagonwoto  No. 497, Pagar Alam 19698, Jambi', '2003-06-07 12:27:44', '2002-10-23 03:23:49'),
	(39, 'Imam Tirtayasa Kuswoyo', 'Kpg. Gading No. 80, Kupang 20181, Babel', '2013-12-20 20:38:18', '2000-03-29 18:52:35'),
	(40, 'Endah Padmasari', 'Psr. Adisumarmo No. 379, Manado 88449, Aceh', '1987-09-27 20:03:32', '1991-08-07 15:01:16'),
	(41, 'Alika Siti Rahayu', 'Gg. Hasanuddin No. 167, Salatiga 50062, Jabar', '1991-06-15 13:32:08', '2010-07-10 07:19:33'),
	(42, 'Putri Sabrina Wulandari M.Farm', 'Ds. Radio No. 616, Cirebon 86811, Kalbar', '1986-03-26 12:36:19', '1991-03-22 01:21:44'),
	(43, 'Drajat Mangunsong', 'Jr. Baranangsiang No. 59, Tarakan 70849, Sulsel', '1973-12-21 17:59:29', '2008-01-22 00:26:06'),
	(44, 'Tira Wulandari', 'Gg. Baranangsiang No. 809, Sawahlunto 30123, Gorontalo', '1974-12-06 05:40:24', '2006-03-23 14:39:09'),
	(45, 'Kania Maida Nurdiyanti S.Psi', 'Ki. Industri No. 461, Sabang 39064, Aceh', '2009-02-06 23:39:59', '2023-11-24 00:29:12'),
	(46, 'Yunita Laksmiwati', 'Psr. M.T. Haryono No. 314, Bekasi 90355, Jatim', '2011-10-30 18:18:12', '1973-03-31 09:15:10'),
	(47, 'Bagus Nababan', 'Jr. Bass No. 445, Banda Aceh 25171, Sulsel', '1997-02-12 05:11:31', '2003-05-01 00:47:00'),
	(48, 'Dariati Ganep Firmansyah M.Pd', 'Psr. Dipenogoro No. 96, Banjarbaru 62265, Kaltara', '1990-05-11 23:49:11', '2021-04-15 07:29:01'),
	(49, 'Febi Hariyah S.H.', 'Kpg. Dipenogoro No. 563, Batu 71132, Kalbar', '2017-08-13 07:54:52', '1971-06-06 01:33:32'),
	(50, 'Azalea Oktaviani', 'Jr. Basmol Raya No. 560, Balikpapan 19746, Malut', '2005-01-30 16:05:00', '1987-06-21 16:31:32'),
	(51, 'Galang Pradipta', 'Dk. Jamika No. 523, Bandar Lampung 20957, NTT', '1977-03-08 04:24:27', '1995-03-26 05:09:08'),
	(52, 'Amelia Hariyah', 'Kpg. Dahlia No. 762, Sabang 23043, Aceh', '2004-12-16 04:38:38', '1998-09-01 16:05:22'),
	(53, 'Cahyanto Erik Gunarto S.E.I', 'Jln. Jambu No. 429, Bogor 60234, Banten', '1997-04-11 18:39:16', '1973-11-24 01:50:23'),
	(54, 'Janet Yulianti S.Gz', 'Gg. Achmad No. 697, Pekanbaru 16837, Kalsel', '2011-12-23 00:13:36', '2002-04-29 04:42:16'),
	(55, 'Gambira Hardi Hutasoit', 'Jln. Basoka No. 378, Batam 64497, Sumbar', '2000-10-16 20:44:33', '1979-01-22 03:10:39'),
	(56, 'Galuh Sinaga', 'Gg. Abang No. 202, Blitar 52713, NTB', '2017-12-08 06:31:25', '1973-08-01 23:12:57'),
	(57, 'Lalita Ade Aryani S.IP', 'Kpg. B.Agam Dlm No. 777, Payakumbuh 83619, Malut', '1977-12-12 05:43:41', '2006-10-19 19:19:45'),
	(58, 'Puji Lili Winarsih S.Gz', 'Ds. Baranang Siang Indah No. 853, Singkawang 15734, Kalbar', '2019-08-05 14:22:15', '2020-06-28 08:42:04'),
	(59, 'Hani Laksmiwati', 'Ki. Setiabudhi No. 681, Mojokerto 88291, Sumsel', '1983-11-08 19:43:08', '2020-04-12 03:22:03'),
	(60, 'Ani Usamah', 'Ki. Hang No. 119, Kupang 24080, Kalsel', '1988-05-26 17:55:53', '1975-09-10 01:28:16'),
	(61, 'Dirja Raden Marpaung S.Farm', 'Gg. Muwardi No. 76, Padangpanjang 20614, Gorontalo', '1991-11-17 20:31:49', '2000-08-13 03:37:50'),
	(62, 'Lalita Zahra Pratiwi M.TI.', 'Kpg. Cihampelas No. 762, Pontianak 48971, Sulteng', '2008-11-19 07:16:05', '2006-07-30 20:14:49'),
	(63, 'Daruna Karya Wibisono', 'Jr. Gatot Subroto No. 529, Magelang 67795, Riau', '1996-06-15 23:48:40', '1989-06-11 19:49:36'),
	(64, 'Adikara Kuswoyo', 'Psr. Astana Anyar No. 329, Padangpanjang 59956, Sulut', '1981-01-11 17:42:07', '1986-01-04 12:42:14'),
	(65, 'Lukita Simanjuntak S.T.', 'Dk. Sutoyo No. 131, Probolinggo 60999, DKI', '1983-05-17 12:08:41', '1977-03-25 05:20:01'),
	(66, 'Clara Zulaikha Rahayu', 'Ds. Elang No. 989, Bau-Bau 54416, NTB', '2007-09-07 08:01:50', '1980-10-08 21:17:38'),
	(67, 'Gangsar Napitupulu', 'Ds. Bah Jaya No. 994, Sorong 84020, Kepri', '2017-10-16 19:02:57', '2004-02-22 21:10:44'),
	(68, 'Eva Rahayu', 'Kpg. Pasirkoja No. 618, Bengkulu 88443, NTB', '2022-11-30 04:16:08', '1998-06-16 08:16:35'),
	(69, 'Cecep Irwan Prabowo', 'Ki. Sampangan No. 994, Sungai Penuh 95226, Jabar', '1971-05-01 16:34:52', '2010-08-02 13:04:00'),
	(70, 'Setya Mahendra', 'Psr. Gatot Subroto No. 335, Balikpapan 51664, NTT', '1986-10-12 23:31:34', '1977-04-05 22:04:55'),
	(71, 'Hilda Widiastuti', 'Jln. HOS. Cjokroaminoto (Pasirkaliki) No. 812, Administrasi Jakarta Pusat 95837, DKI', '2009-03-01 11:06:55', '1991-04-26 20:24:04'),
	(72, 'Rina Anggraini', 'Dk. Bara No. 524, Surabaya 29082, Gorontalo', '1981-06-23 10:42:17', '1984-02-05 00:43:34'),
	(73, 'Mitra Sitompul S.Gz', 'Dk. Bambu No. 652, Ternate 58458, Aceh', '2003-05-04 20:21:59', '2022-10-20 14:50:35'),
	(74, 'Galang Santoso', 'Ki. Abdul No. 63, Administrasi Jakarta Selatan 37630, Aceh', '2006-12-03 03:26:45', '2022-01-27 10:49:54'),
	(75, 'Bakti Ihsan Suwarno', 'Gg. Kiaracondong No. 177, Ambon 63544, NTT', '1998-12-13 12:36:59', '1985-09-19 13:33:50'),
	(76, 'Damu Widodo', 'Psr. Ters. Buah Batu No. 352, Administrasi Jakarta Selatan 76026, Lampung', '1999-06-04 18:35:36', '2020-10-25 12:18:50'),
	(77, 'Sarah Suryatmi', 'Ki. Abdul No. 544, Lhokseumawe 72110, NTB', '2022-10-17 07:22:18', '2013-03-14 23:58:43'),
	(78, 'Taswir Kamal Zulkarnain', 'Kpg. Moch. Toha No. 169, Bontang 74848, Jambi', '1986-01-24 04:09:33', '2015-11-03 01:02:43'),
	(79, 'Samiah Winarsih', 'Kpg. Adisucipto No. 961, Sibolga 31867, Kepri', '2008-05-23 16:03:11', '1981-05-30 15:04:21'),
	(80, 'Farah Hasanah', 'Jln. Dewi Sartika No. 815, Subulussalam 13276, Bengkulu', '1978-10-29 01:01:55', '1975-07-16 14:43:16'),
	(81, 'Oliva Usamah', 'Jr. Bakau Griya Utama No. 223, Batu 97751, Kaltara', '2015-09-20 17:58:03', '1974-08-25 01:08:17'),
	(82, 'Jindra Kuswoyo', 'Gg. Baik No. 127, Sorong 37478, DIY', '1977-01-13 21:13:11', '1979-07-14 15:15:30'),
	(83, 'Ulva Pertiwi S.Sos', 'Dk. Moch. Ramdan No. 674, Denpasar 65108, Jateng', '2014-06-09 06:49:35', '2023-01-20 16:26:36'),
	(84, 'Lala Oktaviani', 'Kpg. Cikutra Timur No. 627, Sukabumi 97124, Bengkulu', '1979-06-29 03:30:30', '2016-01-12 10:59:54'),
	(85, 'Taufik Suryono', 'Ds. Setiabudhi No. 273, Gorontalo 85966, Kalbar', '2017-05-29 13:10:17', '1992-04-27 07:03:07'),
	(86, 'Kurnia Mangunsong S.Kom', 'Jln. Babah No. 889, Salatiga 29124, Jambi', '2001-11-11 00:06:32', '2022-01-12 00:18:07'),
	(87, 'Erik Johan Halim M.Ak', 'Kpg. Pasteur No. 191, Kupang 65646, Malut', '1998-03-13 20:34:01', '2017-03-02 16:44:08'),
	(88, 'Gina Pratiwi S.E.I', 'Psr. Imam No. 430, Bogor 16968, Gorontalo', '1990-11-01 13:02:18', '2003-03-28 22:18:04'),
	(89, 'Kairav Prasetya', 'Psr. W.R. Supratman No. 818, Cilegon 32067, Aceh', '1986-09-02 06:10:46', '1985-12-27 17:39:21'),
	(90, 'Darimin Hutasoit', 'Psr. Veteran No. 484, Balikpapan 15889, Riau', '2003-06-25 00:09:09', '2012-05-12 15:03:30'),
	(91, 'Galak Pradipta M.Kom.', 'Dk. Sutarto No. 396, Sungai Penuh 93044, Pabar', '1984-05-15 08:21:42', '1999-09-28 09:07:48'),
	(92, 'Zahra Gabriella Fujiati', 'Dk. Villa No. 63, Administrasi Jakarta Timur 72333, Lampung', '2014-03-24 05:18:37', '2011-01-22 18:33:02'),
	(93, 'Umay Prakasa', 'Psr. Sam Ratulangi No. 358, Administrasi Jakarta Barat 74316, Sulteng', '1971-10-16 14:36:13', '1985-12-26 02:24:55'),
	(94, 'Balamantri Firmansyah', 'Psr. Basoka No. 923, Ternate 37993, Sumbar', '1983-08-14 00:13:21', '1988-02-22 16:32:18'),
	(95, 'Olga Adriansyah', 'Psr. Acordion No. 543, Metro 14861, Bali', '2018-09-16 04:00:59', '2018-07-23 04:06:51'),
	(96, 'Raisa Betania Sudiati S.Psi', 'Psr. Salak No. 622, Malang 64132, Kalsel', '1988-03-01 10:34:19', '2022-02-14 02:28:34'),
	(97, 'Nrima Siregar', 'Gg. Balikpapan No. 918, Padangpanjang 86848, Kalteng', '2001-02-16 16:27:55', '1984-03-16 11:36:23'),
	(98, 'Argono Yosef Maulana', 'Gg. Bak Air No. 965, Bandung 57726, NTT', '1984-07-14 16:31:08', '1995-09-15 11:43:29'),
	(99, 'Karya Saiful Ardianto', 'Kpg. Bhayangkara No. 895, Semarang 55062, Jatim', '1997-09-16 22:49:53', '2003-12-10 18:29:58'),
	(100, 'Titin Padmasari', 'Jln. Untung Suropati No. 858, Subulussalam 75180, Pabar', '1978-04-09 21:28:15', '1977-07-09 16:39:13'),
	(101, 'Teddy Mustofa', 'Dk. Lada No. 981, Makassar 78816, Kalbar', '1970-12-17 11:43:19', '1984-05-13 19:51:10'),
	(102, 'Prabawa Nainggolan', 'Jr. Sudiarto No. 530, Tasikmalaya 35604, Sulbar', '2018-04-26 14:43:28', '2016-05-01 22:32:55'),
	(103, 'Widya Mayasari', 'Jln. Padma No. 658, Palangka Raya 49745, Maluku', '1993-05-21 20:51:18', '1972-10-02 21:45:37'),
	(104, 'Aris Iswahyudi', 'Dk. Banceng Pondok No. 831, Palembang 73616, Jatim', '2023-05-28 09:59:41', '2004-08-25 15:48:14'),
	(105, 'Cinthia Mandasari', 'Kpg. Sumpah Pemuda No. 746, Palu 22270, Sulteng', '1970-10-17 17:18:23', '2010-08-06 15:32:49'),
	(106, 'Jessica Agustina', 'Gg. Jaksa No. 494, Ambon 77378, Sumbar', '2010-06-23 16:30:45', '2005-11-12 13:08:47'),
	(107, 'Pranawa Wibowo', 'Psr. PHH. Mustofa No. 589, Ternate 76889, Sulteng', '1985-07-23 06:17:04', '1978-10-04 23:18:29'),
	(108, 'Candra Bakti Sitorus M.TI.', 'Kpg. Yos No. 436, Denpasar 15278, Sumut', '2015-02-25 00:52:50', '1986-05-15 12:03:04'),
	(109, 'Gamanto Dongoran', 'Gg. Pasir Koja No. 286, Administrasi Jakarta Timur 22774, Kaltara', '1971-01-10 15:15:16', '2007-09-09 13:27:00'),
	(110, 'Jasmin Namaga', 'Kpg. Sampangan No. 987, Sabang 22504, Kaltara', '2009-11-29 17:42:25', '1992-05-28 01:05:29'),
	(111, 'Asirwanda Wijaya', 'Psr. Asia Afrika No. 65, Ambon 58456, Kaltim', '1997-04-25 10:07:57', '2006-10-10 01:15:39'),
	(112, 'Hasan Bajragin Hakim', 'Ki. Yos Sudarso No. 976, Metro 46774, Bali', '1991-06-29 23:23:27', '2010-06-23 00:09:11'),
	(113, 'Unjani Rahmawati', 'Ki. Abang No. 307, Denpasar 79471, Bali', '1993-09-30 01:30:12', '1987-02-20 16:03:02'),
	(114, 'Ani Oni Kuswandari', 'Ki. Bakti No. 926, Tomohon 66847, Kalbar', '1993-06-08 06:04:47', '2006-02-26 23:09:10'),
	(115, 'Oliva Suartini', 'Dk. Warga No. 507, Parepare 31637, Pabar', '1976-01-15 08:54:51', '2013-07-26 00:47:49'),
	(116, 'Mala Vera Halimah M.TI.', 'Kpg. Pacuan Kuda No. 181, Makassar 77903, Aceh', '1999-03-04 18:15:52', '1970-01-30 22:32:40'),
	(117, 'Luthfi Siregar', 'Ds. Basket No. 158, Makassar 70654, Sumsel', '2020-10-16 04:14:19', '1978-07-05 04:42:41'),
	(118, 'Balapati Napitupulu', 'Kpg. Gambang No. 998, Dumai 15232, NTB', '1971-10-07 06:43:22', '1996-03-27 16:12:29'),
	(119, 'Nyana Darimin Hardiansyah', 'Dk. Raya Setiabudhi No. 271, Batu 28958, Babel', '1972-02-21 07:08:03', '2023-07-30 17:31:05'),
	(120, 'Rika Halimah', 'Dk. Kyai Gede No. 287, Gunungsitoli 43409, DIY', '1990-08-17 09:35:24', '2022-10-18 02:35:13'),
	(121, 'Tirtayasa Tampubolon', 'Ki. Halim No. 395, Palangka Raya 21171, Jabar', '2019-09-11 02:59:44', '2012-10-22 06:55:31'),
	(122, 'Amalia Nasyidah', 'Jr. Villa No. 570, Pekalongan 68566, Bengkulu', '2012-09-17 18:03:00', '1977-11-04 07:40:09'),
	(123, 'Ilsa Yulianti', 'Ds. Ketandan No. 823, Tidore Kepulauan 20044, Jabar', '1974-10-28 01:38:17', '2014-03-31 21:43:02'),
	(124, 'Kamidin Damanik', 'Ds. Baranang Siang Indah No. 896, Madiun 58352, Kepri', '1971-01-20 02:25:45', '1975-01-16 09:12:31'),
	(125, 'Dartono Pangestu Halim M.M.', 'Ds. Basket No. 239, Tanjungbalai 42896, Kaltim', '1990-11-09 13:48:55', '1995-03-21 17:27:19'),
	(126, 'Diah Agustina', 'Jln. Laswi No. 240, Mojokerto 25595, Jambi', '1999-06-03 14:51:57', '2012-01-03 12:15:01'),
	(127, 'Cornelia Safitri', 'Dk. Basmol Raya No. 329, Singkawang 14246, Bengkulu', '1991-10-21 15:35:28', '1977-06-15 11:34:11'),
	(128, 'Ade Najmudin', 'Jln. Raya Setiabudhi No. 563, Tasikmalaya 47434, Kalsel', '2006-11-04 12:11:01', '2015-04-10 17:08:52'),
	(129, 'Nabila Maryati', 'Ki. Kyai Gede No. 10, Tual 24876, Riau', '1987-11-16 15:39:44', '2017-09-08 12:39:37'),
	(130, 'Maida Laksmiwati', 'Kpg. Pasirkoja No. 197, Yogyakarta 89218, Jateng', '1987-07-31 14:34:10', '1991-10-18 08:09:43'),
	(131, 'Ian Prasetyo', 'Jln. Eka No. 872, Administrasi Jakarta Barat 75943, Sulbar', '2004-10-02 23:05:14', '2009-01-11 22:14:29'),
	(132, 'Yani Nurdiyanti', 'Jr. Suryo Pranoto No. 571, Administrasi Jakarta Pusat 76889, NTB', '1985-06-06 11:48:17', '1979-11-24 00:36:28'),
	(133, 'Kamila Hartati', 'Jr. Achmad No. 181, Sukabumi 21760, Jabar', '2001-11-30 14:00:13', '2018-12-15 08:11:37'),
	(134, 'Eva Yuliarti', 'Gg. Achmad Yani No. 302, Kediri 51724, Bali', '2019-02-26 13:32:07', '1993-10-11 14:59:47'),
	(135, 'Nalar Maryadi', 'Psr. Sutan Syahrir No. 380, Tanjung Pinang 15994, Riau', '2000-01-17 21:24:19', '1994-01-10 17:31:46'),
	(136, 'Lanjar Purwa Napitupulu', 'Jr. Rajawali Timur No. 983, Dumai 45164, Babel', '2014-05-17 18:11:27', '2001-09-25 15:00:00'),
	(137, 'Aswani Dono Habibi M.Kom.', 'Kpg. Yap Tjwan Bing No. 426, Administrasi Jakarta Selatan 80966, DKI', '2009-08-31 06:09:28', '1985-04-28 09:25:56'),
	(138, 'Juli Lailasari', 'Kpg. Sugiono No. 651, Tanjungbalai 12999, NTB', '1972-09-14 01:35:17', '1983-04-14 17:15:10'),
	(139, 'Warsita Reza Dongoran', 'Kpg. Gardujati No. 414, Batu 16999, Banten', '2008-04-26 05:26:27', '2010-06-24 03:44:35'),
	(140, 'Silvia Cici Agustina S.H.', 'Ds. Bara Tambar No. 408, Sorong 50182, Kalsel', '2022-07-06 17:29:14', '1995-05-06 21:52:51'),
	(141, 'Nabila Zaenab Suartini S.Ked', 'Jr. Cikapayang No. 379, Lhokseumawe 39863, Sultra', '2010-12-06 04:41:32', '1999-02-15 00:20:22'),
	(142, 'Hamzah Malik Winarno', 'Jr. PHH. Mustofa No. 615, Tasikmalaya 45166, Jateng', '2015-04-09 14:45:19', '2000-09-03 13:38:45'),
	(143, 'Karna Sihotang S.E.I', 'Psr. Baranangsiang No. 153, Jayapura 75696, Kalteng', '2015-06-28 11:06:14', '1983-06-21 00:57:22'),
	(144, 'Rina Mardhiyah', 'Ki. Baranangsiang No. 766, Batu 36911, Jambi', '1978-01-04 12:43:30', '2014-09-16 22:03:50'),
	(145, 'Naradi Jailani S.Sos', 'Ds. Gremet No. 27, Cirebon 70927, Kalsel', '1984-09-17 18:44:00', '1979-05-14 17:06:26'),
	(146, 'Arta Simanjuntak', 'Jr. Eka No. 299, Lubuklinggau 65376, NTB', '1999-10-06 00:22:06', '1972-08-09 03:44:21'),
	(147, 'Caturangga Prayoga', 'Dk. Baranang No. 43, Solok 61474, Bali', '1987-02-17 01:16:24', '1973-03-07 23:52:06'),
	(148, 'Jarwadi Kurniawan', 'Gg. K.H. Maskur No. 433, Pasuruan 19681, Kalbar', '1982-01-03 17:32:35', '2020-01-15 04:49:26'),
	(149, 'Bakianto Irsad Wibisono', 'Jln. Madrasah No. 475, Metro 30462, Jatim', '1975-07-03 07:15:13', '2010-11-17 03:04:21'),
	(150, 'Cici Lili Andriani M.Kom.', 'Jln. Jend. Sudirman No. 211, Semarang 38767, Papua', '1992-09-02 01:34:07', '2018-07-06 23:33:01');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
