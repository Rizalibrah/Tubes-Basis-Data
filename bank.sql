-- Active: 1701179883441@@127.0.0.1@3306@bank



CREATE DATABASE Bank
    DEFAULT CHARACTER SET = 'utf8mb4';


--Table Customer
    CREATE Table customer (
        id_customer varchar(8) not null,
        nama_customer varchar(50) not null,
        alamta_customer varchar(50) not null
        );

--Menambah PRIMARY KEY pada id_customer        
    ALTER TABLE customer ADD PRIMARY KEY (id_customer);

--Tabel Staff
    Create Table staff (
        id_staff varchar(8) not null,
        nama_staff VARCHAR(50) not NULL,
        shift VARCHAR(10) NOT NULL,
        PRIMARY KEY (id_staff)
    );

--Table Rekening
    CREATE Table Rekening (
        id_rekening VARCHAR(8) NOT NULL,
        id_customer VARCHAR(8) Not NULL,
        FOREIGN KEY (id_customer) REFERENCES customer(id_customer)
    );


--Memasukan data customer
    INSERT INTO customer 
    (id_customer, nama_customer, alamta_customer)
    VALUES 
    ('C-423111','Nathanael Ade Putra','Bekasi'),
    ('C-423112','Aditya Saputra','Bekasi'),
    ('C-423113','Riki Sahenro','Bekasi'),
    ('C-423114','Boydo Saragih','Bekasi'),
    ('C-423115','Nasuha Erza','Jakarta'),
    ('C-423116','Muhammad Rizal Ibrahim','Jakarta');


--Memasukan data Staff
    INSERT INTO staff 
    (id_staff, nama_staff, shift)
    VALUES
    ('S-522141','Annisa Saputri','Pagi'),
    ('S-522142','Satrio Dewanto','Pagi'),
    ('S-522143','Nisrina Aprilia','Siang'),
    ('S-522144','Dimas Bakti','Siang'),
    ('S-522145','Dimas Hermawan','Sore'),
    ('S-522146','Alexander Bayu','Sore'),
    ('S-522147','Olver Chin','Malam'),
    ('S-522148','Naufal Hilmi','Malam');       

--Memasukan data Rekening
    INSERT INTO rekening 
    (id_rekening, id_customer, saldo)    
    VALUES
    ('R-223161','C-423111','1000000'),
    ('R-223162','C-423112','2000000'),
    ('R-223163','C-423113','3000000'),
    ('R-223164','C-423114','4000000'),
    ('R-223165','C-423115','5000000'),
    ('R-223166','C-423116','10000000');


--Delete Table
    drop Table customer;
    drop Table staff;
    drop Table rekening;

--Jawaban
--Poin 1
--Melihat Table Customer
    select * from customer;
--Melihat Table Staff 
    SELECT * from staff; 
--Melihat Table Rekening 
    SELECT * FROM rekening;

--Poin 2
--Menampilakan nama customer dengan terurut
    SELECT * FROM customer ORDER BY nama_customer ASC;

--Poin 3
--Menampilkan Alamat Customer dan Jumlah Customer di Alamat Tertentu
    SELECT alamta_customer, COUNT(*) AS Jumlah_customer
    FROM customer
    GROUP BY alamta_customer;

--Poin 4
--Menampilkan Nama Staff yang Tidak Mengambil Shift Malam
    SELECT shift,nama_staff
    FROM staff
    WHERE shift != 'Malam' OR shift IS NULL;   

--Poin 5
--Menambahkan kolom Saldo
    ALTER TABLE rekening
    ADD COLUMN saldo VARCHAR(8);    
