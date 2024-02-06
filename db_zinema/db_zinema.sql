drop database db_elorrietazinema;

CREATE DATABASE IF NOT EXISTS db_elorrietazinema
CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

use db_elorrietazinema;

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

INSERT INTO BEZEROA  VALUES (1, '12345678A', 'Juan', 'Pérez', 'Gizona', 'juan@gmail.com', '123456789', 'pasahitza1', '1990-05-15');

INSERT INTO BEZEROA VALUES (2, '87654321B', 'Ana', 'López', 'Emakumea', 'ana@gmail.com', '987654321', 'pasahitza2', '1988-08-25');

INSERT INTO BEZEROA VALUES (3, '23456789C', 'Pedro', 'García', 'Gizona', 'pedro@gmail.com', '654321987', 'pasahitza3', '1995-03-10');

INSERT INTO BEZEROA  VALUES (4, '98765432D', 'María', 'Martínez', 'Emakumea', 'maria@gmail.com', '321987654', 'pasahitza4', '1992-12-20');

INSERT INTO BEZEROA VALUES (5, '34567890E', 'Javier', 'Fernández', 'Gizona', 'javier@gmail.com', '987123456', 'pasahitza5', '1987-06-30');

INSERT INTO BEZEROA VALUES (6, '09876543F', 'Laura', 'Gómez', 'Emakumea', 'laura@gmail.com', '456789012', 'pasahitza6', '1993-09-05');

INSERT INTO BEZEROA VALUES (7, '45678901G', 'Carlos', 'Rodríguez', 'Gizona', 'carlos@gmail.com', '654987321', 'pasahitza7', '1991-02-17');

INSERT INTO BEZEROA VALUES (8, '76543210H', 'Sara', 'López', 'Emakumea', 'sara@gmail.com', '789456123', 'pasahitza8', '1994-11-12');

INSERT INTO BEZEROA VALUES (9, '56789012I', 'Miguel', 'Hernández', 'Gizona', 'miguel@gmail.com', '234567890', 'pasahitza9', '1989-07-22');

INSERT INTO BEZEROA VALUES (10, '67890123J', 'Elena', 'Díaz', 'Emakumea', 'elena@gmail.com', '890123456', 'pasahitza10', '1996-04-03');


#Kontsultak

select s.eguna, s.ordutegia, f.izena, (f.prezioa * f.prezioa) as dirukopurua
from saioa s join filma f
using (filma_id)
order by dirukopurua
limit 5;

select f.izena, s.prezioa 
from filma f join saioa
using (saioa_id)
join sarrera
using (saioa_id)
limit 5;

select e.kant, z.izena
from erosketak join sarrea using (sarrera_id)


