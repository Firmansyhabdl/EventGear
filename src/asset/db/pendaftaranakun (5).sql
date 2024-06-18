-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jun 2024 pada 12.39
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pendaftaranakun`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `catering_packages`
--

CREATE TABLE `catering_packages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `catering_packages`
--

INSERT INTO `catering_packages` (`id`, `name`, `description`, `price`) VALUES
(1, 'Paket catering 1', 'PIRING 20,\r\nSENDOK 10,\r\nRANTANG 3,\r\nGARPU 2,\r\nPISAU ROTI 1 PCS', 400.00),
(10, 'Paket Catering 2', 'SENDOK,\r\nGARPU,\r\nPIRING', 200.00),
(12, 'Catering Packages 3', 'Rantang,centong', 50.00),
(13, 'Catering Packages 4', 'SENDOK,GARPU', 10.00);

-- --------------------------------------------------------

--
-- Struktur dari tabel `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `proof_of_payment` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `proof_of_payment`, `created_at`) VALUES
(3, 62, 'uploads/png-transparent-call-logo-illustration-test-apk-whatsapp-android-application-package-mobile-phones-whatsapp-logo-telephone-call-grass-sign.png', '2024-06-14 17:55:21'),
(4, 62, 'uploads/png-transparent-call-logo-illustration-test-apk-whatsapp-android-application-package-mobile-phones-whatsapp-logo-telephone-call-grass-sign.png', '2024-06-14 17:56:06'),
(5, 62, 'uploads/Download2BLogo2BBANK2BSYARIAH2BINDONESIA2BCDR2Bdan2BPNG.png', '2024-06-14 18:08:53'),
(6, 62, 'uploads/WhatsApp-Image-2020-06-10-at-17.44.51.jpeg', '2024-06-15 13:36:09'),
(7, 62, 'uploads/png-transparent-call-logo-illustration-test-apk-whatsapp-android-application-package-mobile-phones-whatsapp-logo-telephone-call-grass-sign.png', '2024-06-15 14:27:52'),
(8, 62, 'uploads/png-transparent-call-logo-illustration-test-apk-whatsapp-android-application-package-mobile-phones-whatsapp-logo-telephone-call-grass-sign.png', '2024-06-15 14:34:03'),
(9, 62, 'uploads/png-transparent-call-logo-illustration-test-apk-whatsapp-android-application-package-mobile-phones-whatsapp-logo-telephone-call-grass-sign.png', '2024-06-15 14:41:14'),
(19, 67, 'uploads/Screenshot (154).png', '2024-06-18 10:04:30'),
(20, 69, 'uploads/Screenshot (214).png', '2024-06-18 10:11:30'),
(21, 69, 'uploads/Screenshot (210).png', '2024-06-18 10:16:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `no_telephone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `no_telephone`, `email`, `alamat`, `password`) VALUES
(39, 'Fuad Fer', '0858907652', 'FuadHamidan@gmail.com', 'Nunyai', '7c3b4914c80a752f84d0e298da622cd57f261cf6eb0f5f9a51a3bb454dca3e26'),
(40, 'haloha', '081368982664', 'SS@gmail.com', 'palapa', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4'),
(41, 'Gustika dwi m', '085788240792', 'Gstk@gmail.com', 'Kota Bumi', '727892dc512e927974ef69643a83499088d95a380705e9ce994d1664bb50bf7c'),
(42, 'Jakc s', '085788240792', 'welcomejacks@gmail.com', 'Bekasi', '57776e8a41ff487b37a6b34186486b0e2f886e2cbf12a8e30d56dc67ea778193'),
(43, 'Jokowi', '081978568907', 'JokowiJk@gmail.com', 'Solo', 'dcaab6265dcbec110ab2918b0d59d8ea57ba6866cb5ed92ccd4af1bb0e944450'),
(44, 'Trio sakti ardika', '081368982664', 'no@gmail.com', 'gada', '5f93230da0c7dd66d20f077670a66d392521ea71d58a65f684063f4670c5b606'),
(45, 'JOKO TINGKIRE', '00000000', 'JOKO@gmail.com', 'GOA', '95546009001611506d6cd1482ae3727a251c566c629dba237c7d9cefea70ce54'),
(46, 'Trio sakti ardika', '081368982664', 'mase1922@gmail.com', 'New York', '97a6d21df7c51e8289ac1a8c026aaac143e15aa1957f54f42e30d8f8a85c3a55'),
(47, 'Trio sakti ardika', '081368982664', 'tr@gmail.com', 'Jambi', 'c0509a487a18b003ba05e505419ebb63e57a29158073e381f57160b5c5b86426'),
(49, 'Fuadin hamidin', '0867823989', 'achaan@gmail.com', 'metro', '469c0fdb6020d4bffe12ec93e76150a08ef02e116fc856a84b24eb02a1d1a155'),
(50, 'Erisanjaya', '098904352357', 'Erisanjaya@gmail.com', 'Danau toba', '73a2af8864fc500fa49048bf3003776c19938f360e56bd03663866fb3087884a'),
(53, 'Rizka Dama', '081368982664', 'Rizkadm@gmail.com', 'Plb', '3608bca1e44ea6c4d268eb6db02260269892c0b42b86bbf1e77a6fa16c3c9282'),
(55, 'Bintang Ferinantama', '0858907652', 'BintangFerinantama@gmail.com', 'palapa', 'cfc3a5b5ad88a20c09a18de3c4f142066528c606276b2554fa12f8a8834861f0'),
(56, 'gusti', '0858907652', 'Rasdirasid1@gmail.com', 'Polda', '0604cd3138feed202ef293e062da2f4720f77a05d25ee036a7a01c9cfcdd1f0a'),
(58, 'Trio sakti ardika', '081368982664', 'triosakti7@gmail.com', 'palapa', '163e49567eef0c05e154db2074383d0dcff8e04cefdfb3114df9a417627783e5'),
(60, 'Trio sakti ardika', '081368982664', 'masx@gmail.com', 'palapa', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3'),
(61, 'mas le', '081368982664', 'trios@gmail.com', 'tubaba', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894'),
(62, 'Nama Pengguna', '08123456789', 'email@example.com', 'Alamat Pengguna', 'hashed_password'),
(66, 'Firman', '081368982664', 'ferman1@gmail.com', 'lamsel', '4fc82b26aecb47d2868c4efbe3581732a3e7cbcc6c2efb32062c08170a05eeb8'),
(67, 'gusti putu', '098', 'Gusti1@gmail.com', 'palapa', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894'),
(68, 'Fuad', '085788240792', 'fuafd@gmail.com', 'Jambi', '3514acf61732f662da19625f7fe781c3e483f2dce8506012f3bb393f5003e105'),
(69, 'Joe febrian sinuraga', '0867823989', 'Joe1@gmail.com', 'medan', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rentals`
--

CREATE TABLE `rentals` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL,
  `package` varchar(100) NOT NULL,
  `rental_date` date NOT NULL,
  `status` varchar(20) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `rentals`
--

INSERT INTO `rentals` (`id`, `name`, `phone_number`, `address`, `package`, `rental_date`, `status`) VALUES
(9, 'asdads', 'asdasd', 'asdasd', 'paket2', '2024-06-20', 'Pending'),
(11, 'Trio sakti ardika', '081368982664', 'palapa', 'paket1', '2024-06-29', 'Diterima'),
(12, 'fajar', '081368982664', 'padang', 'paket1', '2024-06-18', 'Pending'),
(13, 'Trio sakti ardika', '081368982664', 'palapa', 'paket1', '2024-06-18', 'Pending'),
(14, 'rifki', '081368982664', 'Jambi', 'paket1', '2024-06-27', 'Diterima'),
(15, 'ERIK', '081368982664', 'medan', 'paket1', '2024-06-19', 'Diterima'),
(16, 'AKSAN GANTENG', '081368982664', 'Metro', 'paket2', '2024-06-28', 'Diterima'),
(17, 'Trio sakti ardika', '081368982664', 'palapa', 'paket1', '2024-06-28', 'Pending'),
(18, 'haloha', '081368982664', 'metro kibang', 'paket1', '2024-06-28', 'Diterima'),
(19, 'JOE', '081368982664', 'MEDAN', 'paket1', '2024-06-20', 'Diterima'),
(20, 'Trio sakti ardika', '081368982664', 'TUBABA', 'paket1', '2024-06-21', 'Diterima');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `store_name` varchar(255) NOT NULL,
  `store_address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `stores`
--

INSERT INTO `stores` (`id`, `store_name`, `store_address`, `email`, `phone_number`) VALUES
(2, 'Rifki Store', 'Jambi', 'StoreRifki@gmail.com', '0856789067'),
(5, 'Trio Rent', 'Palapa', 'RentalPesawat@gmail.com', '0867823989'),
(14, 'asdads', 'asddas', 'nandobudi3@gmail.com', '00999'),
(16, 'ALo1222121212', 'Pekanbaru', 'detry220803@gmail.com', '089525126629'),
(17, 'weew', 'wewe', 'wewe@gmail.com', '0220202020'),
(19, 'halo guys', 'email', 'faiz@gmail.com', '2828282882'),
(20, 'toko baju', 'mekar jaya', 'akangacan12@gmail.com', '081368982664'),
(23, 'toko sewa', 'balam', 'sewajaya@gmail.com', '08136798266456'),
(24, 'kelontong', 'kemiling', 'kelontong@gmail.com', '087893825732'),
(25, 'erik', 'nasgor', 'erik@gmail.com', '08678967923'),
(26, 'AKSAN', 'METRO', 'akangacan12@gmail.com', '09789593475'),
(27, 'TOKO ANGGA', 'METRO', 'ANGGAJAYA@GMAI.COM', '00000000'),
(30, 'toko sewa', 'mekar jaya', 'akangacan12@gmail.com', '081368982664'),
(31, 'kelontong', 'METRO', 'saktiardika1@gmail.com', '081368982664'),
(32, 'TOKO JOE', 'MEDAN', 'TOKOJOE@GMAIL.COM', '0897234623'),
(33, 'TOKOBAJU_BANGJOE', 'MEDAN', 'BAJU@GMAIL.COM', '0000000'),
(34, 'TOKO_TRIO', 'TUBABA', 'Triosakti@gmail.com', '089235235325');

-- --------------------------------------------------------

--
-- Struktur dari tabel `uploads`
--

CREATE TABLE `uploads` (
  `id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `uploaded_on` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `catering_packages`
--
ALTER TABLE `catering_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rentals`
--
ALTER TABLE `rentals`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `catering_packages`
--
ALTER TABLE `catering_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT untuk tabel `rentals`
--
ALTER TABLE `rentals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `pengguna` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
