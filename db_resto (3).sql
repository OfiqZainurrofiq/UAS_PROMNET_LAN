-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2021 at 06:09 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_resto`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_login`
--

CREATE TABLE `tb_login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_login`
--

INSERT INTO `tb_login` (`username`, `password`, `email`) VALUES
('ofiqzainurrofiq', 'kdkc', '321@a.com'),
('', '', ''),
('ofiq', 'zain123', 'azainurrofiq@gmail.com'),
('uniga', '1234', 'azainurrofiq@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tb_makan`
--

CREATE TABLE `tb_makan` (
  `nama` varchar(30) NOT NULL,
  `deskripsi` varchar(50) NOT NULL,
  `rating` varchar(5) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_makan`
--

INSERT INTO `tb_makan` (`nama`, `deskripsi`, `rating`, `harga`) VALUES
('Lemon Chicken', 'Dada fillet dengan saus lemon', '4.5', 48000),
('Salmon Fillet', 'Swedish Salmon disajikan dengan Rosemary', '4.9', 105000),
('Noodle Mushroom', 'Spaghetti dengan sajian jamur Matsutake', '4.4', 35000),
('Swedish Meatballs', 'Bakso isi daging salmon impor', '4.7', 75000),
('Special Fried Rice', 'Nasi goreng spesial dengan bauaran Seafood', '4.4', 32000),
('Australian Steak', 'Beef Tenderloin Blackpaper Sauce', '4.6', 120000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_minum`
--

CREATE TABLE `tb_minum` (
  `nama` varchar(25) NOT NULL,
  `deskripsi` varchar(50) NOT NULL,
  `rating` varchar(5) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_minum`
--

INSERT INTO `tb_minum` (`nama`, `deskripsi`, `rating`, `harga`) VALUES
('Hazelnut MilkTea', 'Minuman teh susu rasa Hazelnut', '4.3', 23000),
('Strawberry Cocktail', 'Minuman cocktail rasa Strawberry', '4.5', 30000),
('Cappucino', 'Cappucino steam dengan latte', '4.6', 25000),
('Avocado Juice', 'Jus Alpukat dengan lelehan coklat', '4.4', 25000),
('Mango Juice', 'Jus mangga pilihan terbaik', '4.5', 25000),
('Coffee Latte', 'Kopi dengan Latte Italia', '4.7', 30000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesan`
--

CREATE TABLE `tb_pesan` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(15) NOT NULL,
  `person` enum('1','2','3','4') NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `bayar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pesan`
--

INSERT INTO `tb_pesan` (`id`, `name`, `email`, `phone`, `person`, `date`, `time`, `bayar`) VALUES
(13, 'Ofiq Zainurrofiq', 'azainurrofiq@gmail.com', 2147483647, '2', '2021-07-20', '21:00:00', '11.png'),
(25, 'Uniga', 'uniga@unigamalang.ac.id', 2147483647, '3', '2021-07-08', '15:00:00', 'himsi2.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_review`
--

CREATE TABLE `tb_review` (
  `id_review` int(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `ulasan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_review`
--

INSERT INTO `tb_review` (`id_review`, `nama`, `ulasan`) VALUES
(100, 'Ofiq', 'Makannya kurang enak'),
(222, 'Uniga', 'Makanan enak');

-- --------------------------------------------------------

--
-- Table structure for table `tb_snack`
--

CREATE TABLE `tb_snack` (
  `nama` varchar(25) NOT NULL,
  `deskripsi` varchar(50) NOT NULL,
  `rating` varchar(5) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_snack`
--

INSERT INTO `tb_snack` (`nama`, `deskripsi`, `rating`, `harga`) VALUES
('Italian Pizza', 'Pizza khas Italia dengan Pepperoni', '4.5', 45000),
('Cupcakes', 'Dessert manis rasa Red Velvet', '4.4', 30000),
('Feast Hamburger', 'Double Patty hamburger dan Bacon ', '4.6', 65000),
('Berries Cake Bowl', 'Snack buah Berry and Soup', '4.5', 55000),
('Spaghetti', 'Sphagetti with Bolognesee Sauce', '4.3', 35000),
('Donut', 'Dessert manis Donat aneka rasa', '4.7', 15000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_pesan`
--
ALTER TABLE `tb_pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_review`
--
ALTER TABLE `tb_review`
  ADD PRIMARY KEY (`id_review`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_pesan`
--
ALTER TABLE `tb_pesan`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tb_review`
--
ALTER TABLE `tb_review`
  MODIFY `id_review` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483648;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
