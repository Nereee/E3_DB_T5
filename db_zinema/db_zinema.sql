drop database db_zinema;

CREATE DATABASE IF NOT EXISTS db_zinema
CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

use db_zinema;

CREATE TABLE ZINEMA (
    zinema_id smallint PRIMARY KEY auto_increment,
    izena VARCHAR(30),
    email VARCHAR(50),
    telefonoa VARCHAR(9),
    herria varchar (20),
    Kalea varchar(20),
    zenbakia smallint,
    youtube VARCHAR(30),
    twitter VARCHAR(30),
    instagram VARCHAR(30),
    facebook VARCHAR(30)
);

CREATE TABLE ARETOA (
    aretoa_id smallint,
    zinema_id smallint,
    izena VARCHAR(30),
    primary key (zinema_id, aretoa_id),
    FOREIGN KEY (zinema_id) REFERENCES ZINEMA(zinema_id)
);

CREATE TABLE FILMA (
    filma_id smallint PRIMARY KEY,
    generoa VARCHAR(30),
    prezioa DECIMAL(10, 2),
    izena VARCHAR(25),
    Iraupena INT,
    Egilea varchar(20),
    Estrenaldi_urtea int
);

CREATE TABLE SAIOA (
    saioa_id smallint PRIMARY KEY,
    eguna DATE,
    ordutegia TIME,
    filma_id smallint,
    aretoa_id smallint,
    zinema_id smallint,
    FOREIGN KEY (filma_id) REFERENCES FILMA(filma_id),
    FOREIGN KEY (zinema_id, aretoa_id) REFERENCES ARETOA(zinema_id, aretoa_id)
);

CREATE TABLE BEZEROA (
    Bezero_id smallint PRIMARY KEY,
    NAN VARCHAR(20),
    izena VARCHAR(30),
    abizena VARCHAR(30),
    Generoa VARCHAR(10),
    Email VARCHAR(30),
    telefonoa VARCHAR(11),
    pasahitza VARCHAR(16),
    jaio_data DATE
);

CREATE TABLE EROSKETAK (
    erosketak_id smallint PRIMARY KEY,
    dirutotala DECIMAL(10, 2),
    kant smallint,
    jatorria VARCHAR(255),
    Bezero_id smallint,
    Deskontua decimal(10,2),
    FOREIGN KEY (Bezero_id) REFERENCES BEZEROA(Bezero_id)
);

CREATE TABLE Sarrera (
    sarrera_id INT PRIMARY KEY,
    Erosketak_id smallint,
    prezioa DECIMAL(10, 2),
    saioa_id smallint,
    FOREIGN KEY (Erosketak_id) REFERENCES EROSKETAK(erosketak_id),
    FOREIGN KEY (saioa_id) REFERENCES SAIOA(saioa_id)
);


insert into ZINEMA (izena, email, telefonoa, herria, kalea, zenbakia, youtube, twitter, instagram, facebook ) values 
("Elorrieta-errekamari zinema","zinema@gmail.com", "123456789", "Bilbao", "Lehendakari Agirre", 4,"ElorrietaYt","ElorrietaTw","ElorrietaInsta","ElorrietaFace");

insert into ZINEMA (izena, email, telefonoa, herria, kalea, zenbakia, youtube, twitter, instagram, facebook ) values 
("Basauri zinema","zinema@gmail.com", "123456789", "Basauri", "Pozokoetxe", 6 ,"BasaurizinemaYt","BasaurizinemaTw","BasaurizinemaInsta","BasaurizinemaFace");

insert into ZINEMA (izena, email, telefonoa, herria, kalea, zenbakia, youtube, twitter, instagram, facebook ) values 
("Ideal zinema","zinema@gmail.com", "123456789", "Bilbao", "Juan Ajuriaguerra", 7,"IdealYt","IdealTw","IdealInsta","IdealFace");

insert into ZINEMA (izena, email, telefonoa, herria, kalea, zenbakia, youtube, twitter, instagram, facebook ) values 
("Portugalete zinema","zinema@gmail.com", "123456789", "Portugalete", "Buenavista", 2,"PortuzinemaYt","PortuzinemaTw","PortuzinemaInsta","PortuzinemaFace");

insert into ZINEMA (izena, email, telefonoa, herria, kalea, zenbakia, youtube, twitter, instagram, facebook ) values 
("Gazteiz zinema","zinema@gmail.com", "123456789", "Gazteiz", "La Musica Ibilbidea", 10,"GazteizZinemaYt","GazteizZinemaTw","GazteizZinemaInsta","GazteizZinemaFace");