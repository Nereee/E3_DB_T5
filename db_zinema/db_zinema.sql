drop database if exists db_elorrietazinemaT5;

CREATE DATABASE IF NOT EXISTS db_elorrietazinemaT5
CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci;

use db_elorrietazinemaT5;

CREATE TABLE ZINEMA (
    zinema_id varchar(2) PRIMARY KEY,
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
    aretoa_id smallint unsigned,
    zinema_id varchar(2),
    izena VARCHAR(30),
    primary key (zinema_id, aretoa_id),
    FOREIGN KEY (zinema_id) REFERENCES ZINEMA(zinema_id) on delete cascade on update cascade
);

CREATE TABLE FILMA (
    filma_id smallint unsigned PRIMARY KEY,
    generoa VARCHAR(30),
    prezioa DECIMAL(10, 2),
    izena VARCHAR(25),
    Iraupena INT,
    Egilea varchar(20),
    Estrenaldi_urtea int
);

CREATE TABLE SAIOA (
    saioa_id smallint unsigned PRIMARY KEY,
    eguna DATE,
    ordutegia TIME,
    filma_id smallint unsigned,
    aretoa_id smallint unsigned,
    zinema_id varchar(2),
    FOREIGN KEY (filma_id) REFERENCES FILMA(filma_id) on delete cascade on update cascade,
    FOREIGN KEY (zinema_id, aretoa_id) REFERENCES ARETOA(zinema_id, aretoa_id) on delete cascade on update cascade
);

CREATE TABLE BEZEROA (
    Bezero_id smallint unsigned PRIMARY KEY,
    NAN VARCHAR(9) unique not null,
    izena VARCHAR(30) not null,
    abizena VARCHAR(30) not null,
    Generoa VARCHAR(10),
    Email VARCHAR(30) not null,
    telefonoa VARCHAR(11),
    erabiltzailea varchar(15) not null unique,
    pasahitza VARCHAR(12) not null,
    jaio_data DATE check (jaio_data < "2010-01-01")
);

CREATE TABLE EROSKETAK (
    erosketak_id smallint unsigned  PRIMARY KEY,
    dirutotala DECIMAL(10, 2),
    jatorria enum('online','fisikoa'),
    Bezero_id smallint unsigned not null,
    Deskontua decimal(4,2),
    FOREIGN KEY (Bezero_id) REFERENCES BEZEROA(Bezero_id) on delete cascade on update cascade
);

CREATE TABLE Sarrera (
    sarrera_id smallint unsigned,
    erosketak_id smallint unsigned,
    saioa_id smallint unsigned,
    kant_sr smallint not null,
    primary key (sarrera_id, erosketak_id),
    FOREIGN KEY (erosketak_id) REFERENCES EROSKETAK(erosketak_id) on delete cascade on update cascade,
    FOREIGN KEY (saioa_id) REFERENCES SAIOA(saioa_id) on delete cascade on update cascade
);


insert into ZINEMA values 
("Z1","Elorrieta-errekamari zinema","zinemaelorrieta@gmail.com", "123456789", "Bilbao", "Lehendakari Agirre", 4,"ElorrietaYt","ElorrietaTw","ElorrietaInsta","ElorrietaFace");

insert into ZINEMA values 
("Z2","Basauri zinema","zinemabasauri@gmail.com", "123456789", "Basauri", "Pozokoetxe", 6 ,"BasaurizinemaYt","BasaurizinemaTw","BasaurizinemaInsta","BasaurizinemaFace");

insert into ZINEMA  values 
("Z3","Ideal zinema","zinemaideal@gmail.com", "123456789", "Bilbao", "Juan Ajuriaguerra", 7,"IdealYt","IdealTw","IdealInsta","IdealFace");

insert into ZINEMA  values 
("Z4","Portugalete zinema","zinemaportu@gmail.com", "123456789", "Portugalete", "Buenavista", 2,"PortuzinemaYt","PortuzinemaTw","PortuzinemaInsta","PortuzinemaFace");

insert into ZINEMA  values 
("Z5","Gazteiz zinema","zinemagazteiz@gmail.com", "123456789", "Gazteiz", "La Musica Ibilbidea", 10,"GazteizZinemaYt","GazteizZinemaTw","GazteizZinemaInsta","GazteizZinemaFace");

insert into FILMA values (1, "Drama", "9.5", "Handia", 116, "Jon Garaño", 2017);

insert into FILMA values (2, "Drama", "9.5", "La Lista de Schidler", 195, "Steven Spielberg", 1994);

insert into FILMA values (3, "Drama", "9.5", "Cadena Perpetua", 142, "Frank Darabont", 1995);

insert into FILMA values (4, "Drama", "9.5", "Million Dollar Baby", 132, "Clint Eastwood", 2005);

insert into FILMA values (5, "Beldurra", "9.5", "Psicosis", 109, "Alfred hitchcock", 1961);

insert into FILMA values (6, "Beldurra", "9.5", "El Resplandor", 116, "Stanley Kubrick", 1980);

insert into FILMA values (7, "Beldurra", "9.5", "Dracula", 155, "Francis Ford Coppola", 1993);

insert into FILMA values (8, "Beldurra", "9.5", "Cisne Negro", 110, "Darren Aronofsky", 2011);

insert into FILMA values (9, "Sci-Fi", "9.5", "Odisea 2001", 142, "Arthur C. Clarke", 1968);

insert into FILMA values (10, "Sci-Fi", "9.5", "Alien", 117, "Dan o´bannon", 1979);

insert into FILMA values (11, "Sci-Fi", "9.5", "El Planeta de los Simios", 115, "Pierre Boulle", 1968);

insert into FILMA values (12, "Sci-Fi", "9.5", "Novia de Frankie", 75, "Mary Shelley", 1935);

insert into FILMA values (13, "Komedia", "9.5", "Scary Movie", 88, "keenen Ivory Wayans", 2000);

insert into FILMA values (14, "Komedia", "9.5", "El Gran Lebowsky", 117, "Ethan Jesse", 1998);

insert into FILMA values (15, "Komedia", "9.5", "La vida de Brian", 94, "Terry Jones", 1980);

insert into FILMA values (16, "komedia", "9.5", "Aterriza como puedas", 88, "Jim Abrahams", 1980);

INSERT INTO BEZEROA  VALUES (1, '12345678A', 'Juan', 'Pérez', 'Gizona', 'juan@gmail.com', '123456789', 'JuanPe','pasahitza1', '1990-05-15');

INSERT INTO BEZEROA VALUES (2, '87654321B', 'Ana', 'López', 'Emakumea', 'ana@gmail.com', '987654321', 'AnaLo','pasahitza2', '1988-08-25');

INSERT INTO BEZEROA VALUES (3, '23456789C', 'Pedro', 'García', 'Gizona', 'pedro@gmail.com', '654321987','PedroGa', 'pasahitza3', '1995-03-10');

INSERT INTO BEZEROA  VALUES (4, '98765432D', 'María', 'Martínez', 'Emakumea', 'maria@gmail.com', '321987654', 'MariaMar','pasahitza4', '1992-12-20');

INSERT INTO BEZEROA VALUES (5, '34567890E', 'Javier', 'Fernández', 'Gizona', 'javier@gmail.com', '987123456', 'JavierFer','pasahitza5', '1987-06-30');

INSERT INTO BEZEROA VALUES (6, '09876543F', 'Laura', 'Gómez', 'Emakumea', 'laura@gmail.com', '456789012', 'LauraGo','pasahitza6', '1993-09-05');

INSERT INTO BEZEROA VALUES (7, '45678901G', 'Carlos', 'Rodríguez', 'Gizona', 'carlos@gmail.com', '654987321','CarlosRo','pasahitza7', '1991-02-17');

INSERT INTO BEZEROA VALUES (8, '76543210H', 'Sara', 'López', 'Emakumea', 'sara@gmail.com', '789456123', 'SaraLo','pasahitza8', '1994-11-12');

INSERT INTO BEZEROA VALUES (9, '56789012I', 'Miguel', 'Hernández', 'Gizona', 'miguel@gmail.com', '234567890','MiguelHer','pasahitza9', '1989-07-22');

INSERT INTO BEZEROA VALUES (10, '67890123J', 'Elena', 'Díaz', 'Emakumea', 'elena@gmail.com', '890123456','ElenaDi' ,'pasahitza10', '1996-04-03');

INSERT INTO ARETOA VALUES (1, "Z1", "Areto1");

INSERT INTO ARETOA VALUES (2, "Z1", "Areto2");

INSERT INTO ARETOA VALUES (3, "Z1", "Areto3");

INSERT INTO ARETOA VALUES (4, "Z1", "Areto4");

INSERT INTO ARETOA VALUES (5, "Z1", "Areto5");

INSERT INTO ARETOA VALUES (1, "Z2", "Areto1");

INSERT INTO ARETOA VALUES (2, "Z2", "Areto2");

INSERT INTO ARETOA VALUES (3, "Z2", "Areto3");

INSERT INTO ARETOA VALUES (4, "Z2", "Areto4");

INSERT INTO ARETOA VALUES (5, "Z2", "Areto5");

INSERT INTO ARETOA VALUES (1, "Z3", "Areto1");

INSERT INTO ARETOA VALUES (2, "Z3", "Areto2");

INSERT INTO ARETOA VALUES (3, "Z3", "Areto3");

INSERT INTO ARETOA VALUES (4, "Z3", "Areto4");

INSERT INTO ARETOA VALUES (5, "Z3", "Areto5");

INSERT INTO ARETOA VALUES (1, "Z4", "Areto1");

INSERT INTO ARETOA VALUES (2, "Z4", "Areto2");

INSERT INTO ARETOA VALUES (3, "Z4", "Areto3");

INSERT INTO ARETOA VALUES (4, "Z4", "Areto4");

INSERT INTO ARETOA VALUES (5, "Z4", "Areto5");

INSERT INTO ARETOA VALUES (1, "Z5", "Areto1");

INSERT INTO ARETOA VALUES (2, "Z5", "Areto2");

INSERT INTO ARETOA VALUES (3, "Z5", "Areto3");

INSERT INTO ARETOA VALUES (4, "Z5", "Areto4");

INSERT INTO ARETOA VALUES (5, "Z5", "Areto5");

#HEMEN SAIOEN EXCELA IMPORTATU BEHAR DUGU 

INSERT INTO erosketak VALUES (1, 38,'online',1,30);

INSERT INTO erosketak VALUES (12, 57,'fisikoa',2,30);

INSERT INTO erosketak  VALUES (13, 76,'fisikoa',3,30);

INSERT INTO erosketak VALUES (4,28.5,'online',4,30);

INSERT INTO erosketak VALUES (5, 9.5,'online',5,null);

INSERT INTO erosketak  VALUES (6, 19,'online',6,20);

INSERT INTO erosketak VALUES (7, 47.6,'online',7,30);

INSERT INTO erosketak VALUES (8, 19,'online',8,20);

INSERT INTO erosketak VALUES (9, 9.5,'online',9,null);

INSERT INTO erosketak VALUES (11, 66.5,'fisikoa',6,30);

INSERT INTO SARRERA  VALUES (1, 1, 1, 3);

INSERT INTO SARRERA VALUES (2, 12, 7, 8);

INSERT INTO SARRERA VALUES (3, 13, 13, 9);

INSERT INTO SARRERA VALUES (4, 4, 19, 1);

INSERT INTO SARRERA VALUES (5, 5, 25, 4);

INSERT INTO SARRERA VALUES (6, 6, 26, 2);

INSERT INTO SARRERA VALUES (7, 7, 32, 3);

INSERT INTO SARRERA  VALUES (8, 8, 50, 4);

INSERT INTO SARRERA VALUES (9, 9, 63, 5);

INSERT INTO SARRERA VALUES (10, 11, 100, 2);