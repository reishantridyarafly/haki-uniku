-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2022 at 04:23 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_haki`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jenis`
--

CREATE TABLE `tbl_jenis` (
  `id_jenis` int(11) NOT NULL,
  `nama_jenis` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_jenis`
--

INSERT INTO `tbl_jenis` (`id_jenis`, `nama_jenis`) VALUES
(1, 'Karya Tulis');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jenis_permohonan`
--

CREATE TABLE `tbl_jenis_permohonan` (
  `id_jenis_permohonan` int(11) NOT NULL,
  `nama_jenis_permohonan` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_jenis_permohonan`
--

INSERT INTO `tbl_jenis_permohonan` (`id_jenis_permohonan`, `nama_jenis_permohonan`) VALUES
(1, 'Hak Cipta'),
(2, 'Paten'),
(4, 'Merk');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kota`
--

CREATE TABLE `tbl_kota` (
  `id_kota` int(11) NOT NULL,
  `nama_kota` varchar(80) NOT NULL,
  `type` varchar(70) NOT NULL,
  `kode_pos` varchar(12) NOT NULL,
  `id_provinsi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kota`
--

INSERT INTO `tbl_kota` (`id_kota`, `nama_kota`, `type`, `kode_pos`, `id_provinsi`) VALUES
(1, 'Aceh Barat', 'Kabupaten', '23681', 21),
(2, 'Aceh Barat Daya', 'Kabupaten', '23764', 21),
(3, 'Aceh Besar', 'Kabupaten', '23951', 21),
(4, 'Aceh Jaya', 'Kabupaten', '23654', 21),
(5, 'Aceh Selatan', 'Kabupaten', '23719', 21),
(6, 'Aceh Singkil', 'Kabupaten', '24785', 21),
(7, 'Aceh Tamiang', 'Kabupaten', '24476', 21),
(8, 'Aceh Tengah', 'Kabupaten', '24511', 21),
(9, 'Aceh Tenggara', 'Kabupaten', '24611', 21),
(10, 'Aceh Timur', 'Kabupaten', '24454', 21),
(11, 'Aceh Utara', 'Kabupaten', '24382', 21),
(12, 'Agam', 'Kabupaten', '26411', 32),
(13, 'Alor', 'Kabupaten', '85811', 23),
(14, 'Ambon', 'Kota', '97222', 19),
(15, 'Asahan', 'Kabupaten', '21214', 34),
(16, 'Asmat', 'Kabupaten', '99777', 24),
(17, 'Badung', 'Kabupaten', '80351', 1),
(18, 'Balangan', 'Kabupaten', '71611', 13),
(19, 'Balikpapan', 'Kota', '76111', 15),
(20, 'Banda Aceh', 'Kota', '23238', 21),
(21, 'Bandar Lampung', 'Kota', '35139', 18),
(22, 'Bandung', 'Kabupaten', '40311', 9),
(23, 'Bandung', 'Kota', '40111', 9),
(24, 'Bandung Barat', 'Kabupaten', '40721', 9),
(25, 'Banggai', 'Kabupaten', '94711', 29),
(26, 'Banggai Kepulauan', 'Kabupaten', '94881', 29),
(27, 'Bangka', 'Kabupaten', '33212', 2),
(28, 'Bangka Barat', 'Kabupaten', '33315', 2),
(29, 'Bangka Selatan', 'Kabupaten', '33719', 2),
(30, 'Bangka Tengah', 'Kabupaten', '33613', 2),
(31, 'Bangkalan', 'Kabupaten', '69118', 11),
(32, 'Bangli', 'Kabupaten', '80619', 1),
(33, 'Banjar', 'Kabupaten', '70619', 13),
(34, 'Banjar', 'Kota', '46311', 9),
(35, 'Banjarbaru', 'Kota', '70712', 13),
(36, 'Banjarmasin', 'Kota', '70117', 13),
(37, 'Banjarnegara', 'Kabupaten', '53419', 10),
(38, 'Bantaeng', 'Kabupaten', '92411', 28),
(39, 'Bantul', 'Kabupaten', '55715', 5),
(40, 'Banyuasin', 'Kabupaten', '30911', 33),
(41, 'Banyumas', 'Kabupaten', '53114', 10),
(42, 'Banyuwangi', 'Kabupaten', '68416', 11),
(43, 'Barito Kuala', 'Kabupaten', '70511', 13),
(44, 'Barito Selatan', 'Kabupaten', '73711', 14),
(45, 'Barito Timur', 'Kabupaten', '73671', 14),
(46, 'Barito Utara', 'Kabupaten', '73881', 14),
(47, 'Barru', 'Kabupaten', '90719', 28),
(48, 'Batam', 'Kota', '29413', 17),
(49, 'Batang', 'Kabupaten', '51211', 10),
(50, 'Batang Hari', 'Kabupaten', '36613', 8),
(51, 'Batu', 'Kota', '65311', 11),
(52, 'Batu Bara', 'Kabupaten', '21655', 34),
(53, 'Bau-Bau', 'Kota', '93719', 30),
(54, 'Bekasi', 'Kabupaten', '17837', 9),
(55, 'Bekasi', 'Kota', '17121', 9),
(56, 'Belitung', 'Kabupaten', '33419', 2),
(57, 'Belitung Timur', 'Kabupaten', '33519', 2),
(58, 'Belu', 'Kabupaten', '85711', 23),
(59, 'Bener Meriah', 'Kabupaten', '24581', 21),
(60, 'Bengkalis', 'Kabupaten', '28719', 26),
(61, 'Bengkayang', 'Kabupaten', '79213', 12),
(62, 'Bengkulu', 'Kota', '38229', 4),
(63, 'Bengkulu Selatan', 'Kabupaten', '38519', 4),
(64, 'Bengkulu Tengah', 'Kabupaten', '38319', 4),
(65, 'Bengkulu Utara', 'Kabupaten', '38619', 4),
(66, 'Berau', 'Kabupaten', '77311', 15),
(67, 'Biak Numfor', 'Kabupaten', '98119', 24),
(68, 'Bima', 'Kabupaten', '84171', 22),
(69, 'Bima', 'Kota', '84139', 22),
(70, 'Binjai', 'Kota', '20712', 34),
(71, 'Bintan', 'Kabupaten', '29135', 17),
(72, 'Bireuen', 'Kabupaten', '24219', 21),
(73, 'Bitung', 'Kota', '95512', 31),
(74, 'Blitar', 'Kabupaten', '66171', 11),
(75, 'Blitar', 'Kota', '66124', 11),
(76, 'Blora', 'Kabupaten', '58219', 10),
(77, 'Boalemo', 'Kabupaten', '96319', 7),
(78, 'Bogor', 'Kabupaten', '16911', 9),
(79, 'Bogor', 'Kota', '16119', 9),
(80, 'Bojonegoro', 'Kabupaten', '62119', 11),
(81, 'Bolaang Mongondow (Bolmong)', 'Kabupaten', '95755', 31),
(82, 'Bolaang Mongondow Selatan', 'Kabupaten', '95774', 31),
(83, 'Bolaang Mongondow Timur', 'Kabupaten', '95783', 31),
(84, 'Bolaang Mongondow Utara', 'Kabupaten', '95765', 31),
(85, 'Bombana', 'Kabupaten', '93771', 30),
(86, 'Bondowoso', 'Kabupaten', '68219', 11),
(87, 'Bone', 'Kabupaten', '92713', 28),
(88, 'Bone Bolango', 'Kabupaten', '96511', 7),
(89, 'Bontang', 'Kota', '75313', 15),
(90, 'Boven Digoel', 'Kabupaten', '99662', 24),
(91, 'Boyolali', 'Kabupaten', '57312', 10),
(92, 'Brebes', 'Kabupaten', '52212', 10),
(93, 'Bukittinggi', 'Kota', '26115', 32),
(94, 'Buleleng', 'Kabupaten', '81111', 1),
(95, 'Bulukumba', 'Kabupaten', '92511', 28),
(96, 'Bulungan (Bulongan)', 'Kabupaten', '77211', 16),
(97, 'Bungo', 'Kabupaten', '37216', 8),
(98, 'Buol', 'Kabupaten', '94564', 29),
(99, 'Buru', 'Kabupaten', '97371', 19),
(100, 'Buru Selatan', 'Kabupaten', '97351', 19),
(101, 'Buton', 'Kabupaten', '93754', 30),
(102, 'Buton Utara', 'Kabupaten', '93745', 30),
(103, 'Ciamis', 'Kabupaten', '46211', 9),
(104, 'Cianjur', 'Kabupaten', '43217', 9),
(105, 'Cilacap', 'Kabupaten', '53211', 10),
(106, 'Cilegon', 'Kota', '42417', 3),
(107, 'Cimahi', 'Kota', '40512', 9),
(108, 'Cirebon', 'Kabupaten', '45611', 9),
(109, 'Cirebon', 'Kota', '45116', 9),
(110, 'Dairi', 'Kabupaten', '22211', 34),
(111, 'Deiyai (Deliyai)', 'Kabupaten', '98784', 24),
(112, 'Deli Serdang', 'Kabupaten', '20511', 34),
(113, 'Demak', 'Kabupaten', '59519', 10),
(114, 'Denpasar', 'Kota', '80227', 1),
(115, 'Depok', 'Kota', '16416', 9),
(116, 'Dharmasraya', 'Kabupaten', '27612', 32),
(117, 'Dogiyai', 'Kabupaten', '98866', 24),
(118, 'Dompu', 'Kabupaten', '84217', 22),
(119, 'Donggala', 'Kabupaten', '94341', 29),
(120, 'Dumai', 'Kota', '28811', 26),
(121, 'Empat Lawang', 'Kabupaten', '31811', 33),
(122, 'Ende', 'Kabupaten', '86351', 23),
(123, 'Enrekang', 'Kabupaten', '91719', 28),
(124, 'Fakfak', 'Kabupaten', '98651', 25),
(125, 'Flores Timur', 'Kabupaten', '86213', 23),
(126, 'Garut', 'Kabupaten', '44126', 9),
(127, 'Gayo Lues', 'Kabupaten', '24653', 21),
(128, 'Gianyar', 'Kabupaten', '80519', 1),
(129, 'Gorontalo', 'Kabupaten', '96218', 7),
(130, 'Gorontalo', 'Kota', '96115', 7),
(131, 'Gorontalo Utara', 'Kabupaten', '96611', 7),
(132, 'Gowa', 'Kabupaten', '92111', 28),
(133, 'Gresik', 'Kabupaten', '61115', 11),
(134, 'Grobogan', 'Kabupaten', '58111', 10),
(135, 'Gunung Kidul', 'Kabupaten', '55812', 5),
(136, 'Gunung Mas', 'Kabupaten', '74511', 14),
(137, 'Gunungsitoli', 'Kota', '22813', 34),
(138, 'Halmahera Barat', 'Kabupaten', '97757', 20),
(139, 'Halmahera Selatan', 'Kabupaten', '97911', 20),
(140, 'Halmahera Tengah', 'Kabupaten', '97853', 20),
(141, 'Halmahera Timur', 'Kabupaten', '97862', 20),
(142, 'Halmahera Utara', 'Kabupaten', '97762', 20),
(143, 'Hulu Sungai Selatan', 'Kabupaten', '71212', 13),
(144, 'Hulu Sungai Tengah', 'Kabupaten', '71313', 13),
(145, 'Hulu Sungai Utara', 'Kabupaten', '71419', 13),
(146, 'Humbang Hasundutan', 'Kabupaten', '22457', 34),
(147, 'Indragiri Hilir', 'Kabupaten', '29212', 26),
(148, 'Indragiri Hulu', 'Kabupaten', '29319', 26),
(149, 'Indramayu', 'Kabupaten', '45214', 9),
(150, 'Intan Jaya', 'Kabupaten', '98771', 24),
(151, 'Jakarta Barat', 'Kota', '11220', 6),
(152, 'Jakarta Pusat', 'Kota', '10540', 6),
(153, 'Jakarta Selatan', 'Kota', '12230', 6),
(154, 'Jakarta Timur', 'Kota', '13330', 6),
(155, 'Jakarta Utara', 'Kota', '14140', 6),
(156, 'Jambi', 'Kota', '36111', 8),
(157, 'Jayapura', 'Kabupaten', '99352', 24),
(158, 'Jayapura', 'Kota', '99114', 24),
(159, 'Jayawijaya', 'Kabupaten', '99511', 24),
(160, 'Jember', 'Kabupaten', '68113', 11),
(161, 'Jembrana', 'Kabupaten', '82251', 1),
(162, 'Jeneponto', 'Kabupaten', '92319', 28),
(163, 'Jepara', 'Kabupaten', '59419', 10),
(164, 'Jombang', 'Kabupaten', '61415', 11),
(165, 'Kaimana', 'Kabupaten', '98671', 25),
(166, 'Kampar', 'Kabupaten', '28411', 26),
(167, 'Kapuas', 'Kabupaten', '73583', 14),
(168, 'Kapuas Hulu', 'Kabupaten', '78719', 12),
(169, 'Karanganyar', 'Kabupaten', '57718', 10),
(170, 'Karangasem', 'Kabupaten', '80819', 1),
(171, 'Karawang', 'Kabupaten', '41311', 9),
(172, 'Karimun', 'Kabupaten', '29611', 17),
(173, 'Karo', 'Kabupaten', '22119', 34),
(174, 'Katingan', 'Kabupaten', '74411', 14),
(175, 'Kaur', 'Kabupaten', '38911', 4),
(176, 'Kayong Utara', 'Kabupaten', '78852', 12),
(177, 'Kebumen', 'Kabupaten', '54319', 10),
(178, 'Kediri', 'Kabupaten', '64184', 11),
(179, 'Kediri', 'Kota', '64125', 11),
(180, 'Keerom', 'Kabupaten', '99461', 24),
(181, 'Kendal', 'Kabupaten', '51314', 10),
(182, 'Kendari', 'Kota', '93126', 30),
(183, 'Kepahiang', 'Kabupaten', '39319', 4),
(184, 'Kepulauan Anambas', 'Kabupaten', '29991', 17),
(185, 'Kepulauan Aru', 'Kabupaten', '97681', 19),
(186, 'Kepulauan Mentawai', 'Kabupaten', '25771', 32),
(187, 'Kepulauan Meranti', 'Kabupaten', '28791', 26),
(188, 'Kepulauan Sangihe', 'Kabupaten', '95819', 31),
(189, 'Kepulauan Seribu', 'Kabupaten', '14550', 6),
(190, 'Kepulauan Siau Tagulandang Biaro (Sitaro)', 'Kabupaten', '95862', 31),
(191, 'Kepulauan Sula', 'Kabupaten', '97995', 20),
(192, 'Kepulauan Talaud', 'Kabupaten', '95885', 31),
(193, 'Kepulauan Yapen (Yapen Waropen)', 'Kabupaten', '98211', 24),
(194, 'Kerinci', 'Kabupaten', '37167', 8),
(195, 'Ketapang', 'Kabupaten', '78874', 12),
(196, 'Klaten', 'Kabupaten', '57411', 10),
(197, 'Klungkung', 'Kabupaten', '80719', 1),
(198, 'Kolaka', 'Kabupaten', '93511', 30),
(199, 'Kolaka Utara', 'Kabupaten', '93911', 30),
(200, 'Konawe', 'Kabupaten', '93411', 30),
(201, 'Konawe Selatan', 'Kabupaten', '93811', 30),
(202, 'Konawe Utara', 'Kabupaten', '93311', 30),
(203, 'Kotabaru', 'Kabupaten', '72119', 13),
(204, 'Kotamobagu', 'Kota', '95711', 31),
(205, 'Kotawaringin Barat', 'Kabupaten', '74119', 14),
(206, 'Kotawaringin Timur', 'Kabupaten', '74364', 14),
(207, 'Kuantan Singingi', 'Kabupaten', '29519', 26),
(208, 'Kubu Raya', 'Kabupaten', '78311', 12),
(209, 'Kudus', 'Kabupaten', '59311', 10),
(210, 'Kulon Progo', 'Kabupaten', '55611', 5),
(211, 'Kuningan', 'Kabupaten', '45511', 9),
(212, 'Kupang', 'Kabupaten', '85362', 23),
(213, 'Kupang', 'Kota', '85119', 23),
(214, 'Kutai Barat', 'Kabupaten', '75711', 15),
(215, 'Kutai Kartanegara', 'Kabupaten', '75511', 15),
(216, 'Kutai Timur', 'Kabupaten', '75611', 15),
(217, 'Labuhan Batu', 'Kabupaten', '21412', 34),
(218, 'Labuhan Batu Selatan', 'Kabupaten', '21511', 34),
(219, 'Labuhan Batu Utara', 'Kabupaten', '21711', 34),
(220, 'Lahat', 'Kabupaten', '31419', 33),
(221, 'Lamandau', 'Kabupaten', '74611', 14),
(222, 'Lamongan', 'Kabupaten', '64125', 11),
(223, 'Lampung Barat', 'Kabupaten', '34814', 18),
(224, 'Lampung Selatan', 'Kabupaten', '35511', 18),
(225, 'Lampung Tengah', 'Kabupaten', '34212', 18),
(226, 'Lampung Timur', 'Kabupaten', '34319', 18),
(227, 'Lampung Utara', 'Kabupaten', '34516', 18),
(228, 'Landak', 'Kabupaten', '78319', 12),
(229, 'Langkat', 'Kabupaten', '20811', 34),
(230, 'Langsa', 'Kota', '24412', 21),
(231, 'Lanny Jaya', 'Kabupaten', '99531', 24),
(232, 'Lebak', 'Kabupaten', '42319', 3),
(233, 'Lebong', 'Kabupaten', '39264', 4),
(234, 'Lembata', 'Kabupaten', '86611', 23),
(235, 'Lhokseumawe', 'Kota', '24352', 21),
(236, 'Lima Puluh Koto/Kota', 'Kabupaten', '26671', 32),
(237, 'Lingga', 'Kabupaten', '29811', 17),
(238, 'Lombok Barat', 'Kabupaten', '83311', 22),
(239, 'Lombok Tengah', 'Kabupaten', '83511', 22),
(240, 'Lombok Timur', 'Kabupaten', '83612', 22),
(241, 'Lombok Utara', 'Kabupaten', '83711', 22),
(242, 'Lubuk Linggau', 'Kota', '31614', 33),
(243, 'Lumajang', 'Kabupaten', '67319', 11),
(244, 'Luwu', 'Kabupaten', '91994', 28),
(245, 'Luwu Timur', 'Kabupaten', '92981', 28),
(246, 'Luwu Utara', 'Kabupaten', '92911', 28),
(247, 'Madiun', 'Kabupaten', '63153', 11),
(248, 'Madiun', 'Kota', '63122', 11),
(249, 'Magelang', 'Kabupaten', '56519', 10),
(250, 'Magelang', 'Kota', '56133', 10),
(251, 'Magetan', 'Kabupaten', '63314', 11),
(252, 'Majalengka', 'Kabupaten', '45412', 9),
(253, 'Majene', 'Kabupaten', '91411', 27),
(254, 'Makassar', 'Kota', '90111', 28),
(255, 'Malang', 'Kabupaten', '65163', 11),
(256, 'Malang', 'Kota', '65112', 11),
(257, 'Malinau', 'Kabupaten', '77511', 16),
(258, 'Maluku Barat Daya', 'Kabupaten', '97451', 19),
(259, 'Maluku Tengah', 'Kabupaten', '97513', 19),
(260, 'Maluku Tenggara', 'Kabupaten', '97651', 19),
(261, 'Maluku Tenggara Barat', 'Kabupaten', '97465', 19),
(262, 'Mamasa', 'Kabupaten', '91362', 27),
(263, 'Mamberamo Raya', 'Kabupaten', '99381', 24),
(264, 'Mamberamo Tengah', 'Kabupaten', '99553', 24),
(265, 'Mamuju', 'Kabupaten', '91519', 27),
(266, 'Mamuju Utara', 'Kabupaten', '91571', 27),
(267, 'Manado', 'Kota', '95247', 31),
(268, 'Mandailing Natal', 'Kabupaten', '22916', 34),
(269, 'Manggarai', 'Kabupaten', '86551', 23),
(270, 'Manggarai Barat', 'Kabupaten', '86711', 23),
(271, 'Manggarai Timur', 'Kabupaten', '86811', 23),
(272, 'Manokwari', 'Kabupaten', '98311', 25),
(273, 'Manokwari Selatan', 'Kabupaten', '98355', 25),
(274, 'Mappi', 'Kabupaten', '99853', 24),
(275, 'Maros', 'Kabupaten', '90511', 28),
(276, 'Mataram', 'Kota', '83131', 22),
(277, 'Maybrat', 'Kabupaten', '98051', 25),
(278, 'Medan', 'Kota', '20228', 34),
(279, 'Melawi', 'Kabupaten', '78619', 12),
(280, 'Merangin', 'Kabupaten', '37319', 8),
(281, 'Merauke', 'Kabupaten', '99613', 24),
(282, 'Mesuji', 'Kabupaten', '34911', 18),
(283, 'Metro', 'Kota', '34111', 18),
(284, 'Mimika', 'Kabupaten', '99962', 24),
(285, 'Minahasa', 'Kabupaten', '95614', 31),
(286, 'Minahasa Selatan', 'Kabupaten', '95914', 31),
(287, 'Minahasa Tenggara', 'Kabupaten', '95995', 31),
(288, 'Minahasa Utara', 'Kabupaten', '95316', 31),
(289, 'Mojokerto', 'Kabupaten', '61382', 11),
(290, 'Mojokerto', 'Kota', '61316', 11),
(291, 'Morowali', 'Kabupaten', '94911', 29),
(292, 'Muara Enim', 'Kabupaten', '31315', 33),
(293, 'Muaro Jambi', 'Kabupaten', '36311', 8),
(294, 'Muko Muko', 'Kabupaten', '38715', 4),
(295, 'Muna', 'Kabupaten', '93611', 30),
(296, 'Murung Raya', 'Kabupaten', '73911', 14),
(297, 'Musi Banyuasin', 'Kabupaten', '30719', 33),
(298, 'Musi Rawas', 'Kabupaten', '31661', 33),
(299, 'Nabire', 'Kabupaten', '98816', 24),
(300, 'Nagan Raya', 'Kabupaten', '23674', 21),
(301, 'Nagekeo', 'Kabupaten', '86911', 23),
(302, 'Natuna', 'Kabupaten', '29711', 17),
(303, 'Nduga', 'Kabupaten', '99541', 24),
(304, 'Ngada', 'Kabupaten', '86413', 23),
(305, 'Nganjuk', 'Kabupaten', '64414', 11),
(306, 'Ngawi', 'Kabupaten', '63219', 11),
(307, 'Nias', 'Kabupaten', '22876', 34),
(308, 'Nias Barat', 'Kabupaten', '22895', 34),
(309, 'Nias Selatan', 'Kabupaten', '22865', 34),
(310, 'Nias Utara', 'Kabupaten', '22856', 34),
(311, 'Nunukan', 'Kabupaten', '77421', 16),
(312, 'Ogan Ilir', 'Kabupaten', '30811', 33),
(313, 'Ogan Komering Ilir', 'Kabupaten', '30618', 33),
(314, 'Ogan Komering Ulu', 'Kabupaten', '32112', 33),
(315, 'Ogan Komering Ulu Selatan', 'Kabupaten', '32211', 33),
(316, 'Ogan Komering Ulu Timur', 'Kabupaten', '32312', 33),
(317, 'Pacitan', 'Kabupaten', '63512', 11),
(318, 'Padang', 'Kota', '25112', 32),
(319, 'Padang Lawas', 'Kabupaten', '22763', 34),
(320, 'Padang Lawas Utara', 'Kabupaten', '22753', 34),
(321, 'Padang Panjang', 'Kota', '27122', 32),
(322, 'Padang Pariaman', 'Kabupaten', '25583', 32),
(323, 'Padang Sidempuan', 'Kota', '22727', 34),
(324, 'Pagar Alam', 'Kota', '31512', 33),
(325, 'Pakpak Bharat', 'Kabupaten', '22272', 34),
(326, 'Palangka Raya', 'Kota', '73112', 14),
(327, 'Palembang', 'Kota', '30111', 33),
(328, 'Palopo', 'Kota', '91911', 28),
(329, 'Palu', 'Kota', '94111', 29),
(330, 'Pamekasan', 'Kabupaten', '69319', 11),
(331, 'Pandeglang', 'Kabupaten', '42212', 3),
(332, 'Pangandaran', 'Kabupaten', '46511', 9),
(333, 'Pangkajene Kepulauan', 'Kabupaten', '90611', 28),
(334, 'Pangkal Pinang', 'Kota', '33115', 2),
(335, 'Paniai', 'Kabupaten', '98765', 24),
(336, 'Parepare', 'Kota', '91123', 28),
(337, 'Pariaman', 'Kota', '25511', 32),
(338, 'Parigi Moutong', 'Kabupaten', '94411', 29),
(339, 'Pasaman', 'Kabupaten', '26318', 32),
(340, 'Pasaman Barat', 'Kabupaten', '26511', 32),
(341, 'Paser', 'Kabupaten', '76211', 15),
(342, 'Pasuruan', 'Kabupaten', '67153', 11),
(343, 'Pasuruan', 'Kota', '67118', 11),
(344, 'Pati', 'Kabupaten', '59114', 10),
(345, 'Payakumbuh', 'Kota', '26213', 32),
(346, 'Pegunungan Arfak', 'Kabupaten', '98354', 25),
(347, 'Pegunungan Bintang', 'Kabupaten', '99573', 24),
(348, 'Pekalongan', 'Kabupaten', '51161', 10),
(349, 'Pekalongan', 'Kota', '51122', 10),
(350, 'Pekanbaru', 'Kota', '28112', 26),
(351, 'Pelalawan', 'Kabupaten', '28311', 26),
(352, 'Pemalang', 'Kabupaten', '52319', 10),
(353, 'Pematang Siantar', 'Kota', '21126', 34),
(354, 'Penajam Paser Utara', 'Kabupaten', '76311', 15),
(355, 'Pesawaran', 'Kabupaten', '35312', 18),
(356, 'Pesisir Barat', 'Kabupaten', '35974', 18),
(357, 'Pesisir Selatan', 'Kabupaten', '25611', 32),
(358, 'Pidie', 'Kabupaten', '24116', 21),
(359, 'Pidie Jaya', 'Kabupaten', '24186', 21),
(360, 'Pinrang', 'Kabupaten', '91251', 28),
(361, 'Pohuwato', 'Kabupaten', '96419', 7),
(362, 'Polewali Mandar', 'Kabupaten', '91311', 27),
(363, 'Ponorogo', 'Kabupaten', '63411', 11),
(364, 'Pontianak', 'Kabupaten', '78971', 12),
(365, 'Pontianak', 'Kota', '78112', 12),
(366, 'Poso', 'Kabupaten', '94615', 29),
(367, 'Prabumulih', 'Kota', '31121', 33),
(368, 'Pringsewu', 'Kabupaten', '35719', 18),
(369, 'Probolinggo', 'Kabupaten', '67282', 11),
(370, 'Probolinggo', 'Kota', '67215', 11),
(371, 'Pulang Pisau', 'Kabupaten', '74811', 14),
(372, 'Pulau Morotai', 'Kabupaten', '97771', 20),
(373, 'Puncak', 'Kabupaten', '98981', 24),
(374, 'Puncak Jaya', 'Kabupaten', '98979', 24),
(375, 'Purbalingga', 'Kabupaten', '53312', 10),
(376, 'Purwakarta', 'Kabupaten', '41119', 9),
(377, 'Purworejo', 'Kabupaten', '54111', 10),
(378, 'Raja Ampat', 'Kabupaten', '98489', 25),
(379, 'Rejang Lebong', 'Kabupaten', '39112', 4),
(380, 'Rembang', 'Kabupaten', '59219', 10),
(381, 'Rokan Hilir', 'Kabupaten', '28992', 26),
(382, 'Rokan Hulu', 'Kabupaten', '28511', 26),
(383, 'Rote Ndao', 'Kabupaten', '85982', 23),
(384, 'Sabang', 'Kota', '23512', 21),
(385, 'Sabu Raijua', 'Kabupaten', '85391', 23),
(386, 'Salatiga', 'Kota', '50711', 10),
(387, 'Samarinda', 'Kota', '75133', 15),
(388, 'Sambas', 'Kabupaten', '79453', 12),
(389, 'Samosir', 'Kabupaten', '22392', 34),
(390, 'Sampang', 'Kabupaten', '69219', 11),
(391, 'Sanggau', 'Kabupaten', '78557', 12),
(392, 'Sarmi', 'Kabupaten', '99373', 24),
(393, 'Sarolangun', 'Kabupaten', '37419', 8),
(394, 'Sawah Lunto', 'Kota', '27416', 32),
(395, 'Sekadau', 'Kabupaten', '79583', 12),
(396, 'Selayar (Kepulauan Selayar)', 'Kabupaten', '92812', 28),
(397, 'Seluma', 'Kabupaten', '38811', 4),
(398, 'Semarang', 'Kabupaten', '50511', 10),
(399, 'Semarang', 'Kota', '50135', 10),
(400, 'Seram Bagian Barat', 'Kabupaten', '97561', 19),
(401, 'Seram Bagian Timur', 'Kabupaten', '97581', 19),
(402, 'Serang', 'Kabupaten', '42182', 3),
(403, 'Serang', 'Kota', '42111', 3),
(404, 'Serdang Bedagai', 'Kabupaten', '20915', 34),
(405, 'Seruyan', 'Kabupaten', '74211', 14),
(406, 'Siak', 'Kabupaten', '28623', 26),
(407, 'Sibolga', 'Kota', '22522', 34),
(408, 'Sidenreng Rappang/Rapang', 'Kabupaten', '91613', 28),
(409, 'Sidoarjo', 'Kabupaten', '61219', 11),
(410, 'Sigi', 'Kabupaten', '94364', 29),
(411, 'Sijunjung (Sawah Lunto Sijunjung)', 'Kabupaten', '27511', 32),
(412, 'Sikka', 'Kabupaten', '86121', 23),
(413, 'Simalungun', 'Kabupaten', '21162', 34),
(414, 'Simeulue', 'Kabupaten', '23891', 21),
(415, 'Singkawang', 'Kota', '79117', 12),
(416, 'Sinjai', 'Kabupaten', '92615', 28),
(417, 'Sintang', 'Kabupaten', '78619', 12),
(418, 'Situbondo', 'Kabupaten', '68316', 11),
(419, 'Sleman', 'Kabupaten', '55513', 5),
(420, 'Solok', 'Kabupaten', '27365', 32),
(421, 'Solok', 'Kota', '27315', 32),
(422, 'Solok Selatan', 'Kabupaten', '27779', 32),
(423, 'Soppeng', 'Kabupaten', '90812', 28),
(424, 'Sorong', 'Kabupaten', '98431', 25),
(425, 'Sorong', 'Kota', '98411', 25),
(426, 'Sorong Selatan', 'Kabupaten', '98454', 25),
(427, 'Sragen', 'Kabupaten', '57211', 10),
(428, 'Subang', 'Kabupaten', '41215', 9),
(429, 'Subulussalam', 'Kota', '24882', 21),
(430, 'Sukabumi', 'Kabupaten', '43311', 9),
(431, 'Sukabumi', 'Kota', '43114', 9),
(432, 'Sukamara', 'Kabupaten', '74712', 14),
(433, 'Sukoharjo', 'Kabupaten', '57514', 10),
(434, 'Sumba Barat', 'Kabupaten', '87219', 23),
(435, 'Sumba Barat Daya', 'Kabupaten', '87453', 23),
(436, 'Sumba Tengah', 'Kabupaten', '87358', 23),
(437, 'Sumba Timur', 'Kabupaten', '87112', 23),
(438, 'Sumbawa', 'Kabupaten', '84315', 22),
(439, 'Sumbawa Barat', 'Kabupaten', '84419', 22),
(440, 'Sumedang', 'Kabupaten', '45326', 9),
(441, 'Sumenep', 'Kabupaten', '69413', 11),
(442, 'Sungaipenuh', 'Kota', '37113', 8),
(443, 'Supiori', 'Kabupaten', '98164', 24),
(444, 'Surabaya', 'Kota', '60119', 11),
(445, 'Surakarta (Solo)', 'Kota', '57113', 10),
(446, 'Tabalong', 'Kabupaten', '71513', 13),
(447, 'Tabanan', 'Kabupaten', '82119', 1),
(448, 'Takalar', 'Kabupaten', '92212', 28),
(449, 'Tambrauw', 'Kabupaten', '98475', 25),
(450, 'Tana Tidung', 'Kabupaten', '77611', 16),
(451, 'Tana Toraja', 'Kabupaten', '91819', 28),
(452, 'Tanah Bumbu', 'Kabupaten', '72211', 13),
(453, 'Tanah Datar', 'Kabupaten', '27211', 32),
(454, 'Tanah Laut', 'Kabupaten', '70811', 13),
(455, 'Tangerang', 'Kabupaten', '15914', 3),
(456, 'Tangerang', 'Kota', '15111', 3),
(457, 'Tangerang Selatan', 'Kota', '15332', 3),
(458, 'Tanggamus', 'Kabupaten', '35619', 18),
(459, 'Tanjung Balai', 'Kota', '21321', 34),
(460, 'Tanjung Jabung Barat', 'Kabupaten', '36513', 8),
(461, 'Tanjung Jabung Timur', 'Kabupaten', '36719', 8),
(462, 'Tanjung Pinang', 'Kota', '29111', 17),
(463, 'Tapanuli Selatan', 'Kabupaten', '22742', 34),
(464, 'Tapanuli Tengah', 'Kabupaten', '22611', 34),
(465, 'Tapanuli Utara', 'Kabupaten', '22414', 34),
(466, 'Tapin', 'Kabupaten', '71119', 13),
(467, 'Tarakan', 'Kota', '77114', 16),
(468, 'Tasikmalaya', 'Kabupaten', '46411', 9),
(469, 'Tasikmalaya', 'Kota', '46116', 9),
(470, 'Tebing Tinggi', 'Kota', '20632', 34),
(471, 'Tebo', 'Kabupaten', '37519', 8),
(472, 'Tegal', 'Kabupaten', '52419', 10),
(473, 'Tegal', 'Kota', '52114', 10),
(474, 'Teluk Bintuni', 'Kabupaten', '98551', 25),
(475, 'Teluk Wondama', 'Kabupaten', '98591', 25),
(476, 'Temanggung', 'Kabupaten', '56212', 10),
(477, 'Ternate', 'Kota', '97714', 20),
(478, 'Tidore Kepulauan', 'Kota', '97815', 20),
(479, 'Timor Tengah Selatan', 'Kabupaten', '85562', 23),
(480, 'Timor Tengah Utara', 'Kabupaten', '85612', 23),
(481, 'Toba Samosir', 'Kabupaten', '22316', 34),
(482, 'Tojo Una-Una', 'Kabupaten', '94683', 29),
(483, 'Toli-Toli', 'Kabupaten', '94542', 29),
(484, 'Tolikara', 'Kabupaten', '99411', 24),
(485, 'Tomohon', 'Kota', '95416', 31),
(486, 'Toraja Utara', 'Kabupaten', '91831', 28),
(487, 'Trenggalek', 'Kabupaten', '66312', 11),
(488, 'Tual', 'Kota', '97612', 19),
(489, 'Tuban', 'Kabupaten', '62319', 11),
(490, 'Tulang Bawang', 'Kabupaten', '34613', 18),
(491, 'Tulang Bawang Barat', 'Kabupaten', '34419', 18),
(492, 'Tulungagung', 'Kabupaten', '66212', 11),
(493, 'Wajo', 'Kabupaten', '90911', 28),
(494, 'Wakatobi', 'Kabupaten', '93791', 30),
(495, 'Waropen', 'Kabupaten', '98269', 24),
(496, 'Way Kanan', 'Kabupaten', '34711', 18),
(497, 'Wonogiri', 'Kabupaten', '57619', 10),
(498, 'Wonosobo', 'Kabupaten', '56311', 10),
(499, 'Yahukimo', 'Kabupaten', '99041', 24),
(500, 'Yalimo', 'Kabupaten', '99481', 24),
(501, 'Yogyakarta', 'Kota', '55111', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id_login` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` enum('admin','dosen') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id_login`, `username`, `password`, `role`) VALUES
(3, 'admin@admin.com', '$2y$10$kNsWUooHaf1bcZzaPQMYw.q/T8ezglMnOdam/8w0V9MWeHceJiN/K', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_negara`
--

CREATE TABLE `tbl_negara` (
  `id_negara` int(11) NOT NULL,
  `nama_negara` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_negara`
--

INSERT INTO `tbl_negara` (`id_negara`, `nama_negara`) VALUES
(3, 'Indonesia'),
(4, 'Malaysia'),
(5, 'Singapura'),
(6, 'Thailand'),
(7, 'India'),
(8, 'Vietnam'),
(9, 'Filipina'),
(10, 'Timor Leste');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_provinsi`
--

CREATE TABLE `tbl_provinsi` (
  `id_provinsi` int(11) NOT NULL,
  `nama_provinsi` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_provinsi`
--

INSERT INTO `tbl_provinsi` (`id_provinsi`, `nama_provinsi`) VALUES
(1, 'Bali'),
(2, 'Bangka Belitung'),
(3, 'Banten'),
(4, 'Bengkulu'),
(5, 'DI Yogyakarta'),
(6, 'DKI Jakarta'),
(7, 'Gorontalo'),
(8, 'Jambi'),
(9, 'Jawa Barat'),
(10, 'Jawa Tengah'),
(11, 'Jawa Timur'),
(12, 'Kalimantan Barat'),
(13, 'Kalimantan Selatan'),
(14, 'Kalimantan Tengah'),
(15, 'Kalimantan Timur'),
(16, 'Kalimantan Utara'),
(17, 'Kepulauan Riau'),
(18, 'Lampung'),
(19, 'Maluku'),
(20, 'Maluku Utara'),
(21, 'Nanggroe Aceh Darussalam (NAD)'),
(22, 'Nusa Tenggara Barat (NTB)'),
(23, 'Nusa Tenggara Timur (NTT)'),
(24, 'Papua'),
(25, 'Papua Barat'),
(26, 'Riau'),
(27, 'Sulawesi Barat'),
(28, 'Sulawesi Selatan'),
(29, 'Sulawesi Tengah'),
(30, 'Sulawesi Tenggara'),
(31, 'Sulawesi Utara'),
(32, 'Sumatera Barat'),
(33, 'Sumatera Selatan'),
(34, 'Sumatera Utara');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subjenis`
--

CREATE TABLE `tbl_subjenis` (
  `id_subjenis` int(11) NOT NULL,
  `nama_subjenis` varchar(100) NOT NULL,
  `id_jenis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_subjenis`
--

INSERT INTO `tbl_subjenis` (`id_subjenis`, `nama_subjenis`, `id_jenis`) VALUES
(5, 'Buku', 1),
(6, 'Komik', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `email_user` varchar(75) NOT NULL,
  `password` varchar(100) NOT NULL,
  `telepon_user` varchar(14) NOT NULL,
  `kewarganegaraan` varchar(70) NOT NULL DEFAULT 'Indonesia',
  `alamat_user` text NOT NULL,
  `kota` int(11) NOT NULL,
  `negara` varchar(70) NOT NULL DEFAULT 'Indonesia',
  `kode_pos` varchar(12) NOT NULL,
  `role` enum('admin','user') NOT NULL,
  `id_author` varchar(16) DEFAULT '-',
  `foto_user` varchar(25) NOT NULL DEFAULT 'user.png',
  `scan_ktp` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `email_user`, `password`, `telepon_user`, `kewarganegaraan`, `alamat_user`, `kota`, `negara`, `kode_pos`, `role`, `id_author`, `foto_user`, `scan_ktp`) VALUES
(229, 'Administrator', 'admin@admin.com', '$2y$10$.NfAGMDexg/75tBfT0wFn.NZQeqIFgu8O8nnmpuB.DehplAx9QWE.', '085214789632', 'Indonesia', 'Jln. Merdeka Utara', 211, 'Indonesia', '45511', 'admin', '-', 'user.png', NULL),
(231, 'Dosen', 'dosen@dosen.com', '$2y$10$2VFeup8b9MmZpD8KxzwTHumHjqyyPm.dTuBiMo.Np2DWOu/gnAG42', '085214789632', 'Indonesia', 'Jln Sudirman', 211, 'Indonesia', '45511', 'user', '-', 'user.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_files`
--

CREATE TABLE `tbl_user_files` (
  `id_user_files` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `file_ktp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_jenis`
--
ALTER TABLE `tbl_jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `tbl_jenis_permohonan`
--
ALTER TABLE `tbl_jenis_permohonan`
  ADD PRIMARY KEY (`id_jenis_permohonan`);

--
-- Indexes for table `tbl_kota`
--
ALTER TABLE `tbl_kota`
  ADD PRIMARY KEY (`id_kota`),
  ADD KEY `ProvinceID` (`id_provinsi`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id_login`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `tbl_negara`
--
ALTER TABLE `tbl_negara`
  ADD PRIMARY KEY (`id_negara`);

--
-- Indexes for table `tbl_provinsi`
--
ALTER TABLE `tbl_provinsi`
  ADD PRIMARY KEY (`id_provinsi`);

--
-- Indexes for table `tbl_subjenis`
--
ALTER TABLE `tbl_subjenis`
  ADD PRIMARY KEY (`id_subjenis`),
  ADD KEY `id_jenis` (`id_jenis`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email_user` (`email_user`),
  ADD KEY `kota` (`kota`);

--
-- Indexes for table `tbl_user_files`
--
ALTER TABLE `tbl_user_files`
  ADD PRIMARY KEY (`id_user_files`),
  ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_jenis`
--
ALTER TABLE `tbl_jenis`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_jenis_permohonan`
--
ALTER TABLE `tbl_jenis_permohonan`
  MODIFY `id_jenis_permohonan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_kota`
--
ALTER TABLE `tbl_kota`
  MODIFY `id_kota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=505;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_negara`
--
ALTER TABLE `tbl_negara`
  MODIFY `id_negara` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_provinsi`
--
ALTER TABLE `tbl_provinsi`
  MODIFY `id_provinsi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_subjenis`
--
ALTER TABLE `tbl_subjenis`
  MODIFY `id_subjenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `tbl_user_files`
--
ALTER TABLE `tbl_user_files`
  MODIFY `id_user_files` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_kota`
--
ALTER TABLE `tbl_kota`
  ADD CONSTRAINT `tbl_kota_ibfk_1` FOREIGN KEY (`id_provinsi`) REFERENCES `tbl_provinsi` (`id_provinsi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD CONSTRAINT `tbl_login_ibfk_1` FOREIGN KEY (`username`) REFERENCES `tbl_user` (`email_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_subjenis`
--
ALTER TABLE `tbl_subjenis`
  ADD CONSTRAINT `tbl_subjenis_ibfk_1` FOREIGN KEY (`id_jenis`) REFERENCES `tbl_jenis` (`id_jenis`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD CONSTRAINT `tbl_user_ibfk_2` FOREIGN KEY (`kota`) REFERENCES `tbl_kota` (`id_kota`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_user_files`
--
ALTER TABLE `tbl_user_files`
  ADD CONSTRAINT `tbl_user_files_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;