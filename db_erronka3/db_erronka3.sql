CREATE DATABASE IF NOT EXISTS db_elorrietazinema 
CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE ZINEMA (
    zinema_id INT PRIMARY KEY,
    izena VARCHAR(30),
    email VARCHAR(30),
    telefonoa VARCHAR(11),
    lokalizazioa VARCHAR(30),
    youtube VARCHAR(30),
    twitter VARCHAR(30),
    instagram VARCHAR(30),
    facebook VARCHAR(30)
);

CREATE TABLE ARETOA (
    aretoa_id INT PRIMARY KEY,
    zinema_id INT,
    izena VARCHAR(30),
    FOREIGN KEY (zinema_id) REFERENCES ZINEMA(zinema_id)
);

CREATE TABLE FILMA (
    filma_id INT PRIMARY KEY,
    generoa VARCHAR(30),
    prezioa DECIMAL(10, 2),
    izena VARCHAR(255),
    Iraupena INT
);

CREATE TABLE SAIOA (
    saioa_id INT PRIMARY KEY,
    data DATE,
    ordutegia TIME,
    filma_id INT,
    aretoa_id INT,
    zinema_id INT,
    FOREIGN KEY (filma_id) REFERENCES FILMA(filma_id),
    FOREIGN KEY (aretoa_id) REFERENCES ARETOA(aretoa_id),
    FOREIGN KEY (zinema_id) REFERENCES ZINEMA(zinema_id)
);

CREATE TABLE Sarrera (
    sarrera_id INT PRIMARY KEY,
    id_Erosketak INT,
    prezioa DECIMAL(10, 2),
    saioa_id INT,
    FOREIGN KEY (id_Erosketak) REFERENCES EROSKETAK(id_erosketak),
    FOREIGN KEY (saioa_id) REFERENCES SAIOA(saioa_id)
);

CREATE TABLE EROSKETAK (
    id_erosketak INT PRIMARY KEY,
    dirutotala DECIMAL(10, 2),
    kant INT,
    jatorria VARCHAR(255),
    Bezero_id INT,
    FOREIGN KEY (Bezero_id) REFERENCES BEZEROA(Bezero_id)
);

CREATE TABLE BEZEROA (
    Bezero_id INT PRIMARY KEY,
    NAN VARCHAR(20),
    izena VARCHAR(30),
    abizena VARCHAR(30),
    sexua VARCHAR(10),
    Email VARCHAR(30),
    telefonoa VARCHAR(11),
    pasahitza VARCHAR(30),
    jaio_data DATE
);
