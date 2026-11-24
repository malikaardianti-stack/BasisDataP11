-- =====================================================
-- PRAKTIKUM SISTEM BASIS DATA 1
-- MODULE 11: DATABASE VIEWS, INDEXES, AND DATA INTEGRITY
-- Nama  : Ardianti Malika Putri
-- NIM   : 4112755201250194
-- =====================================================


USE perpustakaan_sql_bootcamp;


-- =====================================================
-- BAGIAN 1: VIEW PEMINJAMAN LENGKAP
-- =====================================================

-- Membuat VIEW peminjaman lengkap

CREATE OR REPLACE VIEW vw_peminjaman_lengkap AS
SELECT
    p.id_peminjaman,
    p.tanggal_pinjam,
    p.jatuh_tempo,
    p.tanggal_kembali,
    p.status AS status_peminjaman,
    p.denda,
    a.id_anggota,
    a.nama AS nama_anggota,
    a.kota,
    b.id_buku,
    b.judul_buku,
    k.nama_kategori,
    dp.jumlah
FROM peminjaman p
JOIN anggota a
    ON p.id_anggota = a.id_anggota
JOIN detail_peminjaman dp
    ON p.id_peminjaman = dp.id_peminjaman
JOIN buku b
    ON dp.id_buku = b.id_buku
JOIN kategori k
    ON b.id_kategori = k.id_kategori;


-- Menampilkan data VIEW

SELECT *
FROM vw_peminjaman_lengkap
LIMIT 20;


-- Menghitung jumlah baris VIEW

SELECT COUNT(*) AS jumlah_row
FROM vw_peminjaman_lengkap;


-- Menampilkan peminjaman terlambat

SELECT
    id_peminjaman,
    nama_anggota,
    judul_buku,
    nama_kategori,
    status_peminjaman,
    denda
FROM vw_peminjaman_lengkap
WHERE status_peminjaman = 'Terlambat'
ORDER BY denda DESC, id_peminjaman;


-- Memeriksa definisi VIEW

SHOW CREATE VIEW vw_peminjaman_lengkap;


-- Menampilkan seluruh VIEW

SHOW FULL TABLES
WHERE Table_type = 'VIEW';



-- =====================================================
-- BAGIAN 2: REPORTING DARI VIEW
-- =====================================================

-- Jumlah detail peminjaman per kategori

SELECT
    nama_kategori,
    COUNT(*) AS jumlah_detail_dipinjam
FROM vw_peminjaman_lengkap
GROUP BY nama_kategori
ORDER BY jumlah_detail_dipinjam DESC;


-- Jumlah detail peminjaman per kota anggota

SELECT
    kota,
    COUNT(*) AS jumlah_detail
FROM vw_peminjaman_lengkap
GROUP BY kota
ORDER BY jumlah_detail DESC;


-- Kategori dengan jumlah detail minimal 20

SELECT
    nama_kategori,
    COUNT(*) AS jumlah_detail
FROM vw_peminjaman_lengkap
GROUP BY nama_kategori
HAVING COUNT(*) >= 20
ORDER BY jumlah_detail DESC;



-- =====================================================
-- BAGIAN 3: VIEW BUKU DAN KATEGORI
-- =====================================================

-- Membuat VIEW buku dan kategori

CREATE OR REPLACE VIEW vw_buku_kategori AS
SELECT
    b.id_buku,
    b.judul_buku,
    k.nama_kategori,
    b.stok,
    b.harga
FROM buku b
JOIN kategori k
    ON b.id_kategori = k.id_kategori;


-- Menampilkan semua buku dan kategori

SELECT *
FROM vw_buku_kategori;


-- Menampilkan buku yang stoknya habis atau sedikit

SELECT *
FROM vw_buku_kategori
WHERE stok <= 3;


-- Memeriksa definisi VIEW buku dan kategori

SHOW CREATE VIEW vw_buku_kategori;



-- =====================================================
-- BAGIAN 4: INDEX
-- =====================================================

-- Membuat tabel latihan

DROP TABLE IF EXISTS index_lab;

CREATE TABLE index_lab AS
SELECT
    CONCAT(
        b.id_buku, '-',
        a.id_anggota, '-',
        k.id_kategori
    ) AS lab_id,
    b.judul_buku,
    a.kota,
    k.nama_kategori
FROM buku b
CROSS JOIN anggota a
CROSS JOIN kategori k;


-- Mengecek jumlah data

SELECT COUNT(*) AS jumlah_row
FROM index_lab;


-- EXPLAIN sebelum INDEX

EXPLAIN
SELECT *
FROM index_lab
WHERE lab_id = 'BKU001-AGT001-KAT001';


-- Membuat INDEX

CREATE UNIQUE INDEX idx_index_lab_lab_id
ON index_lab(lab_id);


-- EXPLAIN sesudah INDEX

EXPLAIN
SELECT *
FROM index_lab
WHERE lab_id = 'BKU001-AGT001-KAT001';


-- Melihat INDEX

SHOW INDEX FROM index_lab;


-- Membuat INDEX tambahan untuk judul buku

CREATE INDEX idx_index_lab_judul_buku
ON index_lab(judul_buku);



-- =====================================================
-- BAGIAN 5: DATA INTEGRITY
-- =====================================================

-- Uji PRIMARY KEY
-- Query ini sengaja menghasilkan error karena KAT001
-- sudah digunakan sebagai PRIMARY KEY.

INSERT INTO kategori (id_kategori, nama_kategori)
VALUES ('KAT001', 'Kategori Duplikat');


-- Uji UNIQUE
-- Query ini sengaja menghasilkan error jika email
-- andiramadhan1@mail.com sudah digunakan.

INSERT INTO anggota
(
    id_anggota,
    nama,
    email,
    kota,
    tanggal_daftar,
    status,
    no_telepon
)
VALUES
(
    'AGT999',
    'Uji Email Duplikat',
    'andiramadhan1@mail.com',
    'Jakarta',
    '2026-11-19',
    'Aktif',
    '081234567899'
);


-- Uji NOT NULL
-- Query ini sengaja menghasilkan error karena
-- judul_buku tidak boleh bernilai NULL.

INSERT INTO buku
(
    id_buku,
    judul_buku,
    penulis,
    tahun_terbit,
    stok,
    harga,
    id_kategori
)
VALUES
(
    'BKU999',
    NULL,
    'Penulis Uji',
    2026,
    5,
    100000,
    'KAT001'
);


-- Uji CHECK
-- Query ini sengaja menghasilkan error karena
-- stok tidak boleh bernilai negatif.

UPDATE buku
SET stok = -10
WHERE id_buku = 'BKU001';


-- Mengecek stok buku setelah pengujian CHECK

SELECT
    id_buku,
    judul_buku,
    stok
FROM buku
WHERE id_buku = 'BKU001';


-- Uji DEFAULT
-- Memeriksa nilai DEFAULT pada tabel anggota.

SHOW CREATE TABLE anggota;


-- Uji FOREIGN KEY
-- Query ini sengaja menghasilkan error karena
-- KAT999 tidak tersedia di tabel kategori.

INSERT INTO buku
(
    id_buku,
    judul_buku,
    penulis,
    tahun_terbit,
    stok,
    harga,
    id_kategori
)
VALUES
(
    'BKU999',
    'Buku Uji Foreign Key',
    'Penulis Uji',
    2026,
    5,
    100000,
    'KAT999'
);


-- Uji penghapusan parent
-- Query ini sengaja menghasilkan error jika KAT001
-- masih digunakan oleh data buku.

DELETE FROM kategori
WHERE id_kategori = 'KAT001';



-- =====================================================
-- BAGIAN 6: MAIN CHALLENGE
-- =====================================================

-- Nomor 1: Membuat VIEW buku dan kategori

CREATE OR REPLACE VIEW vw_buku_kategori AS
SELECT
    b.id_buku,
    b.judul_buku,
    k.nama_kategori,
    b.stok,
    b.harga
FROM buku b
JOIN kategori k
    ON b.id_kategori = k.id_kategori;


-- Nomor 2: Menampilkan buku dengan stok habis
-- atau stok kurang dari atau sama dengan 3

SELECT *
FROM vw_buku_kategori
WHERE stok <= 3;


-- Nomor 3: Jumlah transaksi unik per status

SELECT
    status_peminjaman,
    COUNT(DISTINCT id_peminjaman) AS jumlah_transaksi
FROM vw_peminjaman_lengkap
GROUP BY status_peminjaman;


-- Nomor 4: Perbedaan COUNT(*)
--
-- COUNT(*) pada VIEW peminjaman lengkap menghitung
-- seluruh baris detail peminjaman.
--
-- Satu transaksi dapat memiliki beberapa buku,
-- sehingga menghasilkan beberapa baris pada VIEW.
--
-- COUNT(DISTINCT id_peminjaman) menghitung jumlah
-- transaksi yang unik, bukan jumlah detail buku.


-- Nomor 5: Kolom yang cocok diberi INDEX
--
-- Kolom kota pada tabel anggota cocok diberi INDEX
-- jika sering digunakan untuk pencarian anggota
-- berdasarkan kota.
--
-- Contoh pola query:
-- SELECT * FROM anggota WHERE kota = 'Karawang';
--
-- INDEX dapat membantu pencarian data ketika
-- jumlah anggota sudah besar.


-- Nomor 6: Kolom yang tidak perlu INDEX tambahan
--
-- Kolom nama pada tabel anggota tidak perlu
-- diberi INDEX tambahan jika jarang digunakan
-- untuk pencarian atau pengurutan data.
--
-- INDEX membutuhkan ruang penyimpanan tambahan
-- dan perlu diperbarui ketika data berubah.
--
-- INDEX sebaiknya dibuat sesuai kebutuhan query.


-- Nomor 7: EXPLAIN sebelum dan sesudah INDEX
--
-- Jalankan query DROP INDEX berikut jika INDEX
-- sudah dibuat pada bagian sebelumnya.

DROP INDEX idx_index_lab_lab_id
ON index_lab;


-- EXPLAIN sebelum INDEX

EXPLAIN
SELECT *
FROM index_lab
WHERE lab_id = 'BKU001-AGT001-KAT001';


-- Membuat kembali INDEX

CREATE UNIQUE INDEX idx_index_lab_lab_id
ON index_lab(lab_id);


-- EXPLAIN sesudah INDEX

EXPLAIN
SELECT *
FROM index_lab
WHERE lab_id = 'BKU001-AGT001-KAT001';


-- Nomor 8: Contoh data yang ditolak constraint
--
-- PRIMARY KEY:
-- ID kategori yang sudah digunakan.
--
-- UNIQUE:
-- Email anggota yang sudah digunakan.
--
-- CHECK:
-- Stok buku bernilai negatif.
--
-- FOREIGN KEY:
-- Buku menggunakan ID kategori yang tidak tersedia.


-- Nomor 9: Risiko ON DELETE CASCADE
--
-- ON DELETE CASCADE dapat menghapus data child
-- secara otomatis ketika data parent dihapus.
--
-- Hal ini dapat menyebabkan hilangnya riwayat
-- transaksi jika tidak sesuai aturan bisnis.
--
-- Penggunaannya harus disesuaikan dengan kebutuhan
-- bisnis dan aturan pengelolaan data.


-- Nomor 10: Mini-report
-- Jumlah detail peminjaman per kategori

SELECT
    nama_kategori,
    COUNT(*) AS jumlah_detail_dipinjam
FROM vw_peminjaman_lengkap
GROUP BY nama_kategori
ORDER BY jumlah_detail_dipinjam DESC;


-- Insight 1:
-- Kategori dengan jumlah detail peminjaman tertinggi
-- memiliki jumlah peminjaman buku paling banyak.

-- Insight 2:
-- Kategori dengan jumlah detail peminjaman terendah
-- dapat menjadi perhatian dalam pengelolaan koleksi
-- buku perpustakaan.



-- =====================================================
-- BAGIAN 7: CLEANUP
-- =====================================================

-- Jalankan query berikut hanya setelah semua
-- screenshot INDEX dan challenge selesai.
--
-- Query ini menghapus tabel latihan index_lab.
--
-- DROP TABLE IF EXISTS index_lab;