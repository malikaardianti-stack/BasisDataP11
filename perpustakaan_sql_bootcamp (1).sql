-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Waktu pembuatan: 24 Nov 2026 pada 15.35
-- Versi server: 8.0.44
-- Versi PHP: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Basis data: `perpustakaan_sql_bootcamp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_daftar` date NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Aktif',
  `no_telepon` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama`, `email`, `kota`, `tanggal_daftar`, `status`, `no_telepon`) VALUES
('AGT001', 'Andi Ramadhan', 'andiramadhan1@mail.com', 'Bogor', '2026-01-10', 'Aktif', '086555967868'),
('AGT002', 'Sinta Kusuma', 'sintakusuma2@mail.com', 'Bandung', '2026-01-17', 'Aktif', '087266206410'),
('AGT003', 'Raka Maulana', 'rakamaulana3@mail.com', 'Bekasi', '2026-01-24', 'Aktif', '086969485304'),
('AGT004', 'Alya Utami', 'alyautami4@mail.com', 'Tangerang', '2026-01-31', 'Aktif', '086554183777'),
('AGT005', 'Nadia Pratama', 'nadiapratama5@mail.com', 'Depok', '2026-02-07', 'Aktif', '082233883007'),
('AGT006', 'Fajar Ramadhan', 'fajarramadhan6@mail.com', 'Karawang', '2026-02-14', 'Aktif', '081131876167'),
('AGT007', 'Dimas Kusuma', 'dimaskusuma7@mail.com', 'Bekasi', '2026-02-21', 'Aktif', '082392713991'),
('AGT008', 'Putri Maulana', 'putrimaulana8@mail.com', 'Tangerang', '2026-02-28', 'Aktif', '085682605145'),
('AGT009', 'Bagas Utami', 'bagasutami9@mail.com', 'Depok', '2026-03-07', 'Aktif', '084055396989'),
('AGT010', 'Intan Pratama', 'intanpratama10@mail.com', 'Karawang', '2026-03-14', 'Aktif', '088975114050'),
('AGT011', 'Rizky Ramadhan', 'rizkyramadhan11@mail.com', 'Jakarta', '2026-03-21', 'Nonaktif', '089964522218'),
('AGT012', 'Hana Kusuma', 'hanakusuma12@mail.com', 'Bogor', '2026-03-28', 'Aktif', '088787657040'),
('AGT013', 'Ilham Maulana', 'ilhammaulana13@mail.com', 'Bandung', '2026-04-04', 'Aktif', '089820217589'),
('AGT014', 'Tasya Utami', 'tasyautami14@mail.com', 'Karawang', '2026-04-11', 'Aktif', '081633313537'),
('AGT015', 'Naufal Pratama', 'naufalpratama15@mail.com', 'Jakarta', '2026-04-18', 'Aktif', '081642788565'),
('AGT016', 'Vina Ramadhan', 'vinaramadhan16@mail.com', 'Bogor', '2026-04-25', 'Aktif', '081713508434'),
('AGT017', 'Bima Kusuma', 'bimakusuma17@mail.com', 'Bandung', '2026-05-02', 'Aktif', '087541860833'),
('AGT018', 'Salsa Maulana', 'salsamaulana18@mail.com', 'Bekasi', '2026-05-09', 'Aktif', '081582072183'),
('AGT019', 'Aditya Utami', 'adityautami19@mail.com', 'Tangerang', '2026-05-16', 'Aktif', '086697213538'),
('AGT020', 'Laila Pratama', 'lailapratama20@mail.com', 'Depok', '2026-05-23', 'Aktif', '085881870154'),
('AGT021', 'Kevin Ramadhan', 'kevinramadhan21@mail.com', 'Bandung', '2026-05-30', 'Aktif', '087492567167'),
('AGT022', 'Gita Kusuma', 'gitakusuma22@mail.com', 'Bekasi', '2026-06-06', 'Aktif', '081249355253'),
('AGT023', 'Farhan Maulana', 'farhanmaulana23@mail.com', 'Tangerang', '2026-06-13', 'Aktif', '088799800001'),
('AGT024', 'Maya Utami', 'mayautami24@mail.com', 'Depok', '2026-06-20', 'Nonaktif', '089121201905'),
('AGT025', 'Dewi Pratama', 'dewipratama25@mail.com', 'Karawang', '2026-06-27', 'Aktif', '085514924129'),
('AGT026', 'Rani Ramadhan', 'raniramadhan26@mail.com', 'Jakarta', '2026-07-04', 'Aktif', '086497032176'),
('AGT027', 'Wahyu Kusuma', 'wahyukusuma27@mail.com', 'Bogor', '2026-07-11', 'Aktif', '085627492388'),
('AGT028', 'Yasmin Maulana', 'yasminmaulana28@mail.com', 'Depok', '2026-07-18', 'Aktif', '083328140406'),
('AGT029', 'Anisa Utami', 'anisautami29@mail.com', 'Karawang', '2026-07-25', 'Aktif', '088520880700'),
('AGT030', 'Tegar Pratama', 'tegarpratama30@mail.com', 'Jakarta', '2026-01-03', 'Aktif', '084976363847'),
('AGT031', 'Aisyah Ramadhan', 'aisyahramadhan31@mail.com', 'Bogor', '2026-01-10', 'Aktif', '085571261952'),
('AGT032', 'Bella Kusuma', 'bellakusuma32@mail.com', 'Bandung', '2026-01-17', 'Aktif', '087031875307'),
('AGT033', 'Cahya Maulana', 'cahyamaulana33@mail.com', 'Bekasi', '2026-01-24', 'Aktif', '081120680977'),
('AGT034', 'Rafi Utami', 'rafiutami34@mail.com', 'Tangerang', '2026-01-31', 'Aktif', '088721068840'),
('AGT035', 'Zahra Pratama', 'zahrapratama35@mail.com', 'Bogor', '2026-02-07', 'Aktif', '085271462594'),
('AGT036', 'Nanda Ramadhan', 'nandaramadhan36@mail.com', 'Bandung', '2026-02-14', 'Aktif', '081539093856'),
('AGT037', 'Ardi Kusuma', 'ardikusuma37@mail.com', 'Bekasi', '2026-02-21', 'Nonaktif', '084453621364'),
('AGT038', 'Fitri Maulana', 'fitrimaulana38@mail.com', 'Tangerang', '2026-02-28', 'Aktif', '081473847837'),
('AGT039', 'Satria Utami', 'satriautami39@mail.com', 'Depok', '2026-03-07', 'Aktif', '083545941742'),
('AGT040', 'Daffa Pratama', 'daffapratama40@mail.com', 'Karawang', '2026-03-14', 'Aktif', '083222712490');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id_buku` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul_buku` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penulis` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_terbit` int DEFAULT NULL,
  `stok` int NOT NULL DEFAULT '0',
  `harga` decimal(12,2) NOT NULL,
  `id_kategori` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `judul_buku`, `penulis`, `tahun_terbit`, `stok`, `harga`, `id_kategori`) VALUES
('BKU001', 'Dasar-Dasar Basis Data', 'Budi Raharjo', 2017, 7, 58750.00, 'KAT001'),
('BKU002', 'SQL untuk Pemula', 'Dian Kurnia', 2020, 14, 72500.00, 'KAT001'),
('BKU003', 'Pemrograman Web Modern', 'Rina Oktavi', 2023, 5, 86250.00, 'KAT001'),
('BKU004', 'Struktur Data Praktis', 'Agus Santoso', 2026, 12, 100000.00, 'KAT001'),
('BKU005', 'Jaringan Komputer Dasar', 'Ferry Wijaya', 2016, 3, 113750.00, 'KAT001'),
('BKU006', 'Python untuk Analisis Data', 'Nadia Putri', 2019, 10, 127500.00, 'KAT002'),
('BKU007', 'Machine Learning Terapan', 'Rafi Akbar', 2022, 1, 141250.00, 'KAT002'),
('BKU008', 'Data Visualization', 'Maya Lestari', 2025, 8, 155000.00, 'KAT002'),
('BKU009', 'Artificial Intelligence Dasar', 'Ilham Nugroho', 2015, 15, 168750.00, 'KAT002'),
('BKU010', 'Data Engineering 101', 'Teguh Hidayat', 2018, 6, 182500.00, 'KAT002'),
('BKU011', 'Malam di Kota Tua', 'A. Pradana', 2021, 13, 196250.00, 'KAT003'),
('BKU012', 'Senja dan Hujan', 'S. Maharani', 2024, 4, 210000.00, 'KAT003'),
('BKU013', 'Perjalanan Pulang', 'R. Ananda', 2014, 11, 48750.00, 'KAT003'),
('BKU014', 'Ruang yang Hilang', 'D. Utami', 2017, 2, 62500.00, 'KAT003'),
('BKU015', 'Cerita Hari Minggu', 'N. Putri', 2020, 9, 76250.00, 'KAT003'),
('BKU016', 'Fisika dalam Kehidupan', 'Arif Setiawan', 2023, 0, 90000.00, 'KAT004'),
('BKU017', 'Biologi untuk Semua', 'Lina Hartati', 2026, 7, 103750.00, 'KAT004'),
('BKU018', 'Astronomi Populer', 'Yusuf Pratama', 2016, 14, 117500.00, 'KAT004'),
('BKU019', 'Kimia di Sekitar Kita', 'Nina Sari', 2019, 5, 131250.00, 'KAT004'),
('BKU020', 'Matematika Diskrit', 'Dedi Saputra', 2022, 12, 145000.00, 'KAT004'),
('BKU021', 'Bisnis Digital', 'Kevin Wijaya', 2025, 3, 158750.00, 'KAT005'),
('BKU022', 'Manajemen Modern', 'Sinta Dewi', 2015, 10, 172500.00, 'KAT005'),
('BKU023', 'Strategi Pemasaran', 'R. Haryono', 2018, 1, 186250.00, 'KAT005'),
('BKU024', 'Kewirausahaan Praktis', 'Anita Putri', 2021, 8, 200000.00, 'KAT005'),
('BKU025', 'Keuangan untuk Pemula', 'Dimas Kurnia', 2024, 15, 213750.00, 'KAT005'),
('BKU026', 'Psikologi Sosial', 'Hana Utami', 2014, 6, 52500.00, 'KAT006'),
('BKU027', 'Mengenal Emosi', 'Laila Rahma', 2017, 13, 66250.00, 'KAT006'),
('BKU028', 'Psikologi Kognitif', 'A. Maulana', 2020, 4, 80000.00, 'KAT006'),
('BKU029', 'Motivasi dan Perilaku', 'Tasya Lestari', 2023, 11, 93750.00, 'KAT006'),
('BKU030', 'Komunikasi Interpersonal', 'Gita Permata', 2026, 2, 107500.00, 'KAT006'),
('BKU031', 'Strategi Pembelajaran', 'Yani Hidayat', 2016, 9, 121250.00, 'KAT007'),
('BKU032', 'Teknologi Pendidikan', 'Ardi Nugroho', 2019, 0, 135000.00, 'KAT007'),
('BKU033', 'Evaluasi Pembelajaran', 'Bella Santoso', 2022, 7, 148750.00, 'KAT007'),
('BKU034', 'Pendidikan Masyarakat', 'Cahya Ananda', 2025, 14, 162500.00, 'KAT007'),
('BKU035', 'Desain Kurikulum', 'Fajar Pratama', 2015, 5, 176250.00, 'KAT007'),
('BKU036', 'Sejarah Indonesia Modern', 'Wahyu Saputra', 2018, 12, 190000.00, 'KAT008'),
('BKU037', 'Jejak Nusantara', 'Rani Putri', 2021, 3, 203750.00, 'KAT008'),
('BKU038', 'Dunia Abad Ke-20', 'Bima Kusuma', 2024, 10, 217500.00, 'KAT008'),
('BKU039', 'Tokoh dan Perubahan', 'Salsa Wijaya', 2014, 1, 56250.00, 'KAT008'),
('BKU040', 'Sejarah Teknologi', 'Aditya Akbar', 2017, 8, 70000.00, 'KAT008'),
('BKU041', 'Practical MySQL', 'D. Rahman', 2020, 15, 83750.00, 'KAT001'),
('BKU042', 'Cloud Database Basics', 'Fitri Ananda', 2023, 6, 97500.00, 'KAT001'),
('BKU043', 'Deep Learning Ringkas', 'Farhan Maulana', 2026, 13, 111250.00, 'KAT002'),
('BKU044', 'Statistika untuk Data', 'Yasmin Utami', 2016, 4, 125000.00, 'KAT002'),
('BKU045', 'Novel Pagi Pertama', 'Aisyah Permata', 2019, 11, 138750.00, 'KAT003'),
('BKU046', 'Sains Data untuk Bisnis', 'Naufal Santoso', 2022, 2, 152500.00, 'KAT005'),
('BKU047', 'Belajar Efektif', 'Vina Lestari', 2025, 9, 166250.00, 'KAT007'),
('BKU048', 'Memori dan Atensi', 'Zahra Hidayat', 2015, 0, 180000.00, 'KAT006'),
('BKU049', 'Perang dan Diplomasi', 'Rizky Nugroho', 2018, 7, 193750.00, 'KAT008'),
('BKU050', 'Logika dan Algoritma', 'Bagas Pratama', 2021, 14, 207500.00, 'KAT004');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_peminjaman`
--

CREATE TABLE `detail_peminjaman` (
  `id_peminjaman` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_buku` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detail_peminjaman`
--

INSERT INTO `detail_peminjaman` (`id_peminjaman`, `id_buku`, `jumlah`) VALUES
('PJM0001', 'BKU006', 1),
('PJM0001', 'BKU017', 1),
('PJM0002', 'BKU011', 1),
('PJM0002', 'BKU022', 1),
('PJM0002', 'BKU033', 1),
('PJM0003', 'BKU016', 1),
('PJM0004', 'BKU021', 1),
('PJM0004', 'BKU032', 1),
('PJM0005', 'BKU026', 1),
('PJM0005', 'BKU037', 1),
('PJM0005', 'BKU048', 1),
('PJM0006', 'BKU031', 1),
('PJM0007', 'BKU036', 1),
('PJM0007', 'BKU047', 1),
('PJM0008', 'BKU002', 1),
('PJM0008', 'BKU013', 1),
('PJM0008', 'BKU041', 1),
('PJM0009', 'BKU046', 1),
('PJM0010', 'BKU001', 1),
('PJM0010', 'BKU012', 1),
('PJM0011', 'BKU006', 1),
('PJM0011', 'BKU017', 1),
('PJM0011', 'BKU028', 1),
('PJM0012', 'BKU011', 1),
('PJM0013', 'BKU016', 1),
('PJM0013', 'BKU027', 1),
('PJM0014', 'BKU021', 1),
('PJM0014', 'BKU032', 1),
('PJM0014', 'BKU043', 1),
('PJM0015', 'BKU026', 1),
('PJM0016', 'BKU031', 1),
('PJM0016', 'BKU042', 1),
('PJM0017', 'BKU008', 1),
('PJM0017', 'BKU036', 1),
('PJM0017', 'BKU047', 1),
('PJM0018', 'BKU041', 1),
('PJM0019', 'BKU007', 1),
('PJM0019', 'BKU046', 1),
('PJM0020', 'BKU001', 1),
('PJM0020', 'BKU012', 1),
('PJM0020', 'BKU023', 1),
('PJM0021', 'BKU006', 1),
('PJM0022', 'BKU011', 1),
('PJM0022', 'BKU022', 1),
('PJM0023', 'BKU016', 1),
('PJM0023', 'BKU027', 1),
('PJM0023', 'BKU038', 1),
('PJM0024', 'BKU021', 1),
('PJM0025', 'BKU026', 1),
('PJM0025', 'BKU037', 1),
('PJM0026', 'BKU003', 1),
('PJM0026', 'BKU031', 1),
('PJM0026', 'BKU042', 1),
('PJM0027', 'BKU036', 1),
('PJM0028', 'BKU002', 1),
('PJM0028', 'BKU041', 1),
('PJM0029', 'BKU007', 1),
('PJM0029', 'BKU018', 1),
('PJM0029', 'BKU046', 1),
('PJM0030', 'BKU001', 1),
('PJM0031', 'BKU006', 1),
('PJM0031', 'BKU017', 1),
('PJM0032', 'BKU011', 1),
('PJM0032', 'BKU022', 1),
('PJM0032', 'BKU033', 1),
('PJM0033', 'BKU016', 1),
('PJM0034', 'BKU021', 1),
('PJM0034', 'BKU032', 1),
('PJM0035', 'BKU026', 1),
('PJM0035', 'BKU037', 1),
('PJM0035', 'BKU048', 1),
('PJM0036', 'BKU031', 1),
('PJM0037', 'BKU036', 1),
('PJM0037', 'BKU047', 1),
('PJM0038', 'BKU002', 1),
('PJM0038', 'BKU013', 1),
('PJM0038', 'BKU041', 1),
('PJM0039', 'BKU046', 1),
('PJM0040', 'BKU001', 1),
('PJM0040', 'BKU012', 1),
('PJM0041', 'BKU006', 1),
('PJM0041', 'BKU017', 1),
('PJM0041', 'BKU028', 1),
('PJM0042', 'BKU011', 1),
('PJM0043', 'BKU016', 1),
('PJM0043', 'BKU027', 1),
('PJM0044', 'BKU021', 1),
('PJM0044', 'BKU032', 1),
('PJM0044', 'BKU043', 1),
('PJM0045', 'BKU026', 1),
('PJM0046', 'BKU031', 1),
('PJM0046', 'BKU042', 1),
('PJM0047', 'BKU008', 1),
('PJM0047', 'BKU036', 1),
('PJM0047', 'BKU047', 1),
('PJM0048', 'BKU041', 1),
('PJM0049', 'BKU007', 1),
('PJM0049', 'BKU046', 1),
('PJM0050', 'BKU001', 1),
('PJM0050', 'BKU012', 1),
('PJM0050', 'BKU023', 1),
('PJM0051', 'BKU006', 1),
('PJM0052', 'BKU011', 1),
('PJM0052', 'BKU022', 1),
('PJM0053', 'BKU016', 1),
('PJM0053', 'BKU027', 1),
('PJM0053', 'BKU038', 1),
('PJM0054', 'BKU021', 1),
('PJM0055', 'BKU026', 1),
('PJM0055', 'BKU037', 1),
('PJM0056', 'BKU003', 1),
('PJM0056', 'BKU031', 1),
('PJM0056', 'BKU042', 1),
('PJM0057', 'BKU036', 1),
('PJM0058', 'BKU002', 1),
('PJM0058', 'BKU041', 1),
('PJM0059', 'BKU007', 1),
('PJM0059', 'BKU018', 1),
('PJM0059', 'BKU046', 1),
('PJM0060', 'BKU001', 1),
('PJM0061', 'BKU006', 1),
('PJM0061', 'BKU017', 1),
('PJM0062', 'BKU011', 1),
('PJM0062', 'BKU022', 1),
('PJM0062', 'BKU033', 1),
('PJM0063', 'BKU016', 1),
('PJM0064', 'BKU021', 1),
('PJM0064', 'BKU032', 1),
('PJM0065', 'BKU026', 1),
('PJM0065', 'BKU037', 1),
('PJM0065', 'BKU048', 1),
('PJM0066', 'BKU031', 1),
('PJM0067', 'BKU036', 1),
('PJM0067', 'BKU047', 1),
('PJM0068', 'BKU002', 1),
('PJM0068', 'BKU013', 1),
('PJM0068', 'BKU041', 1),
('PJM0069', 'BKU046', 1),
('PJM0070', 'BKU001', 1),
('PJM0070', 'BKU012', 1),
('PJM0071', 'BKU006', 1),
('PJM0071', 'BKU017', 1),
('PJM0071', 'BKU028', 1),
('PJM0072', 'BKU011', 1),
('PJM0073', 'BKU016', 1),
('PJM0073', 'BKU027', 1),
('PJM0074', 'BKU021', 1),
('PJM0074', 'BKU032', 1),
('PJM0074', 'BKU043', 1),
('PJM0075', 'BKU026', 1),
('PJM0076', 'BKU031', 1),
('PJM0076', 'BKU042', 1),
('PJM0077', 'BKU008', 1),
('PJM0077', 'BKU036', 1),
('PJM0077', 'BKU047', 1),
('PJM0078', 'BKU041', 1),
('PJM0079', 'BKU007', 1),
('PJM0079', 'BKU046', 1),
('PJM0080', 'BKU001', 1),
('PJM0080', 'BKU012', 1),
('PJM0080', 'BKU023', 1),
('PJM0081', 'BKU006', 1),
('PJM0082', 'BKU011', 1),
('PJM0082', 'BKU022', 1),
('PJM0083', 'BKU016', 1),
('PJM0083', 'BKU027', 1),
('PJM0083', 'BKU038', 1),
('PJM0084', 'BKU021', 1),
('PJM0085', 'BKU026', 1),
('PJM0085', 'BKU037', 1),
('PJM0086', 'BKU003', 1),
('PJM0086', 'BKU031', 1),
('PJM0086', 'BKU042', 1),
('PJM0087', 'BKU036', 1),
('PJM0088', 'BKU002', 1),
('PJM0088', 'BKU041', 1),
('PJM0089', 'BKU007', 1),
('PJM0089', 'BKU018', 1),
('PJM0089', 'BKU046', 1),
('PJM0090', 'BKU001', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kategori` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
('KAT005', 'Bisnis'),
('KAT002', 'Data & AI'),
('KAT003', 'Fiksi'),
('KAT007', 'Pendidikan'),
('KAT006', 'Psikologi'),
('KAT004', 'Sains'),
('KAT008', 'Sejarah'),
('KAT001', 'Teknologi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_anggota` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `jatuh_tempo` date NOT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `denda` decimal(12,2) NOT NULL DEFAULT '0.00'
) ;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `id_anggota`, `tanggal_pinjam`, `jatuh_tempo`, `tanggal_kembali`, `status`, `denda`) VALUES
('PJM0001', 'AGT008', '2026-08-03', '2026-08-10', '2026-08-07', 'Dikembalikan', 0.00),
('PJM0002', 'AGT015', '2026-08-05', '2026-08-12', '2026-08-12', 'Dikembalikan', 0.00),
('PJM0003', 'AGT022', '2026-08-07', '2026-08-14', '2026-08-13', 'Dikembalikan', 0.00),
('PJM0004', 'AGT029', '2026-08-09', '2026-08-16', NULL, 'Dipinjam', 0.00),
('PJM0005', 'AGT036', '2026-08-12', '2026-08-19', NULL, 'Dipinjam', 0.00),
('PJM0006', 'AGT003', '2026-08-14', '2026-08-21', '2026-08-28', 'Terlambat', 21000.00),
('PJM0007', 'AGT010', '2026-08-16', '2026-08-23', '2026-08-21', 'Dikembalikan', 0.00),
('PJM0008', 'AGT017', '2026-08-18', '2026-08-25', '2026-08-24', 'Dikembalikan', 0.00),
('PJM0009', 'AGT024', '2026-08-20', '2026-08-27', '2026-08-24', 'Dikembalikan', 0.00),
('PJM0010', 'AGT031', '2026-08-23', '2026-08-30', '2026-08-27', 'Dikembalikan', 0.00),
('PJM0011', 'AGT038', '2026-08-25', '2026-09-01', NULL, 'Dipinjam', 0.00),
('PJM0012', 'AGT005', '2026-08-27', '2026-09-03', NULL, 'Dipinjam', 0.00),
('PJM0013', 'AGT012', '2026-08-29', '2026-09-05', '2026-09-12', 'Terlambat', 21000.00),
('PJM0014', 'AGT019', '2026-08-31', '2026-09-07', '2026-09-04', 'Dikembalikan', 0.00),
('PJM0015', 'AGT026', '2026-09-03', '2026-09-10', '2026-09-08', 'Dikembalikan', 0.00),
('PJM0016', 'AGT033', '2026-09-05', '2026-09-12', '2026-09-12', 'Dikembalikan', 0.00),
('PJM0017', 'AGT040', '2026-09-07', '2026-09-14', '2026-09-14', 'Dikembalikan', 0.00),
('PJM0018', 'AGT007', '2026-09-09', '2026-09-16', NULL, 'Dipinjam', 0.00),
('PJM0019', 'AGT014', '2026-09-11', '2026-09-18', NULL, 'Dipinjam', 0.00),
('PJM0020', 'AGT021', '2026-09-14', '2026-09-21', '2026-09-26', 'Terlambat', 15000.00),
('PJM0021', 'AGT028', '2026-09-16', '2026-09-23', '2026-09-22', 'Dikembalikan', 0.00),
('PJM0022', 'AGT035', '2026-09-18', '2026-09-25', '2026-09-25', 'Dikembalikan', 0.00),
('PJM0023', 'AGT002', '2026-09-20', '2026-09-27', '2026-09-27', 'Dikembalikan', 0.00),
('PJM0024', 'AGT009', '2026-09-22', '2026-09-29', '2026-09-29', 'Dikembalikan', 0.00),
('PJM0025', 'AGT016', '2026-09-25', '2026-10-02', NULL, 'Dipinjam', 0.00),
('PJM0026', 'AGT023', '2026-09-27', '2026-10-04', NULL, 'Dipinjam', 0.00),
('PJM0027', 'AGT030', '2026-09-29', '2026-10-06', '2026-10-11', 'Terlambat', 15000.00),
('PJM0028', 'AGT037', '2026-10-01', '2026-10-08', '2026-10-07', 'Dikembalikan', 0.00),
('PJM0029', 'AGT004', '2026-10-03', '2026-10-10', '2026-10-07', 'Dikembalikan', 0.00),
('PJM0030', 'AGT011', '2026-10-06', '2026-10-13', '2026-10-12', 'Dikembalikan', 0.00),
('PJM0031', 'AGT018', '2026-10-08', '2026-10-15', '2026-10-15', 'Dikembalikan', 0.00),
('PJM0032', 'AGT025', '2026-10-10', '2026-10-17', NULL, 'Dipinjam', 0.00),
('PJM0033', 'AGT032', '2026-10-12', '2026-10-19', NULL, 'Dipinjam', 0.00),
('PJM0034', 'AGT039', '2026-10-14', '2026-10-21', '2026-10-23', 'Terlambat', 6000.00),
('PJM0035', 'AGT006', '2026-10-17', '2026-10-24', '2026-10-21', 'Dikembalikan', 0.00),
('PJM0036', 'AGT013', '2026-10-19', '2026-10-26', '2026-10-23', 'Dikembalikan', 0.00),
('PJM0037', 'AGT020', '2026-10-21', '2026-10-28', '2026-10-27', 'Dikembalikan', 0.00),
('PJM0038', 'AGT027', '2026-10-23', '2026-10-30', '2026-10-27', 'Dikembalikan', 0.00),
('PJM0039', 'AGT034', '2026-10-25', '2026-11-01', NULL, 'Dipinjam', 0.00),
('PJM0040', 'AGT001', '2026-08-01', '2026-08-08', NULL, 'Dipinjam', 0.00),
('PJM0041', 'AGT008', '2026-08-03', '2026-08-10', '2026-08-12', 'Terlambat', 6000.00),
('PJM0042', 'AGT015', '2026-08-05', '2026-08-12', '2026-08-11', 'Dikembalikan', 0.00),
('PJM0043', 'AGT022', '2026-08-07', '2026-08-14', '2026-08-12', 'Dikembalikan', 0.00),
('PJM0044', 'AGT029', '2026-08-09', '2026-08-16', '2026-08-15', 'Dikembalikan', 0.00),
('PJM0045', 'AGT036', '2026-08-12', '2026-08-19', '2026-08-18', 'Dikembalikan', 0.00),
('PJM0046', 'AGT003', '2026-08-14', '2026-08-21', NULL, 'Dipinjam', 0.00),
('PJM0047', 'AGT010', '2026-08-16', '2026-08-23', NULL, 'Dipinjam', 0.00),
('PJM0048', 'AGT017', '2026-08-18', '2026-08-25', '2026-08-30', 'Terlambat', 15000.00),
('PJM0049', 'AGT024', '2026-08-20', '2026-08-27', '2026-08-26', 'Dikembalikan', 0.00),
('PJM0050', 'AGT031', '2026-08-23', '2026-08-30', '2026-08-29', 'Dikembalikan', 0.00),
('PJM0051', 'AGT038', '2026-08-25', '2026-09-01', '2026-09-01', 'Dikembalikan', 0.00),
('PJM0052', 'AGT005', '2026-08-27', '2026-09-03', '2026-09-02', 'Dikembalikan', 0.00),
('PJM0053', 'AGT012', '2026-08-29', '2026-09-05', NULL, 'Dipinjam', 0.00),
('PJM0054', 'AGT019', '2026-08-31', '2026-09-07', NULL, 'Dipinjam', 0.00),
('PJM0055', 'AGT026', '2026-09-03', '2026-09-10', '2026-09-13', 'Terlambat', 9000.00),
('PJM0056', 'AGT033', '2026-09-05', '2026-09-12', '2026-09-12', 'Dikembalikan', 0.00),
('PJM0057', 'AGT040', '2026-09-07', '2026-09-14', '2026-09-14', 'Dikembalikan', 0.00),
('PJM0058', 'AGT007', '2026-09-09', '2026-09-16', '2026-09-16', 'Dikembalikan', 0.00),
('PJM0059', 'AGT014', '2026-09-11', '2026-09-18', '2026-09-18', 'Dikembalikan', 0.00),
('PJM0060', 'AGT021', '2026-09-14', '2026-09-21', NULL, 'Dipinjam', 0.00),
('PJM0061', 'AGT028', '2026-09-16', '2026-09-23', NULL, 'Dipinjam', 0.00),
('PJM0062', 'AGT035', '2026-09-18', '2026-09-25', '2026-09-30', 'Terlambat', 15000.00),
('PJM0063', 'AGT002', '2026-09-20', '2026-09-27', '2026-09-25', 'Dikembalikan', 0.00),
('PJM0064', 'AGT009', '2026-09-22', '2026-09-29', '2026-09-27', 'Dikembalikan', 0.00),
('PJM0065', 'AGT016', '2026-09-25', '2026-10-02', '2026-09-30', 'Dikembalikan', 0.00),
('PJM0066', 'AGT023', '2026-09-27', '2026-10-04', '2026-10-03', 'Dikembalikan', 0.00),
('PJM0067', 'AGT030', '2026-09-29', '2026-10-06', NULL, 'Dipinjam', 0.00),
('PJM0068', 'AGT037', '2026-10-01', '2026-10-08', NULL, 'Dipinjam', 0.00),
('PJM0069', 'AGT004', '2026-10-03', '2026-10-10', '2026-10-13', 'Terlambat', 9000.00),
('PJM0070', 'AGT011', '2026-10-06', '2026-10-13', '2026-10-11', 'Dikembalikan', 0.00),
('PJM0071', 'AGT018', '2026-10-08', '2026-10-15', '2026-10-15', 'Dikembalikan', 0.00),
('PJM0072', 'AGT025', '2026-10-10', '2026-10-17', '2026-10-17', 'Dikembalikan', 0.00),
('PJM0073', 'AGT032', '2026-10-12', '2026-10-19', '2026-10-16', 'Dikembalikan', 0.00),
('PJM0074', 'AGT039', '2026-10-14', '2026-10-21', NULL, 'Dipinjam', 0.00),
('PJM0075', 'AGT006', '2026-10-17', '2026-10-24', NULL, 'Dipinjam', 0.00),
('PJM0076', 'AGT013', '2026-10-19', '2026-10-26', '2026-10-28', 'Terlambat', 6000.00),
('PJM0077', 'AGT020', '2026-10-21', '2026-10-28', '2026-10-26', 'Dikembalikan', 0.00),
('PJM0078', 'AGT027', '2026-10-23', '2026-10-30', '2026-10-28', 'Dikembalikan', 0.00),
('PJM0079', 'AGT034', '2026-10-25', '2026-11-01', '2026-10-30', 'Dikembalikan', 0.00),
('PJM0080', 'AGT001', '2026-08-01', '2026-08-08', '2026-08-06', 'Dikembalikan', 0.00),
('PJM0081', 'AGT008', '2026-08-03', '2026-08-10', NULL, 'Dipinjam', 0.00),
('PJM0082', 'AGT015', '2026-08-05', '2026-08-12', NULL, 'Dipinjam', 0.00),
('PJM0083', 'AGT022', '2026-08-07', '2026-08-14', '2026-08-17', 'Terlambat', 9000.00),
('PJM0084', 'AGT029', '2026-08-09', '2026-08-16', '2026-08-16', 'Dikembalikan', 0.00),
('PJM0085', 'AGT036', '2026-08-12', '2026-08-19', '2026-08-19', 'Dikembalikan', 0.00),
('PJM0086', 'AGT003', '2026-08-14', '2026-08-21', '2026-08-18', 'Dikembalikan', 0.00),
('PJM0087', 'AGT010', '2026-08-16', '2026-08-23', '2026-08-21', 'Dikembalikan', 0.00),
('PJM0088', 'AGT017', '2026-08-18', '2026-08-25', NULL, 'Dipinjam', 0.00),
('PJM0089', 'AGT024', '2026-08-20', '2026-08-27', NULL, 'Dipinjam', 0.00),
('PJM0090', 'AGT031', '2026-08-23', '2026-08-30', '2026-09-04', 'Terlambat', 15000.00);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `vw_buku_kategori`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `vw_buku_kategori` (
`harga` decimal(12,2)
,`id_buku` varchar(10)
,`judul_buku` varchar(180)
,`nama_kategori` varchar(100)
,`stok` int
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `vw_peminjaman_lengkap`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `vw_peminjaman_lengkap` (
`denda` decimal(12,2)
,`id_anggota` varchar(10)
,`id_buku` varchar(10)
,`id_peminjaman` varchar(12)
,`jatuh_tempo` date
,`judul_buku` varchar(180)
,`jumlah` int
,`kota` varchar(50)
,`nama_anggota` varchar(150)
,`nama_kategori` varchar(100)
,`status_peminjaman` varchar(20)
,`tanggal_kembali` date
,`tanggal_pinjam` date
);

--
-- Indeks untuk tabel yang dibuang
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `fk_buku_kategori` (`id_kategori`);

--
-- Indeks untuk tabel `detail_peminjaman`
--
ALTER TABLE `detail_peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`,`id_buku`),
  ADD KEY `fk_detail_buku` (`id_buku`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD UNIQUE KEY `nama_kategori` (`nama_kategori`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `fk_peminjaman_anggota` (`id_anggota`);

-- --------------------------------------------------------

--
-- Struktur untuk view `vw_buku_kategori`
--
DROP TABLE IF EXISTS `vw_buku_kategori`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_buku_kategori`  AS SELECT `b`.`id_buku` AS `id_buku`, `b`.`judul_buku` AS `judul_buku`, `k`.`nama_kategori` AS `nama_kategori`, `b`.`stok` AS `stok`, `b`.`harga` AS `harga` FROM (`buku` `b` join `kategori` `k` on((`b`.`id_kategori` = `k`.`id_kategori`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `vw_peminjaman_lengkap`
--
DROP TABLE IF EXISTS `vw_peminjaman_lengkap`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_peminjaman_lengkap`  AS SELECT `p`.`id_peminjaman` AS `id_peminjaman`, `p`.`tanggal_pinjam` AS `tanggal_pinjam`, `p`.`jatuh_tempo` AS `jatuh_tempo`, `p`.`tanggal_kembali` AS `tanggal_kembali`, `p`.`status` AS `status_peminjaman`, `p`.`denda` AS `denda`, `a`.`id_anggota` AS `id_anggota`, `a`.`nama` AS `nama_anggota`, `a`.`kota` AS `kota`, `b`.`id_buku` AS `id_buku`, `b`.`judul_buku` AS `judul_buku`, `k`.`nama_kategori` AS `nama_kategori`, `dp`.`jumlah` AS `jumlah` FROM ((((`peminjaman` `p` join `anggota` `a` on((`p`.`id_anggota` = `a`.`id_anggota`))) join `detail_peminjaman` `dp` on((`p`.`id_peminjaman` = `dp`.`id_peminjaman`))) join `buku` `b` on((`dp`.`id_buku` = `b`.`id_buku`))) join `kategori` `k` on((`b`.`id_kategori` = `k`.`id_kategori`))) ;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `fk_buku_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);

--
-- Ketidakleluasaan untuk tabel `detail_peminjaman`
--
ALTER TABLE `detail_peminjaman`
  ADD CONSTRAINT `fk_detail_buku` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `fk_detail_peminjaman` FOREIGN KEY (`id_peminjaman`) REFERENCES `peminjaman` (`id_peminjaman`);

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `fk_peminjaman_anggota` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
