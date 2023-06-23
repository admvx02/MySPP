-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2023 at 08:14 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myspp2`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_kategori` int(11) NOT NULL,
  `potongan` int(11) DEFAULT NULL,
  `jenis_kategori` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_kategori`, `potongan`, `jenis_kategori`) VALUES
(1, 0, 'Umum'),
(2, 10000, 'Perwira'),
(3, 15000, 'Bintara'),
(4, 20000, 'Tamtama'),
(5, 25000, 'E'),
(6, 30000, 'F'),
(7, 35000, 'G'),
(8, 40000, 'H'),
(9, 45000, 'I'),
(10, 50000, 'J'),
(11, 55009, 'K');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(20) DEFAULT NULL,
  `id_tingkatan` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id_kelas`, `nama_kelas`, `id_tingkatan`) VALUES
(1, '1A', 1),
(2, '1B', 1),
(3, '2A', 2),
(4, '2B', 2),
(5, '3A', 3),
(6, '3B', 3),
(7, '4A', 4),
(8, '4B', 4),
(9, '5A', 5),
(10, '5B', 5),
(11, '6A', 6),
(12, '6B', 6);

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id_tingkatan` int(11) NOT NULL,
  `nominal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id_tingkatan`, `nominal`) VALUES
(1, 200000),
(2, 225000),
(3, 250000),
(4, 275000),
(5, 300000),
(6, 325000);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id_transaksi` int(11) NOT NULL,
  `id_petugas` int(11) DEFAULT NULL,
  `nis` int(5) DEFAULT NULL,
  `tanggal_bayar` date DEFAULT NULL,
  `bulan` varchar(20) DEFAULT NULL,
  `tahun` varchar(20) DEFAULT NULL,
  `jumlah_bayar` int(11) DEFAULT NULL,
  `metode_pembayaran` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id_transaksi`, `id_petugas`, `nis`, `tanggal_bayar`, `bulan`, `tahun`, `jumlah_bayar`, `metode_pembayaran`) VALUES
(1, 1, 3314, '2023-03-04', 'Maret', '2023', 200000, 'Tunai'),
(2, 1, 3315, '2023-03-04', 'Maret', '2023', 200000, 'Tunai'),
(3, 1, 3316, '2023-03-04', 'Maret', '2023', 200000, 'Tunai'),
(4, 1, 3317, '2023-03-04', 'Maret', '2023', 190000, 'Tunai'),
(5, 1, 3318, '2023-03-04', 'Maret', '2023', 190000, 'Tunai'),
(6, 2, 3086, '2023-04-06', 'April', '2023', 210000, NULL),
(7, 1, 3086, '2023-04-06', 'Mei', '2023', 270000, NULL),
(8, 1, 3086, '2023-04-06', 'Juni', '2023', 270000, NULL),
(11, 1, 3086, '2023-04-06', 'Juli', '2023', 270000, NULL),
(12, 1, 3086, '2023-04-06', 'Agustus', '2023', 270000, NULL),
(15, 1, 3172, '2023-04-08', 'April', '2023', 290000, NULL),
(17, 1, 3086, '2023-09-30', 'September', '2023', 270000, NULL),
(18, 1, 3093, '2023-12-30', 'Desember', '2023', 285000, NULL),
(19, 1, 3086, '2023-04-10', 'Desember', '2023', 270000, NULL),
(20, 1, 3086, '2023-04-10', 'November', '2023', 270000, NULL),
(21, 4, 3332, '2023-05-16', 'Mei', '2023', 165000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `nis` int(5) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nisn` int(15) DEFAULT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `angkatan` varchar(4) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `nama_wali` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`nis`, `nama`, `nisn`, `id_kelas`, `angkatan`, `id_kategori`, `jenis_kelamin`, `alamat`, `agama`, `nama_wali`) VALUES
(3078, 'Alfaykah Ruby Zerlina', 345267908, 11, '2017', 1, 'Perempuan', 'Waru', 'Islam', 'Sujatno'),
(3079, 'Alvina Tashya Putri', 234897654, 11, '2017', 7, 'Perempuan', 'Krian', 'Islam', 'Joko'),
(3080, 'Alvino Gionino Pratama', 546980975, 11, '2017', 4, 'Laki-Laki', 'Sidoarjo', 'Islam', 'jatmiko'),
(3081, 'Amabel Nabila Zahra', 567489009, 11, '2017', 8, 'Perempuan', 'Sedati', 'Islam', 'Sugeng'),
(3082, 'Argya Frederico Dzulfiqar', 234768909, 11, '2017', 10, 'Laki-Laki', 'Krian', 'Kristen', 'Abi'),
(3083, 'El Nendy Izza Eziza', 456734567, 11, '2017', 3, 'Laki-Laki', 'Taman', 'Kristen', 'Abhicandra'),
(3085, 'Farandio Arsamara Rabbani', 567453111, 11, '2017', 10, 'Laki-Laki', 'Porong', 'Islam', 'Abhimata'),
(3086, 'Felisha Putri Al Faqih', 356455344, 11, '2017', 11, 'Perempuan', 'Waru', 'Islam', 'Abimanyu'),
(3089, 'Kenenza Maida Nathania', 567789456, 11, '2017', 2, 'Perempuan', 'Wonoayu', 'Islam', 'Abiyoga'),
(3090, 'Keven Go Chen Sin', 263748596, 11, '2017', 1, 'Laki-Laki', 'Sedati', 'Konghucu', 'Buntoro Go Chen Si'),
(3091, 'Kevin Timothy Bukit', 768594039, 11, '2017', 2, 'Laki-Laki', 'Sukodono', 'Islam', 'Byantara '),
(3092, 'Keydo Zaim Abdillah Azzam', 102938475, 11, '2017', 4, 'Laki-Laki', 'Tulangan', 'Islam', 'Bryatta'),
(3093, 'Leonardus Andika Wahyu Pratama', 168632627, 11, '2017', 8, 'Laki-Laki', 'Sidoarjo', 'Kristen', 'Nur Atsani'),
(3094, 'Michael Albet Lintang Timur', 345566789, 11, '2017', 4, 'Laki-Laki', 'Sidoarjo', 'Islam', 'Ridhoani'),
(3095, 'Muhammad Rifqi Aquilani', 345678987, 11, '2017', 1, 'Laki-Laki', 'Sukodono', 'Islam', 'Mardiyah'),
(3096, 'Naomi Ghanys Atmaja', 564789657, 11, '2017', 1, 'Perempuan', 'Sedati', 'Kristen', 'Suwarsiyem'),
(3097, 'Ni Kadek Gita Riyanti', 211178675, 11, '2017', 1, 'Laki-Laki', 'Sidoarjo', 'Budha', 'Ni Kasminah'),
(3098, 'Syawmada Alfahir', 546789678, 11, '2017', 1, 'Laki-Laki', 'Waru', 'Islam', 'Siti Fatimah'),
(3099, 'Waldan Pramudita Arya Putra', 564786980, 11, '2017', 1, 'Laki-Laki', 'Tanggulangin', 'Islam', 'Suratmi'),
(3100, 'Milka Salsabila', 467897987, 11, '2017', 3, 'Perempuan', 'Wonoayu', 'Islam', 'Sri Purwani Handayani'),
(3101, 'Alif Kenofa Aghastya', 678009890, 12, '2017', 1, 'Laki-Laki', 'Sidoarjo', 'Islam', 'Karsinem'),
(3102, 'Ahmad Ramadhani Rusdianto', 321786898, 12, '2017', 1, 'Laki-Laki', 'Porong', 'Islam', 'Sri Utami'),
(3103, 'Benasywa Indira Farzana', 345678576, 12, '2017', 4, 'Laki-Laki', 'Buduran', 'Islam', 'Nunung Listiani'),
(3104, 'Bintang Azmi Saputra', 678987867, 12, '2017', 10, 'Laki-Laki', 'Waru', 'Islam', 'Wiji Lestari'),
(3105, 'Bisma Rajendra Mahawira', 111897867, 12, '2017', 1, 'Laki-Laki', 'Sidoarjo', 'Islam', 'Darmatasyah'),
(3107, 'Farel Kevin Kurniawan', 567468976, 12, '2017', 1, 'Laki-Laki', 'Sidoarjo', 'Islam', 'Nurul Mayanti'),
(3108, 'Favian Abrar Firmansyah', 455362087, 12, '2017', 11, 'Laki-Laki', 'Krian', 'Islam', 'Rusiah'),
(3109, 'Febiola Amanda Pradina', 657980098, 12, '2017', 1, 'Perempuan', 'Waru', 'Islam', 'Siti Sundari'),
(3110, 'Herta Berlin Putra Dante', 110980763, 12, '2017', 1, 'Laki-Laki', 'Sidoarjo', 'Islam', 'Sutinah'),
(3111, 'Kirana Larasati Susantyo', 311564432, 12, '2017', 5, 'Perempuan', 'Prambon', 'Islam', 'Kustiyah'),
(3112, 'Muhammad Adam Ardianzah', 678590944, 12, '2017', 1, 'Laki-Laki', 'Buduran', 'Islam', 'Rumiyatun'),
(3113, 'Moch Fahri Khuzaini', 129876456, 12, '2017', 9, 'Laki-Laki', 'Sidoarjo', 'Islam', 'Sumiarti'),
(3114, 'Muhammad Zirkind Mulyowanto', 455678987, 12, '2017', 6, 'Laki-Laki', 'Buduran', 'Islam', 'Sri Swarningsih'),
(3115, 'Muhammad Wing Adipradana Pamungkas', 328898009, 12, '2017', 2, 'Laki-Laki', 'Gedangan', 'Islam', 'Pawit Sartini'),
(3116, 'Meitha Dwi Ariani', 566786884, 12, '2017', 1, 'Perempuan', 'Krian', 'Islam', 'Supiah'),
(3117, 'Musleha Lailatul Husna', 387909788, 12, '2017', 1, 'Perempuan', 'Gedangan', 'Islam', 'Agustin Rahayu'),
(3118, 'Oktandra Adi Wicaksono', 544678786, 12, '2017', 4, 'Laki-Laki', 'Buduran', 'Islam', 'Maria'),
(3119, 'Oktavian Dwi Putra Suwanto', 221455678, 12, '2017', 8, 'Laki-Laki', 'Waru', 'Islam', 'Atik'),
(3120, 'Rizqulloh Harfan', 478009654, 12, '2017', 1, 'Laki-Laki', 'Krian', 'Islam', 'Pariyem'),
(3121, 'Shava Anugrah Nanda Santoso', 122278564, 12, '2017', 2, 'Perempuan', 'Sedati', 'Islam', 'Mundar'),
(3122, 'Aficha Damar Shafira', 345888767, 9, '2018', 1, 'Laki-Laki', 'Sukodono', 'Islam', 'Lasmiatun'),
(3123, 'Aulia Saraswati', 342256788, 9, '2018', 2, 'Perempuan', 'Sukodono', 'Islam', 'Hindun'),
(3124, 'Aurelia Jasmine Safitri', 342678890, 9, '2018', 5, 'Perempuan', 'Wonoayu', 'Islam', 'Sri Winarni'),
(3125, 'Carissa Anastasya Ardhiani', 565678986, 9, '2018', 1, 'Perempuan', 'Gedangan', 'Islam', 'Sati Ayu'),
(3127, 'Dyah Herawati', 223468554, 9, '2018', 11, 'Perempuan', 'Sidoarjo', 'Islam', 'Siti Nur Janah'),
(3128, 'Gavriel Jovianca Lambe Patayang', 256889765, 9, '2018', 1, 'Laki-Laki', 'Porong', 'Kristen', 'Tatik Dwi Purwanti'),
(3129, 'Hristova Febrian Chori Al Amru', 231133456, 9, '2018', 7, 'Laki-Laki', 'Sidoarjo', 'Islam', 'Suharsih'),
(3130, 'Jorellyn Olivea Hartono', 677567876, 9, '2018', 1, 'Perempuan', 'Sedati', 'Kristen', 'Ningsih Gabriela'),
(3131, 'Layla Hamidah', 324877887, 9, '2018', 5, 'Perempuan', 'Gedangan', 'Islam', 'Karsiyah'),
(3134, 'Lintang Nayla Iftinaan Ramadhani', 231167889, 9, '2018', 1, 'Perempuan', 'Buduran', 'Islam', 'Endrawati'),
(3136, 'Michaela Cantika Ardianta', 453678980, 9, '2018', 1, 'Perempuan', 'Sidoarjo', 'Islam', 'Karsiyem'),
(3137, 'Misael Bagas Kevineu', 324547378, 9, '2018', 9, 'Laki-Laki', 'Sidoarjo', 'Islam', 'Asih'),
(3138, 'Monica Modesty Putri', 122567559, 9, '2018', 5, 'Perempuan', 'Waru', 'Islam', 'Umi'),
(3139, 'Muhammad Memor Dimas Wonda', 445678977, 9, '2018', 1, 'Laki-Laki', 'Krian', 'Islam', 'Surani'),
(3140, 'Nabila Anaia Putri Bunga', 665478900, 9, '2018', 1, 'Perempuan', 'Wonoayu', 'Islam', 'Mukini'),
(3141, 'Noah Jermy Manggali', 546789873, 9, '2018', 1, 'Laki-Laki', 'Gedangan', 'Islam', 'Sri Yuniawati'),
(3142, 'Raden Endra Daniswara Danu Adyatma Wijoyo', 433288908, 9, '2018', 3, 'Laki-Laki', 'Gedangan', 'Hindu', 'Nyai Rasminah'),
(3143, 'Sakura Ullufi Kurnia Sunday', 455675889, 9, '2018', 6, 'Perempuan', 'Buduran', 'Islam', 'Marsiyem'),
(3144, 'Syifa Qeila Nafeeza', 122098765, 9, '2018', 1, 'Perempuan', 'Buduran', 'Islam', 'Ida'),
(3145, 'Aan Manik Surya Yusuf Abdullah', 332887996, 9, '2018', 1, 'Laki-Laki', 'Sidoarjo', 'Islam', 'Eni Widayanti'),
(3147, 'Ahmad Nizam Putra Dewanto', 323556889, 9, '2018', 1, 'Laki-Laki', 'Porong', 'Islam', 'Suarni'),
(3148, 'Aqueene Fitrah Naufalyn Prameswari', 122980667, 10, '2018', 10, 'Perempuan', 'Sedati', 'Islam', 'Nur Handayani'),
(3149, 'Azzamy Syauqa Anamel', 345676767, 10, '2018', 1, 'Laki-Laki', 'Sidoarjo', 'Islam', 'Srikatun'),
(3150, 'Bima Anggara Maheswara', 788899072, 10, '2018', 1, 'Laki-Laki', 'Krembung', 'Islam', 'Darnawati'),
(3151, 'Calista Putri Aurelya', 675543334, 10, '2018', 1, 'Perempuan', 'Sidoarjo', 'Islam', 'Asmi'),
(3152, 'Dhany Fayyadhi Wiharto', 344675889, 10, '2018', 4, 'Laki-Laki', 'Gedangan', 'Islam', 'Ulin Sudrajat, S.Ag'),
(3153, 'Diestiana Anugrahing Mukti', 455873876, 10, '2018', 11, 'Perempuan', 'Waru', 'Islam', 'Aisyah'),
(3154, 'Febrian Faadhil Pradana', 675967868, 10, '2018', 1, 'Laki-Laki', 'Sedati', 'Islam', 'Sri Mulyano'),
(3155, 'Firyal Esti Alayya', 121190008, 10, '2018', 1, 'Laki-Laki', 'Candi', 'Islam', 'Purijal'),
(3156, 'Hafidz Adhi Wira Yudha', 444847847, 10, '2018', 8, 'Laki-Laki', 'Candi', 'Islam', 'Marsini'),
(3158, 'Kinaran Adzania Marseal', 377866952, 10, '2018', 1, 'Perempuan', 'Candi', 'Islam', 'Sulaswati'),
(3159, 'Muhammad Hildan Alzevano', 822917986, 10, '2018', 8, 'Laki-Laki', 'Candi', 'Islam', 'Mariya Rusmiyati'),
(3160, 'Muhammad Irsyad Anugerah Susanto', 221894550, 10, '2018', 9, 'Laki-Laki', 'Sidoarjo', 'Islam', 'Artiyah'),
(3162, 'Raden Arjuna Rizky Acocio Putra Wijaya', 675898391, 10, '2018', 8, 'Laki-Laki', 'Sedati', 'Islam', 'Marhan Nanik'),
(3163, 'Zahfina Chikita Putri Gunawan', 566648873, 10, '2018', 3, 'Perempuan', 'Taman', 'Islam', 'Rukayah'),
(3164, 'Archellia Arinda Siswoyo', 222186868, 10, '2018', 1, 'Perempuan', 'Sepanjang', 'Islam', 'Suryani'),
(3165, 'Fredo Nugraha', 676745867, 10, '2018', 1, 'Laki-Laki', 'Candi', 'Islam', 'Inem Sari'),
(3166, 'Kayla Putri Azzahra', 219897514, 10, '2018', 6, 'Perempuan', 'Sidoarjo', 'Islam', 'Titik Sri Subakti'),
(3169, 'Rheinata Abira Wibowo', 465765864, 10, '2018', 11, 'Perempuan', 'Waru', 'Islam', 'Sulatin'),
(3170, 'Tasya Ayu Andhini', 366289777, 10, '2018', 10, 'Perempuan', 'Porong', 'Islam', 'Endang Handayani'),
(3171, 'Wima Arsya Rahman', 547547467, 10, '2018', 10, 'Laki-Laki', 'Candi', 'Islam', 'Suharni'),
(3172, 'Zahwa Aulia Sabrina', 455645778, 10, '2018', 2, 'Perempuan', 'Sidoarjo', 'Islam', 'Setiawati'),
(3174, 'Dewi Rahmawati', 221786160, 10, '2018', 1, 'Perempuan', 'Waru', 'Islam', 'Kusrini'),
(3176, 'Mohamad Hilbram Albariq', 632665768, 10, '2018', 1, 'Laki-Laki', 'Gedangan', 'Islam', 'Sunarti'),
(3180, 'Kenzo Danish Athallah', 865566864, 7, '2019', 1, 'Laki-Laki', 'Buduran', 'Islam', 'Marhamah'),
(3181, 'Aqila Bilqis Azahra', 445278825, 7, '2019', 7, 'Perempuan', 'Sidoarjo', 'Islam', 'Romadoniyah'),
(3182, 'Aurelia Elmira Satriyo Aji', 228806165, 7, '2019', 2, 'Perempuan', 'Candi', 'Islam', 'Jumirah'),
(3183, 'Cendana Ayu Mutiara Sakti', 667669878, 7, '2019', 8, 'Perempuan', 'Candi', 'Islam', 'Saparian'),
(3184, 'Cheline Abiona Fasa', 455876298, 7, '2019', 3, 'Perempuan', 'Sedati', 'Islam', 'Darmini'),
(3185, 'Dikta Ahmad Vizaki', 667457747, 7, '2019', 1, 'Laki-Laki', 'Porong', 'Islam', 'Indra Mawarti'),
(3186, 'Daffy Juan Adinata', 566836867, 7, '2019', 10, 'Laki-Laki', 'Krembung', 'Islam', 'Ruliyah'),
(3187, 'Haniel Harjasa Admarin', 338992090, 7, '2019', 2, 'Laki-Laki', 'Candi', 'Islam', 'Rumiyatun'),
(3188, 'Janitra Mukti Al Khairi', 118220111, 7, '2019', 1, 'Laki-Laki', 'Wonoayu', 'Islam', 'Rohmah'),
(3189, 'Karania Gantari Sugiharto', 455678982, 7, '2019', 1, 'Perempuan', 'Krian', 'Islam', 'Mariyatun'),
(3190, 'Khairunnisa Danish Athallah', 222219876, 7, '2019', 7, 'Perempuan', 'Candi', 'Islam', 'Siti Komsatun'),
(3191, 'Maheswari Kirana Ardhani', 372987982, 7, '2019', 4, 'Perempuan', 'Candi', 'Islam', 'Shabibah'),
(3192, 'Michael Kurniawan Santoso', 326897338, 7, '2019', 8, 'Laki-Laki', 'Sidoarjo', 'Kristen', 'Maria Sumarsih'),
(3193, 'Mikhael Bayuseto Hadi', 667926729, 7, '2019', 1, 'Laki-Laki', 'Balengbendo', 'Islam', 'Endang Sholikah'),
(3194, 'Muhammad Aulia Raafi', 193746177, 7, '2019', 9, 'Laki-Laki', 'Candi', 'Islam', 'Supri Nurwasih'),
(3196, 'Muhammad Jose Bachtiar', 669674445, 7, '2019', 7, 'Laki-Laki', 'Porong', 'Islam', 'Trimah'),
(3197, 'Naufal Dhafa Ashnanda', 265625766, 7, '2019', 1, 'Laki-Laki', 'Waru', 'Islam', 'Sainten'),
(3198, 'Oswaldo Jeremy Manurung', 455757799, 7, '2019', 6, 'Laki-Laki', 'Papua', 'Kristen', 'Hatmini'),
(3199, 'Vincent Raya Eurelio Wirawan', 137676887, 7, '2019', 1, 'Laki-Laki', 'Candi', 'Kristen', 'Setiawati'),
(3201, 'Agil Putra Ar Rayyan', 127617868, 8, '2019', 3, 'Laki-Laki', 'Gedangan', 'Islam', 'Sari Ningrum'),
(3202, 'Ahmad Akhdan Yazid Nur', 578266878, 8, '2019', 1, 'Laki-Laki', 'Sedati', 'Islam', 'Mariini'),
(3203, 'Aisyah Bening Ajeng Ekshabillah', 28892797, 8, '2019', 1, 'Perempuan', 'Candi', 'Islam', 'Suparmi'),
(3204, 'Aqillah Naurah Azzahra', 216379167, 8, '2019', 8, 'Perempuan', 'Buduran', 'Islam', 'Sri Mulyani'),
(3205, 'Asyraf Dhiafakri Aldiano', 789686468, 8, '2019', 11, 'Laki-Laki', 'Porong', 'Islam', 'Sri Murtianti'),
(3206, 'Aurellita Syahira Anurda', 267637669, 8, '2019', 9, 'Perempuan', 'Candi', 'Islam', 'Kustanti'),
(3207, 'Diwangga Jayawardana', 122772297, 8, '2019', 7, 'Laki-Laki', 'Sidoarjo', 'Islam', 'Monah'),
(3208, 'Fadillah Adi Saputro', 578689799, 8, '2019', 1, 'Laki-Laki', 'Krembung', 'Islam', 'Sumiati'),
(3209, 'Harun Moammar Fairuz', 656587687, 8, '2019', 1, 'Laki-Laki', 'Waru', 'Islam', 'Sucianti'),
(3210, 'I Am Deandra Athaya Putra Swanjaya', 142534668, 8, '2019', 1, 'Laki-Laki', 'Inggris', 'Kristen', 'Josepch Clint'),
(3211, 'Mochamad Alam Gani Syaputra', 362536578, 8, '2019', 7, 'Laki-Laki', 'Sedati', 'Islam', 'Indra Mawarti'),
(3212, 'Mochammad Hanavy Ilyasa Syaifudin', 222765867, 8, '2019', 3, 'Laki-Laki', 'Candi', 'Islam', 'Jumiyatun'),
(3213, 'Muhammad Mirza Amsyar', 372642798, 8, '2019', 4, 'Laki-Laki', 'Candi', 'Islam', 'Karmini'),
(3214, 'Nabila Khanza Nur Afifah', 621747789, 8, '2019', 1, 'Perempuan', 'Sidoarjo', 'Islam', 'Jumiyatun'),
(3215, 'Nafisa Dwi Tunjung Sari', 658587666, 8, '2019', 8, 'Perempuan', 'Gedangan', 'Islam', 'Karmini'),
(3217, 'Navytha Dwie Putri Negoro', 565674657, 8, '2019', 9, 'Perempuan', 'Candi', 'Islam', 'Murniati'),
(3218, 'Satria Rizky Ramadhan', 455578979, 8, '2019', 1, 'Laki-Laki', 'Buduran', 'Islam', 'Tri Minarsih'),
(3219, 'Yudhistira Aprilleo Rachmadi', 578587676, 8, '2019', 8, 'Laki-Laki', 'Candi', 'Hindu', 'Nurkhasanah'),
(3222, 'Adelle Nathania Prastiyo', 423567688, 5, '2020', 6, 'Perempuan', 'Candi', 'Kristen', 'Siti Komiyatun'),
(3223, 'Aira Putri Ramadhani', 465677688, 5, '2020', 1, 'Perempuan', 'Gedangan', 'Islam', 'Umiyati'),
(3224, 'Aqila Zhafirah Putri', 365476878, 5, '2020', 1, 'Perempuan', 'Waru', 'Islam', 'Sri Winarni'),
(3225, 'Azyva Mikayla Putri', 245341757, 5, '2020', 2, 'Perempuan', 'Sedati', 'Islam', 'Supri'),
(3226, 'Dyandra Anindita Assyauqie Ruila', 243654564, 5, '2020', 8, 'Perempuan', 'Sidoarjo', 'Islam', 'Ida Zhulaika'),
(3227, 'Edo Jerico', 243685128, 5, '2020', 1, 'Laki-Laki', 'Candi', 'Islam', 'Sulastri'),
(3228, 'Hashif Vian Al Khalifi', 263561257, 5, '2020', 9, 'Laki-Laki', 'Buduran', 'Islam', 'Tatik Umiyati'),
(3229, 'I Dewa Gede Sindhu Pramantya', 657867868, 5, '2020', 11, 'Laki-Laki', 'Krembung', 'Hindu', 'I Anik Suryani'),
(3230, 'Karina Maulani Susantyo', 465654779, 5, '2020', 7, 'Perempuan', 'Candi', 'Islam', 'Tukini'),
(3231, 'M. Nabhan Randika Mahesa', 742082037, 5, '2020', 4, 'Laki-Laki', 'Porong', 'Islam', 'Mastiyah'),
(3232, 'Mochamad Raihaan Ariyanto', 356264568, 5, '2020', 1, 'Laki-Laki', 'Candi', 'Islam', 'Poniyem'),
(3233, 'Monica Ecclesia Precious Pasaribu', 364765535, 5, '2020', 8, 'Perempuan', 'Sidoarjo', 'Kristen', 'Endang Sari'),
(3234, 'Muhammad Zakharia Suci Soeharto', 745079674, 5, '2020', 3, 'Laki-Laki', 'Candi', 'Islam', 'Sukses Winarti'),
(3235, 'Nadine Naufallyn Dzakiyyah Putri', 455767699, 5, '2020', 1, 'Perempuan', 'Gedangan', 'Islam', 'Retno Kentarti'),
(3236, 'Priscilla Anindya Pratama', 352587889, 5, '2020', 10, 'Perempuan', 'Waru', 'Islam', 'Murdiyati'),
(3237, 'Sevi Marcya Putri Maharani', 524869908, 5, '2020', 1, 'Perempuan', 'Taman', 'Islam', 'Nuria Purba'),
(3238, 'Achmad Alkhalifi Dzikri', 546798729, 5, '2020', 6, 'Laki-Laki', 'Sidoarjo', 'Islam', 'Warsini'),
(3239, 'Adnindi Elena Azzalfa', 907066565, 5, '2020', 1, 'Perempuan', 'Wage', 'Islam', 'Yeni Novitasari'),
(3241, 'Alaric Nararya Abrizan Priawan', 786098098, 5, '2020', 2, 'Laki-Laki', 'Buduran', 'Islam', 'Piliani'),
(3242, 'Bintang Abdi Negoro', 656858879, 5, '2020', 5, 'Laki-Laki', 'Sedati', 'Islam', 'Jumiah'),
(3243, 'Brio Bramasta Putra Wahyudi', 436296878, 3, '2020', 1, 'Laki-Laki', 'Candi', 'Islam', 'Susianah'),
(3244, 'Florean Salsabila Kurniawan', 423576782, 6, '2020', 1, 'Perempuan', 'Candi', 'Islam', 'Suwari'),
(3245, 'Inara Rafanda Ayuningtias', 846328768, 6, '2020', 1, 'Perempuan', 'Candi', 'Islam', 'Wahyu Mastutik'),
(3247, 'Nabila Raisya Putri Jayadi', 565678677, 6, '2020', 5, 'Perempuan', 'Gedangan', 'Islam', 'Suyatini'),
(3248, 'Ndaru Bima Laksana', 657689899, 6, '2020', 2, 'Laki-Laki', 'Sidoarjo', 'Islam', 'Suryamtini'),
(3249, 'Raffanaya Alfareezy Zidnee', 587676878, 6, '2020', 1, 'Laki-Laki', 'Sidoarjo', 'Islam', 'Kamariyah'),
(3250, 'Syailendra Nabeel Prasetya', 566278799, 6, '2020', 7, 'Perempuan', 'Candi', 'Islam', 'Ngatirah'),
(3252, 'Yudhistira Aufa Rohman', 889828289, 6, '2020', 4, 'Laki-Laki', 'Porong', 'Islam', 'Riniwati'),
(3253, 'Zahra Andara Agustin', 165612578, 6, '2020', 1, 'Perempuan', 'Buduran', 'Islam', 'Suhartini'),
(3254, 'Siva Agustina', 376769909, 6, '2020', 1, 'Perempuan', 'Candi', 'Islam', 'Sujilah'),
(3255, 'Afika Dara Fariska', 763878099, 6, '2020', 6, 'Perempuan', 'Candi', 'Islam', 'Siti Farokah'),
(3256, 'Achmad Bayu Maulana', 425863673, 6, '2020', 1, 'Laki-Laki', 'Candi', 'Islam', 'Sur Yanti'),
(3257, 'Mochamad Ade', 432656767, 6, '2020', 5, 'Laki-Laki', 'Sidoarjo', 'Islam', 'Sulastri'),
(3263, 'Abednego Imanuela Widodo', 467267687, 6, '2020', 1, 'Laki-Laki', 'Sidoarjo', 'Kristen', 'Sri Wahyuningsih'),
(3264, 'Rakhmad Anugerah Pujimulyo', 356475888, 6, '2020', 8, 'Laki-Laki', 'Candi', 'Islam', 'Mastiah'),
(3265, 'Raditya Ardi Putra Bagaskara', 235865889, 6, '2020', 3, 'Laki-Laki', 'Buduran', 'Islam', 'Sri Lestari'),
(3266, 'Nur Karomah Maulidiyah', 577268187, 6, '2020', 1, 'Perempuan', 'Candi', 'Islam', 'Emi Widayanti'),
(3267, 'Zaakirah Azri Kurniawan', 242656768, 6, '2020', 8, 'Perempuan', 'Krian', 'Islam', 'Siti Saidah'),
(3268, 'Muhammad Rifqi', 347686287, 6, '2020', 5, 'Laki-Laki', 'Wonoayu', 'Islam', 'Suwini'),
(3270, 'Baby Garneta Nastassia Estelle', 347286293, 3, '2021', 1, 'Perempuan', 'Sidoarjo', 'Kristen', 'Yuliani Michael'),
(3271, 'Bryan Alexander William Benyamin', 785876768, 3, '2021', 7, 'Laki-Laki', 'Sidoarjo', 'Kristen', 'Rosida'),
(3272, 'Chalfin Al Hidayat', 657876545, 3, '2021', 9, 'Laki-Laki', 'Candi', 'Islam', 'Ngatmi'),
(3273, 'Cheryl Annasya Putri Setiawan', 325465787, 3, '2021', 3, 'Perempuan', 'Waru', 'Islam', 'Rumiyatun'),
(3274, 'Christiant Gilbert Moses Lemuel', 732746899, 3, '2021', 6, 'Laki-Laki', 'Sedati', 'Kristen', 'May Nuriyani'),
(3275, 'Cristian Andriansyah', 354576766, 3, '2021', 2, 'Laki-Laki', 'Candi', 'Kristen', 'Rachelya Suparmi'),
(3276, 'Elisabeth Christy Pandhu', 658678799, 3, '2021', 6, 'Perempuan', 'Sidoarjo', 'Kristen', 'Tri May Ariyani'),
(3277, 'Genta Permana Sudrajat', 465893698, 3, '2021', 8, 'Laki-Laki', 'Krian', 'Islam', 'Sri Yuana'),
(3278, 'Kezia Gita Kanagarayan', 569798999, 3, '2021', 10, 'Perempuan', 'Candi', 'Islam', 'Yeni Listio'),
(3279, 'Luh Elma Deliyanti Koncara', 374672888, 3, '2021', 1, 'Perempuan', 'Candi', 'Islam', 'Suliyem'),
(3281, 'Mikhael Imanuel Christian', 235652878, 3, '2021', 3, 'Laki-Laki', 'Sidoarjo', 'Kristen', 'Cristiani Ayu'),
(3282, 'Muhammad Anugrah Alfirizqy', 253465786, 3, '2021', 1, 'Laki-Laki', 'Wonoayu', 'Islam', 'Anisa Laila'),
(3283, 'Natasya Diandraning Suseno', 646757878, 3, '2021', 7, 'Perempuan', 'Candi', 'Islam', 'Sutinah'),
(3284, 'Nathania Earline Wangkanusa', 475765777, 3, '2021', 6, 'Perempuan', 'Candi', 'Islam', 'Sumiyatun'),
(3286, 'Raja Harsawijaya Daeng Mallongi', 765657767, 3, '2021', 9, 'Laki-Laki', 'Candi', 'Budha', 'Ris Junarti'),
(3287, 'Reichita Arumni', 467434365, 3, '2021', 1, 'Perempuan', 'Gedangan', 'Islam', 'Sunari'),
(3288, 'Thiago Absalom Manurung', 578687897, 3, '2021', 1, 'Laki-Laki', 'Sidoarjo', 'Kristen', 'Setyowati'),
(3290, 'Veanda Shana Bennetta', 675765764, 3, '2021', 1, 'Perempuan', 'Candi', 'Islam', 'Sri Purwani Handayani'),
(3291, 'Aisya Nourma Yasa', 235456756, 4, '2021', 1, 'Perempuan', 'Candi', 'Islam', 'Masruin'),
(3292, 'Andrian Yusfiky Putra Pamungkas', 235652877, 4, '2021', 3, 'Laki-Laki', 'Balengbendo', 'Islam', 'Roshayati'),
(3293, 'Arjuna Raziq Hanan Eka Prasetyo', 136726867, 4, '2021', 1, 'Laki-Laki', 'Sidoarjo', 'Islam', 'Rohmini'),
(3294, 'Emir Ilyas Attariq', 123665126, 4, '2021', 1, 'Laki-Laki', 'Waru', 'Islam', 'Suyati'),
(3295, 'Fandi Rahmawan', 785733443, 4, '2021', 6, 'Laki-Laki', 'Candi', 'Islam', 'Sri Suciyanti'),
(3296, 'Felicia Rahma Putri Wibowo', 324765665, 4, '2021', 1, 'Perempuan', 'Gedangan', 'Islam', 'Siti Rukainah'),
(3297, 'Gisela Aprily Wahyu Alexandrina', 354565656, 4, '2021', 4, 'Perempuan', 'Buduran', 'Islam', 'Sujilah'),
(3298, 'Joy Dirgantara', 243677767, 4, '2021', 2, 'Laki-Laki', 'Candi', 'Islam', 'Supriyatin'),
(3299, 'Lakeisha Aqilla Atmaja', 753435466, 4, '2021', 1, 'Perempuan', 'Buduran', 'Islam', 'Khotimah'),
(3300, 'Mochammad Rizky Farhan Pramudiyah', 647125348, 4, '2021', 8, 'Laki-Laki', 'Candi', 'Islam', 'Sri Mulyani'),
(3301, 'Muhammad Arfa Al Bukhori', 256345623, 4, '2021', 5, 'Laki-Laki', 'Candi', 'Islam', 'Nurhisanah'),
(3302, 'Muhammad Haidar Azka Pandita', 234635677, 4, '2021', 1, 'Laki-Laki', 'Candi', 'Islam', 'Mardiyah'),
(3304, 'Nadhira Thafana Prasdiana', 235625656, 4, '2021', 2, 'Perempuan', 'Sidoarjo', 'Islam', 'Suwarsini'),
(3305, 'Narendra Bayu Ardi Putra Dewangga', 464765768, 4, '2021', 1, 'Laki-Laki', 'Candi', 'Islam', 'Kasmini'),
(3306, 'Queenesya Rafasya Yuanna', 326487688, 4, '2021', 7, 'Perempuan', 'Buduran', 'Islam', 'Siti Nur Aini'),
(3307, 'Raka Putra Ageng', 365788099, 4, '2021', 9, 'Laki-Laki', 'Candi', 'Islam', 'Suritno'),
(3308, 'Reza Mahardika Syahputra', 467578878, 4, '2021', 1, 'Laki-Laki', 'Krian', 'Islam', 'Sri Handayani'),
(3309, 'Rifani Anggrekia Astadewi Crystali', 437688787, 4, '2021', 1, 'Laki-Laki', 'Krian', 'Islam', 'Karsini'),
(3310, 'Sarah Olivia Hidayat', 467346576, 4, '2021', 3, 'Perempuan', 'Sidoarjo', 'Kristen', 'Tri Utami'),
(3311, 'Shafa Aqillail Mubin', 354687879, 4, '2021', 10, 'Perempuan', 'Buduran', 'Islam', 'Nining Listia'),
(3312, 'Zaidan Firdaus Permana', 358769757, 4, '2021', 5, 'Laki-Laki', 'Candi', 'Islam', 'Siti Luwiji'),
(3313, 'Nasya Sabrina Chalcabila', 265374369, 4, '2021', 1, 'Perempuan', 'Candi', 'Islam', 'Suyatmi'),
(3314, 'Acelin Shafea Andaru', 152417878, 1, '2022', 2, 'Perempuan', 'Candi', 'Islam', 'Rika Oktavia'),
(3315, 'Adrian Bagaskara Tumiwa', 476565323, 1, '2022', 1, 'Laki-Laki', 'Waru', 'Islam', 'Nainani'),
(3316, 'Agatha Meira Kinanti', 214357546, 1, '2022', 6, 'Perempuan', 'Sedati', 'Islam', 'Suwarti'),
(3317, 'Ahmad Nizam Arjuna', 467466587, 1, '2022', 1, 'Laki-Laki', 'Candi', 'Islam', 'Fitri Yanti'),
(3318, 'Aisyah Rahmawati', 476576888, 1, '2022', 5, 'Perempuan', 'Gedangan', 'Islam', 'Ria Khoirunnisa'),
(3319, 'Annisa Rahmawati', 534765768, 1, '2022', 8, 'Perempuan', 'Sidoarjo', 'Islam', 'Isnah'),
(3320, 'Charliza Amanda Theresiana Endraksa', 427586868, 1, '2022', 1, 'Perempuan', 'Sidoarjo', 'Islam', 'Suhartini'),
(3321, 'Chika Emanuel Ngantung', 332546576, 1, '2022', 1, 'Perempuan', 'Candi', 'Islam', 'Mita Lestari'),
(3322, 'Clara Ingelina Rusfianti', 356467546, 1, '2022', 4, 'Perempuan', 'Gedangan', 'Islam', 'Yuniani'),
(3323, 'Dimas Satria Herlambang', 346754657, 1, '2022', 6, 'Laki-Laki', 'Buduran', 'Islam', 'Yeni Iryani'),
(3324, 'Edward Dominic Yonathan', 356467578, 1, '2022', 2, 'Laki-Laki', 'Krian', 'Islam', 'Sudaryanti'),
(3325, 'Faizahtul Chumairoh', 143271467, 1, '2022', 9, 'Perempuan', 'Candi', 'Islam', 'Asri'),
(3326, 'Fathinah Sahira Anamel', 356487687, 1, '2022', 1, 'Perempuan', 'Sidoarjo', 'Islam', 'Fasmawati'),
(3327, 'Feliz Queena Hasibuan', 354687267, 1, '2022', 5, 'Perempuan', 'Porong', 'Islam', 'Simi un'),
(3328, 'Galang Yudha Prasetyo', 467586668, 1, '2022', 3, 'Laki-Laki', 'Candi', 'Islam', 'Winda Suwanto'),
(3329, 'Kenzie Raka Sugiharto', 546776878, 1, '2022', 10, 'Laki-Laki', 'Gedangan', 'Islam', 'Itul'),
(3330, 'Mayshella Adiba Kirana', 467598899, 1, '2022', 7, 'Perempuan', 'Sidoarjo', 'Kristen', 'Ismahendi'),
(3331, 'Mochammad Maulana Akbar', 243576989, 1, '2022', 1, 'Laki-Laki', 'Buduran', 'Islam', 'Sukaryati'),
(3332, 'Muhammad Arif Azami', 357657678, 1, '2022', 7, 'Laki-Laki', 'Candi', 'Islam', 'Sundari Yun'),
(3333, 'Muhammad Raffasya Atharrizqi', 565335467, 1, '2022', 3, 'Laki-Laki', 'Balengbendo', 'Islam', 'Fatiyah'),
(3334, 'Naura Nadhifa Almahyra', 347875737, 1, '2022', 3, 'Perempuan', 'Gedangan', 'Islam', 'Makmur Sitepu'),
(3335, 'Raphael Pungkas Hadi', 253576576, 1, '2022', 1, 'Laki-Laki', 'Candi', 'Islam', 'Siti MArdiyah'),
(3336, 'Abrisam Ardani Siswoyo', 156462546, 1, '2022', 9, 'Laki-Laki', 'Candi', 'Islam', 'Syamsiah'),
(3337, 'Aditya Naufal Dary Abiyyu', 124365676, 1, '2022', 1, 'Laki-Laki', 'Sidoarjo', 'Islam', 'Sulisman'),
(3338, 'Anindita Freya Keishafany', 365467778, 1, '2022', 3, 'Perempuan', 'Candi', 'Islam', 'Arni'),
(3339, 'Arsyfa Salsabila Kurniawan', 354676899, 1, '2022', 1, 'Perempuan', 'Krian', 'Islam', 'Jatmi'),
(3340, 'Athar Sakhiy Halim', 264762878, 2, '2022', 1, 'Laki-Laki', 'Candi', 'Islam', 'Dwi Ariyanti'),
(3341, 'Aurelia Isnaya Setya Aryanti', 355878606, 2, '2022', 1, 'Perempuan', 'Porong', 'Islam', 'Warsita Leni'),
(3342, 'Azka Rafif Faeyza', 467587689, 2, '2022', 6, 'Laki-Laki', 'Krian', 'Islam', 'Maiti Ningsih'),
(3343, 'Dezka Tsaqib Al Fahrezy', 675687456, 2, '2022', 1, 'Laki-Laki', 'Buduran', 'Islam', 'Puan'),
(3344, 'Fanisa Putri Zahrani', 576835466, 2, '2022', 8, 'Perempuan', 'Sedati', 'Islam', 'Maharani'),
(3345, 'Fina Tazkiyatun Nikmah', 467969878, 2, '2022', 9, 'Perempuan', 'Krian', 'Islam', 'Lilia Wati'),
(3346, 'Geraldo Ahmad Wibowo', 243567868, 2, '2022', 2, 'Laki-Laki', 'Candi', 'Islam', 'Sumarni'),
(3347, 'Hana Dwi Pramesti', 467585678, 2, '2022', 5, 'Perempuan', 'Sidoarjo', 'Islam', 'Anitia'),
(3348, 'Keisha Defi Ramadhani', 648669867, 2, '2022', 6, 'Perempuan', 'Waru', 'Islam', 'Supatmi'),
(3349, 'Kirana Azni Kasmira', 354678908, 2, '2022', 10, 'Perempuan', 'Taman', 'Islam', 'Zuryati'),
(3350, 'Mochammad Diki Maulana', 352479678, 2, '2022', 2, 'Laki-Laki', 'Sidoarjo', 'Islam', 'Nurul Aini'),
(3351, 'Muhammad Maulana Muzacky', 573657657, 2, '2022', 4, 'Laki-Laki', 'Candi', 'Islam', 'Titik Sutitik'),
(3352, 'Muhammad Vinno Adi Pratama', 436585767, 2, '2022', 1, 'Laki-Laki', 'Gedangan', 'Islam', 'Novitasari'),
(3353, 'Naurah Qurrota Cahyani', 568576988, 2, '2022', 1, 'Perempuan', 'Sedati', 'Islam', 'Sukarni'),
(3354, 'Rafardhan Raya Hidayat', 546658799, 2, '2022', 1, 'Laki-Laki', 'Waru', 'Islam', 'Kasmini'),
(3355, 'Raissa Adzra Rifda', 584578878, 2, '2022', 1, 'Perempuan', 'Candi', 'Islam', 'Linda Mariyanti'),
(3356, 'Rasya Arkhan Bramasta', 489736878, 2, '2022', 6, 'Laki-Laki', 'Krembung', 'Islam', 'Sukaini'),
(3357, 'Zelda Ivana Putri Adetiya', 732487699, 2, '2022', 7, 'Perempuan', 'Sidoarjo', 'Islam', 'Rani Tri'),
(3358, 'Iqlima Berlian Royani', 457697998, 2, '2022', 1, 'Perempuan', 'Sidoarjo', 'Islam', 'Surati'),
(3359, 'Lovin Lukman Simbolon', 462976986, 2, '2022', 3, 'Laki-Laki', 'Buduran', 'Islam', 'Sukawati'),
(3360, 'Pandu Bagas Putra Widjaya', 324857678, 2, '2022', 1, 'Laki-Laki', 'Wonoayu', 'Islam', 'Rusmita'),
(3361, 'Muchamad Danurwedha', 468596079, 2, '2022', 1, 'Laki-Laki', 'Krian', 'Islam', 'Subrini'),
(3362, 'Azkiya Qolby Ramadani', 447658687, 2, '2022', 6, 'Laki-Laki', 'Taman', 'Islam', 'Sri Rezeki'),
(3363, 'Maryam As Siddiqo', 346756589, 2, '2022', 1, 'Perempuan', 'Candi', 'Islam', 'Suliyah'),
(3364, 'Faruq Maulana Latif', 346759769, 2, '2022', 3, 'Laki-Laki', 'Gedangan', 'Islam', 'Juriyah'),
(3365, 'Mutya Khafid', 467579687, 2, '2022', 1, 'Laki-Laki', 'Gedangan', 'Islam', 'Masruroh'),
(3366, 'Muhamat Fathurrozi', 485798709, 2, '2022', 5, 'Laki-Laki', 'Buduran', 'Islam', 'Komsatun'),
(3367, 'Gavyn Darrell Humayun', 467587698, 2, '2022', 1, 'Laki-Laki', 'Candi', 'Kristen', 'Anik Wahyuni'),
(3368, 'Devdan Dzul Abraham Sidiq', 467859888, 2, '2022', 1, 'Laki-Laki', 'Sidoarjo', 'Islam', 'Yunarsih');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_petugas` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `level_akun` enum('Admin','Petugas','Common User') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_petugas`, `nama`, `username`, `password`, `level_akun`) VALUES
(1, 'Reza Andyah Wijaya', 'admin', '123', 'Admin'),
(2, 'Ageng Puji Pangestu', 'petugas', '1234', 'Petugas'),
(3, 'Wali Murid', 'wali', '12345', 'Common User'),
(4, 'Muhammad Adam Romadhon', 'adam', '1234', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id_kelas`),
  ADD KEY `id_tingkatan` (`id_tingkatan`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id_tingkatan`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `nis` (`nis`),
  ADD KEY `FK_payment_petugas` (`id_petugas`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`nis`),
  ADD KEY `fk_siswa_kategori` (`id_kategori`),
  ADD KEY `fk_siswa_kelas` (`id_kelas`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_petugas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id_tingkatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `FK_class_level` FOREIGN KEY (`id_tingkatan`) REFERENCES `level` (`id_tingkatan`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `FK_payment_petugas` FOREIGN KEY (`id_petugas`) REFERENCES `user` (`id_petugas`),
  ADD CONSTRAINT `fk_pembayaran_siswa` FOREIGN KEY (`nis`) REFERENCES `student` (`nis`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `fk_siswa_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `category` (`id_kategori`),
  ADD CONSTRAINT `fk_siswa_kelas` FOREIGN KEY (`id_kelas`) REFERENCES `class` (`id_kelas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
