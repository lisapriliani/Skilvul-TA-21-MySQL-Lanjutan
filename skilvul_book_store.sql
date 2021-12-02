---CREATE database bernama skilvulbookstore---
CREATE DATABASE skilvulbookstore;

---Mengakses database---
USE skilvulbookstore;

---Membuat table bernama penerbit---
CREATE TABLE penerbit (
    id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(50),
    kota VARCHAR(50)  
);

---Membuat table penulis---
CREATE TABLE penulis (
    id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(50),
    kota VARCHAR(50)
);

---Membuat table buku ---
CREATE TABLE buku (
    id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ISBN VARCHAR(50),
    judul VARCHAR(50),
    penulis VARCHAR(50),
    penerbit INT(10),
    harga INT(10),
    stock INT(10)
);

---Lakukan INNER JOIN dari table buku terhadap table penerbit---
SELECT * FROM buku
INNER JOIN penerbit
ON buku.penerbit = penerbit.id;

---Lakukan LEFT JOIN dari table buku terhadap table penerbit---
SELECT * FROM buku
LEFT JOIN penerbit
ON buku.penerbit = penerbit.id;

---Lakukan RIGHT JOIN dari table buku terhadap table penerbit---
SELECT * FROM buku
RIGHT JOIN penerbit
ON buku.penerbit = penerbit.id;

---Cek nilai MAX dari column harga pada table book yang memiliki jumlah stok buku di bawah 10---
SELECT MAX(harga) FROM buku
WHERE stock < 10;

---Cek nilai MIN dari column harga pada table book---
SELECT MIN(harga) FROM buku;

---Gunakan COUNT untuk melihat list data dengan kondisi harga buku di bawah 100000---
SELECT COUNT(*) FROM buku
WHERE harga < 100000;
