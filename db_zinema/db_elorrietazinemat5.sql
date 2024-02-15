-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-02-2024 a las 13:04:21
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_elorrietazinemat5`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aretoa`
--

CREATE TABLE `aretoa` (
  `aretoa_id` smallint(5) UNSIGNED NOT NULL,
  `zinema_id` smallint(5) UNSIGNED NOT NULL,
  `izena` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `aretoa`
--

INSERT INTO `aretoa` (`aretoa_id`, `zinema_id`, `izena`) VALUES
(1, 1, 'Areto1'),
(2, 1, 'Areto2'),
(3, 1, 'Areto3'),
(4, 1, 'Areto4'),
(5, 1, 'Areto5'),
(6, 2, 'Areto1'),
(7, 2, 'Areto2'),
(8, 2, 'Areto3'),
(9, 2, 'Areto4'),
(10, 2, 'Areto5'),
(11, 3, 'Areto1'),
(12, 3, 'Areto2'),
(13, 3, 'Areto3'),
(14, 3, 'Areto4'),
(15, 3, 'Areto5'),
(16, 4, 'Areto1'),
(17, 4, 'Areto2'),
(18, 4, 'Areto3'),
(19, 4, 'Areto4'),
(20, 4, 'Areto5'),
(21, 5, 'Areto1'),
(22, 5, 'Areto2'),
(23, 5, 'Areto3'),
(24, 5, 'Areto4'),
(25, 5, 'Areto5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bezeroa`
--

CREATE TABLE `bezeroa` (
  `Bezero_id` smallint(5) UNSIGNED NOT NULL,
  `NAN` varchar(9) NOT NULL,
  `izena` varchar(30) NOT NULL,
  `abizena` varchar(30) NOT NULL,
  `Generoa` varchar(10) DEFAULT NULL,
  `Email` varchar(30) NOT NULL,
  `telefonoa` varchar(11) DEFAULT NULL,
  `erabiltzailea` varchar(15) NOT NULL,
  `pasahitza` varchar(12) NOT NULL,
  `jaio_data` date DEFAULT NULL CHECK (`jaio_data` < '2010-01-01')
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `bezeroa`
--

INSERT INTO `bezeroa` (`Bezero_id`, `NAN`, `izena`, `abizena`, `Generoa`, `Email`, `telefonoa`, `erabiltzailea`, `pasahitza`, `jaio_data`) VALUES
(1, '12345678A', 'Juan', 'Pérez', 'Gizona', 'juan@gmail.com', '123456789', 'JuanPe', 'pasahitza1', '1990-05-15'),
(2, '87654321B', 'Ana', 'López', 'Emakumea', 'ana@gmail.com', '987654321', 'AnaLo', 'pasahitza2', '1988-08-25'),
(3, '23456789C', 'Pedro', 'García', 'Gizona', 'pedro@gmail.com', '654321987', 'PedroGa', 'pasahitza3', '1995-03-10'),
(4, '98765432D', 'María', 'Martínez', 'Emakumea', 'maria@gmail.com', '321987654', 'MariaMar', 'pasahitza4', '1992-12-20'),
(5, '34567890E', 'Javier', 'Fernández', 'Gizona', 'javier@gmail.com', '987123456', 'JavierFer', 'pasahitza5', '1987-06-30'),
(6, '09876543F', 'Laura', 'Gómez', 'Emakumea', 'laura@gmail.com', '456789012', 'LauraGo', 'pasahitza6', '1993-09-05'),
(7, '45678901G', 'Carlos', 'Rodríguez', 'Gizona', 'carlos@gmail.com', '654987321', 'CarlosRo', 'pasahitza7', '1991-02-17'),
(8, '76543210H', 'Sara', 'López', 'Emakumea', 'sara@gmail.com', '789456123', 'SaraLo', 'pasahitza8', '1994-11-12'),
(9, '56789012I', 'Miguel', 'Hernández', 'Gizona', 'miguel@gmail.com', '234567890', 'MiguelHer', 'pasahitza9', '1989-07-22'),
(10, '67890123J', 'Elena', 'Díaz', 'Emakumea', 'elena@gmail.com', '890123456', 'ElenaDi', 'pasahitza10', '1996-04-03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `erosketak`
--

CREATE TABLE `erosketak` (
  `erosketak_id` smallint(5) UNSIGNED NOT NULL,
  `dirutotala` decimal(10,2) DEFAULT NULL,
  `jatorria` enum('online','fisikoa') DEFAULT NULL,
  `Bezero_id` smallint(5) UNSIGNED NOT NULL,
  `Deskontua` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `filma`
--

CREATE TABLE `filma` (
  `filma_id` smallint(5) UNSIGNED NOT NULL,
  `generoa` varchar(30) DEFAULT NULL,
  `prezioa` decimal(10,2) DEFAULT NULL,
  `izena` varchar(25) DEFAULT NULL,
  `Iraupena` int(11) DEFAULT NULL,
  `Egilea` varchar(20) DEFAULT NULL,
  `Estrenaldi_urtea` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `filma`
--

INSERT INTO `filma` (`filma_id`, `generoa`, `prezioa`, `izena`, `Iraupena`, `Egilea`, `Estrenaldi_urtea`) VALUES
(1, 'Drama', 9.50, 'Handia', 116, 'Jon Garaño', 2017),
(2, 'Drama', 9.50, 'La Lista de Schidler', 195, 'Steven Spielberg', 1994),
(3, 'Drama', 9.50, 'Cadena Perpetua', 142, 'Frank Darabont', 1995),
(4, 'Drama', 9.50, 'Million Dollar Baby', 132, 'Clint Eastwood', 2005),
(5, 'Beldurra', 9.50, 'Psicosis', 109, 'Alfred hitchcock', 1961),
(6, 'Beldurra', 9.50, 'El Resplandor', 116, 'Stanley Kubrick', 1980),
(7, 'Beldurra', 9.50, 'Dracula', 155, 'Francis Ford Coppola', 1993),
(8, 'Beldurra', 9.50, 'Cisne Negro', 110, 'Darren Aronofsky', 2011),
(9, 'Sci-Fi', 9.50, 'Odisea 2001', 142, 'Arthur C. Clarke', 1968),
(10, 'Sci-Fi', 9.50, 'Alien', 117, 'Dan o´bannon', 1979),
(11, 'Sci-Fi', 9.50, 'El Planeta de los Simios', 115, 'Pierre Boulle', 1968),
(12, 'Sci-Fi', 9.50, 'Novia de Frankie', 75, 'Mary Shelley', 1935),
(13, 'Komedia', 9.50, 'Scary Movie', 88, 'keenen Ivory Wayans', 2000),
(14, 'Komedia', 9.50, 'El Gran Lebowsky', 117, 'Ethan Jesse', 1998),
(15, 'Komedia', 9.50, 'La vida de Brian', 94, 'Terry Jones', 1980),
(16, 'komedia', 9.50, 'Aterriza como puedas', 88, 'Jim Abrahams', 1980);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `saioa`
--

CREATE TABLE `saioa` (
  `saioa_id` smallint(5) UNSIGNED NOT NULL,
  `eguna` date DEFAULT NULL,
  `ordutegia` time DEFAULT NULL,
  `filma_id` smallint(5) UNSIGNED DEFAULT NULL,
  `aretoa_id` smallint(5) UNSIGNED DEFAULT NULL,
  `zinema_id` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `saioa`
--

INSERT INTO `saioa` (`saioa_id`, `eguna`, `ordutegia`, `filma_id`, `aretoa_id`, `zinema_id`) VALUES
(1, '2024-02-06', '13:00:00', 1, 1, 1),
(2, '2024-02-06', '15:30:00', 2, 2, 1),
(3, '2024-02-06', '18:00:00', 3, 3, 1),
(4, '2024-02-07', '13:30:00', 4, 4, 1),
(5, '2024-02-07', '16:00:00', 5, 5, 1),
(6, '2024-02-07', '19:00:00', 6, 6, 2),
(7, '2024-02-08', '14:00:00', 7, 7, 2),
(8, '2024-02-08', '17:30:00', 8, 8, 2),
(9, '2024-02-08', '20:00:00', 9, 9, 2),
(10, '2024-02-09', '12:45:00', 10, 10, 2),
(11, '2024-02-09', '15:15:00', 11, 11, 3),
(12, '2024-02-09', '17:45:00', 12, 12, 3),
(13, '2024-02-10', '11:30:00', 13, 13, 3),
(14, '2024-02-10', '14:00:00', 14, 14, 3),
(15, '2024-02-10', '16:30:00', 15, 15, 3),
(16, '2024-02-11', '10:00:00', 16, 16, 4),
(17, '2024-02-11', '12:15:00', 1, 17, 4),
(18, '2024-02-11', '15:00:00', 2, 18, 4),
(19, '2024-02-12', '13:45:00', 3, 19, 4),
(20, '2024-02-12', '16:00:00', 4, 20, 4),
(21, '2024-02-12', '18:45:00', 5, 21, 5),
(22, '2024-02-13', '12:30:00', 6, 22, 5),
(23, '2024-02-13', '15:00:00', 7, 23, 5),
(24, '2024-02-13', '17:30:00', 8, 24, 5),
(25, '2024-02-14', '14:15:00', 9, 25, 5),
(26, '2024-02-14', '16:45:00', 10, 1, 1),
(27, '2024-02-14', '19:00:00', 11, 2, 1),
(28, '2024-02-15', '11:00:00', 12, 3, 1),
(29, '2024-02-15', '13:30:00', 13, 4, 1),
(30, '2024-02-15', '16:15:00', 14, 5, 1),
(31, '2024-02-16', '12:00:00', 15, 6, 2),
(32, '2024-02-16', '14:30:00', 16, 7, 2),
(33, '2024-02-16', '17:00:00', 1, 8, 2),
(34, '2024-02-17', '13:15:00', 2, 9, 2),
(35, '2024-02-17', '15:45:00', 3, 10, 2),
(36, '2024-02-17', '18:30:00', 4, 11, 3),
(37, '2024-02-18', '10:30:00', 5, 12, 3),
(38, '2024-02-18', '13:00:00', 6, 13, 3),
(39, '2024-02-18', '15:45:00', 7, 14, 3),
(40, '2024-02-19', '11:00:00', 8, 15, 3),
(41, '2024-02-19', '14:00:00', 9, 16, 4),
(42, '2024-02-19', '16:30:00', 10, 17, 4),
(43, '2024-02-20', '12:15:00', 11, 18, 4),
(44, '2024-02-20', '14:45:00', 12, 19, 4),
(45, '2024-02-20', '17:00:00', 13, 20, 4),
(46, '2024-02-21', '10:45:00', 14, 21, 5),
(47, '2024-02-21', '13:30:00', 15, 22, 5),
(48, '2024-02-21', '16:15:00', 16, 23, 5),
(49, '2024-02-22', '12:00:00', 1, 24, 5),
(50, '2024-02-22', '14:30:00', 2, 25, 5),
(51, '2024-02-22', '17:00:00', 3, 1, 1),
(52, '2024-02-23', '13:15:00', 4, 2, 1),
(53, '2024-02-23', '15:45:00', 5, 3, 1),
(54, '2024-02-23', '18:30:00', 6, 4, 1),
(55, '2024-02-24', '10:30:00', 7, 5, 1),
(56, '2024-02-24', '13:00:00', 8, 6, 2),
(57, '2024-02-24', '15:45:00', 9, 7, 2),
(58, '2024-02-25', '11:00:00', 10, 8, 2),
(59, '2024-02-25', '14:00:00', 11, 9, 2),
(60, '2024-02-25', '16:30:00', 12, 10, 2),
(61, '2024-02-26', '12:15:00', 13, 11, 3),
(62, '2024-02-26', '14:45:00', 14, 12, 3),
(63, '2024-02-26', '17:00:00', 15, 13, 3),
(64, '2024-02-27', '10:45:00', 16, 14, 3),
(65, '2024-02-27', '13:30:00', 1, 15, 3),
(66, '2024-02-27', '16:15:00', 2, 16, 4),
(67, '2024-02-28', '12:00:00', 3, 17, 4),
(68, '2024-02-28', '14:30:00', 4, 18, 4),
(69, '2024-02-28', '17:00:00', 5, 19, 4),
(70, '2024-02-29', '11:15:00', 6, 20, 4),
(71, '2024-02-29', '13:45:00', 7, 21, 5),
(72, '2024-02-29', '16:30:00', 8, 22, 5),
(73, '2024-03-01', '12:15:00', 9, 23, 5),
(74, '2024-03-01', '14:45:00', 10, 24, 5),
(75, '2024-03-01', '17:00:00', 11, 25, 5),
(76, '2024-03-02', '11:00:00', 12, 1, 1),
(77, '2024-03-02', '13:30:00', 13, 2, 1),
(78, '2024-03-02', '16:15:00', 14, 3, 1),
(79, '2024-03-03', '12:00:00', 15, 4, 1),
(80, '2024-03-03', '14:30:00', 16, 5, 1),
(81, '2024-03-03', '17:00:00', 1, 6, 2),
(82, '2024-03-04', '11:15:00', 2, 7, 2),
(83, '2024-03-04', '13:45:00', 3, 8, 2),
(84, '2024-03-04', '16:30:00', 4, 9, 2),
(85, '2024-03-05', '12:15:00', 5, 10, 2),
(86, '2024-03-05', '14:45:00', 6, 11, 3),
(87, '2024-03-05', '17:00:00', 7, 12, 3),
(88, '2024-03-06', '11:00:00', 8, 13, 3),
(89, '2024-03-06', '13:30:00', 9, 14, 3),
(90, '2024-03-06', '16:15:00', 10, 15, 3),
(91, '2024-03-07', '12:00:00', 11, 16, 4),
(92, '2024-03-07', '14:30:00', 12, 17, 4),
(93, '2024-03-07', '17:00:00', 13, 18, 4),
(94, '2024-03-08', '10:45:00', 14, 19, 4),
(95, '2024-03-08', '13:30:00', 15, 20, 4),
(96, '2024-03-08', '16:15:00', 16, 21, 5),
(97, '2024-03-09', '12:00:00', 1, 22, 5),
(98, '2024-03-09', '14:30:00', 2, 23, 5),
(99, '2024-03-09', '17:00:00', 3, 24, 5),
(100, '2024-03-10', '11:15:00', 4, 25, 5),
(101, '2024-03-10', '13:45:00', 5, 1, 1),
(102, '2024-03-10', '16:30:00', 6, 2, 1),
(103, '2024-03-11', '12:15:00', 7, 3, 1),
(104, '2024-03-11', '14:45:00', 8, 4, 1),
(105, '2024-03-11', '17:00:00', 9, 5, 1),
(106, '2024-03-12', '11:00:00', 10, 6, 2),
(107, '2024-03-12', '13:30:00', 11, 7, 2),
(108, '2024-03-12', '16:15:00', 12, 8, 2),
(109, '2024-03-13', '12:00:00', 13, 9, 2),
(110, '2024-03-13', '14:30:00', 14, 10, 2),
(111, '2024-03-13', '17:00:00', 15, 11, 3),
(112, '2024-03-14', '11:15:00', 16, 12, 3),
(113, '2024-03-14', '13:45:00', 1, 13, 3),
(114, '2024-03-14', '16:30:00', 2, 14, 3),
(115, '2024-03-15', '12:15:00', 3, 15, 3),
(116, '2024-03-15', '14:45:00', 4, 16, 4),
(117, '2024-03-15', '17:00:00', 5, 17, 4),
(118, '2024-03-16', '11:00:00', 6, 18, 4),
(119, '2024-03-16', '13:30:00', 7, 19, 4),
(120, '2024-03-16', '16:15:00', 8, 20, 4),
(121, '2024-03-17', '12:00:00', 9, 21, 5),
(122, '2024-03-17', '14:30:00', 10, 22, 5),
(123, '2024-03-17', '17:00:00', 11, 23, 5),
(124, '2024-03-18', '10:45:00', 12, 24, 5),
(125, '2024-03-18', '13:30:00', 13, 25, 5),
(126, '2024-03-18', '16:15:00', 14, 1, 1),
(127, '2024-03-19', '12:00:00', 15, 2, 1),
(128, '2024-03-19', '14:30:00', 16, 3, 1),
(129, '2024-03-19', '17:00:00', 1, 4, 1),
(130, '2024-03-20', '11:15:00', 2, 5, 1),
(131, '2024-03-20', '13:45:00', 3, 6, 2),
(132, '2024-03-20', '16:30:00', 4, 7, 2),
(133, '2024-03-21', '12:15:00', 5, 8, 2),
(134, '2024-03-21', '14:45:00', 6, 9, 2),
(135, '2024-03-21', '17:00:00', 7, 10, 2),
(136, '2024-03-22', '11:00:00', 8, 11, 3),
(137, '2024-03-22', '13:30:00', 9, 12, 3),
(138, '2024-03-22', '16:15:00', 10, 13, 3),
(139, '2024-03-23', '12:00:00', 11, 14, 3),
(140, '2024-03-23', '14:30:00', 12, 15, 3),
(141, '2024-03-23', '17:00:00', 13, 16, 4),
(142, '2024-03-24', '11:15:00', 14, 17, 4),
(143, '2024-03-24', '13:45:00', 15, 18, 4),
(144, '2024-03-24', '16:30:00', 16, 19, 4),
(145, '2024-03-25', '12:15:00', 1, 20, 4),
(146, '2024-03-25', '14:45:00', 2, 21, 5),
(147, '2024-03-25', '17:00:00', 3, 22, 5),
(148, '2024-03-26', '11:00:00', 4, 23, 5),
(149, '2024-03-26', '13:30:00', 5, 24, 5),
(150, '2024-03-26', '16:15:00', 6, 25, 5),
(151, '2024-03-27', '12:00:00', 7, 1, 1),
(152, '2024-03-27', '14:30:00', 8, 2, 1),
(153, '2024-03-27', '17:00:00', 9, 3, 1),
(154, '2024-03-28', '10:45:00', 10, 4, 1),
(155, '2024-03-28', '13:30:00', 11, 5, 1),
(156, '2024-03-28', '16:15:00', 12, 6, 2),
(157, '2024-03-29', '12:00:00', 13, 7, 2),
(158, '2024-03-29', '14:30:00', 14, 8, 2),
(159, '2024-03-29', '17:00:00', 15, 9, 2),
(160, '2024-03-30', '11:15:00', 16, 10, 2),
(161, '2024-03-30', '13:45:00', 1, 11, 3),
(162, '2024-03-30', '16:30:00', 2, 12, 3),
(163, '2024-03-31', '12:15:00', 3, 13, 3),
(164, '2024-03-31', '14:45:00', 4, 14, 3),
(165, '2024-03-31', '17:00:00', 5, 15, 3),
(166, '2024-04-01', '11:00:00', 6, 16, 4),
(167, '2024-04-01', '13:30:00', 7, 17, 4),
(168, '2024-04-02', '12:00:00', 8, 18, 4),
(169, '2024-04-02', '14:30:00', 9, 19, 4),
(170, '2024-04-02', '17:00:00', 10, 20, 4),
(171, '2024-04-03', '11:15:00', 11, 21, 5),
(172, '2024-04-03', '13:45:00', 12, 22, 5),
(173, '2024-04-03', '16:30:00', 13, 23, 5),
(174, '2024-04-04', '12:15:00', 14, 24, 5),
(175, '2024-04-04', '14:45:00', 15, 25, 5),
(176, '2024-04-04', '17:00:00', 16, 1, 1),
(177, '2024-04-05', '11:00:00', 1, 2, 1),
(178, '2024-04-05', '13:30:00', 2, 3, 1),
(179, '2024-04-05', '16:15:00', 3, 4, 1),
(180, '2024-04-05', '13:30:00', 4, 5, 1),
(181, '2024-04-05', '16:15:00', 5, 6, 2),
(182, '2024-04-06', '12:00:00', 6, 7, 2),
(183, '2024-04-06', '14:30:00', 7, 8, 2),
(184, '2024-04-06', '16:45:00', 8, 9, 2),
(185, '2024-04-07', '10:00:00', 9, 10, 2),
(186, '2024-04-07', '11:45:00', 10, 11, 3),
(187, '2024-04-07', '16:15:00', 11, 12, 3),
(188, '2024-04-08', '12:00:00', 12, 13, 3),
(189, '2024-04-08', '14:30:00', 13, 14, 3),
(190, '2024-04-08', '17:00:00', 14, 15, 3),
(191, '2024-04-09', '11:15:00', 15, 16, 4),
(192, '2024-04-09', '13:45:00', 16, 17, 4),
(193, '2024-04-09', '16:30:00', 1, 18, 4),
(194, '2024-04-10', '12:15:00', 2, 19, 4),
(195, '2024-04-10', '14:45:00', 3, 20, 4),
(196, '2024-04-10', '17:00:00', 4, 21, 5),
(197, '2024-04-11', '11:00:00', 5, 22, 5),
(198, '2024-04-11', '13:30:00', 6, 23, 5),
(199, '2024-04-11', '16:15:00', 7, 24, 5),
(200, '2024-04-12', '12:00:00', 8, 25, 5),
(201, '2024-02-17', '13:00:01', 9, 1, 1),
(207, '2024-02-17', '14:00:01', 15, 7, 2),
(213, '2024-02-17', '11:30:01', 5, 13, 3),
(219, '2024-02-17', '13:45:01', 11, 19, 4),
(225, '2024-02-17', '14:15:01', 1, 25, 5),
(226, '2024-02-18', '16:45:01', 2, 1, 1),
(232, '2024-02-18', '14:30:01', 8, 7, 2),
(238, '2024-02-18', '13:00:01', 14, 13, 3),
(244, '2024-02-18', '14:45:01', 4, 19, 4),
(250, '2024-02-18', '14:30:01', 10, 25, 5),
(251, '2024-02-18', '17:00:01', 11, 1, 1),
(257, '2024-02-18', '15:45:01', 1, 7, 2),
(263, '2024-02-18', '17:00:01', 7, 13, 3),
(269, '2024-02-18', '17:00:01', 13, 19, 4),
(275, '2024-02-18', '17:00:01', 3, 25, 5),
(276, '2024-02-18', '11:00:01', 4, 1, 1),
(282, '2024-02-18', '11:15:01', 10, 7, 2),
(288, '2024-02-18', '11:00:01', 16, 13, 3),
(294, '2024-02-18', '10:45:01', 6, 19, 4),
(300, '2024-02-18', '11:15:01', 12, 25, 5),
(301, '2024-02-19', '13:45:01', 13, 1, 1),
(307, '2024-02-19', '13:30:01', 3, 7, 2),
(313, '2024-02-19', '13:45:01', 9, 13, 3),
(319, '2024-02-19', '13:30:01', 15, 19, 4),
(325, '2024-02-19', '13:30:01', 5, 25, 5),
(326, '2024-02-19', '16:15:01', 6, 1, 1),
(332, '2024-02-19', '16:30:01', 12, 7, 2),
(338, '2024-02-19', '16:15:01', 2, 13, 3),
(344, '2024-02-19', '16:30:01', 8, 19, 4),
(350, '2024-02-19', '16:15:01', 14, 25, 5),
(351, '2024-02-19', '12:00:01', 15, 1, 1),
(357, '2024-02-19', '12:00:01', 5, 7, 2),
(363, '2024-02-19', '12:15:01', 11, 13, 3),
(369, '2024-02-19', '14:30:01', 1, 19, 4),
(375, '2024-02-19', '14:45:01', 7, 25, 5),
(376, '2024-02-20', '17:00:01', 8, 1, 1),
(382, '2024-02-20', '12:00:01', 14, 7, 2),
(388, '2024-02-20', '12:00:01', 4, 13, 3),
(394, '2024-02-20', '12:15:01', 10, 19, 4),
(400, '2024-02-20', '12:00:01', 16, 25, 5),
(401, '2024-02-20', '13:00:02', 1, 1, 1),
(407, '2024-02-20', '14:00:02', 7, 7, 2),
(413, '2024-02-20', '11:30:02', 13, 13, 3),
(419, '2024-02-20', '13:45:02', 3, 19, 4),
(425, '2024-02-20', '14:15:02', 9, 25, 5),
(426, '2024-02-20', '16:45:02', 10, 1, 1),
(432, '2024-02-20', '14:30:02', 16, 7, 2),
(438, '2024-02-20', '13:00:02', 6, 13, 3),
(444, '2024-02-20', '14:45:02', 12, 19, 4),
(450, '2024-02-20', '14:30:02', 2, 25, 5),
(451, '2024-02-21', '17:00:02', 3, 1, 1),
(457, '2024-02-21', '15:45:02', 9, 7, 2),
(463, '2024-02-21', '17:00:02', 15, 13, 3),
(469, '2024-02-21', '17:00:02', 5, 19, 4),
(475, '2024-02-21', '17:00:02', 11, 25, 5),
(476, '2024-02-21', '11:00:02', 12, 1, 1),
(482, '2024-02-21', '11:15:02', 2, 7, 2),
(488, '2024-02-21', '11:00:02', 8, 13, 3),
(494, '2024-02-21', '10:45:02', 14, 19, 4),
(500, '2024-02-21', '11:15:02', 4, 25, 5),
(501, '2024-02-21', '13:45:02', 5, 1, 1),
(507, '2024-02-21', '13:30:02', 11, 7, 2),
(513, '2024-02-21', '13:45:02', 1, 13, 3),
(519, '2024-02-21', '13:30:02', 7, 19, 4),
(525, '2024-02-21', '13:30:02', 13, 25, 5),
(526, '2024-02-22', '16:15:02', 14, 1, 1),
(532, '2024-02-22', '16:30:02', 4, 7, 2),
(538, '2024-02-22', '16:15:02', 10, 13, 3),
(544, '2024-02-22', '16:30:02', 16, 19, 4),
(550, '2024-02-22', '16:15:02', 6, 25, 5),
(551, '2024-02-22', '12:00:02', 7, 1, 1),
(557, '2024-02-22', '12:00:02', 13, 7, 2),
(563, '2024-02-22', '12:15:02', 3, 13, 3),
(569, '2024-02-22', '14:30:02', 9, 19, 4),
(575, '2024-02-22', '14:45:02', 15, 25, 5),
(576, '2024-02-22', '17:00:02', 16, 1, 1),
(582, '2024-02-22', '12:00:02', 6, 7, 2),
(588, '2024-02-22', '12:00:02', 12, 13, 3),
(594, '2024-02-22', '12:15:02', 2, 19, 4),
(600, '2024-02-22', '12:00:02', 8, 25, 5),
(601, '2024-02-23', '13:00:03', 9, 1, 1),
(607, '2024-02-23', '14:00:03', 15, 7, 2),
(613, '2024-02-23', '11:30:03', 5, 13, 3),
(619, '2024-02-23', '13:45:03', 11, 19, 4),
(625, '2024-02-23', '14:15:03', 1, 25, 5),
(626, '2024-02-23', '16:45:03', 2, 1, 1),
(632, '2024-02-23', '14:30:03', 8, 7, 2),
(638, '2024-02-23', '13:00:03', 14, 13, 3),
(644, '2024-02-23', '14:45:03', 4, 19, 4),
(650, '2024-02-23', '14:30:03', 10, 25, 5),
(651, '2024-02-23', '17:00:03', 11, 1, 1),
(657, '2024-02-23', '15:45:03', 1, 7, 2),
(663, '2024-02-23', '17:00:03', 7, 13, 3),
(669, '2024-02-23', '17:00:03', 13, 19, 4),
(675, '2024-02-23', '17:00:03', 3, 25, 5),
(676, '2024-02-24', '11:00:03', 4, 1, 1),
(682, '2024-02-24', '11:15:03', 10, 7, 2),
(688, '2024-02-24', '11:00:03', 16, 13, 3),
(694, '2024-02-24', '10:45:03', 6, 19, 4),
(700, '2024-02-24', '11:15:03', 12, 25, 5),
(701, '2024-02-24', '13:45:03', 13, 1, 1),
(707, '2024-02-24', '13:30:03', 3, 7, 2),
(713, '2024-02-24', '13:45:03', 9, 13, 3),
(719, '2024-02-24', '13:30:03', 15, 19, 4),
(725, '2024-02-24', '13:30:03', 5, 25, 5),
(726, '2024-02-24', '16:15:03', 6, 1, 1),
(732, '2024-02-24', '16:30:03', 12, 7, 2),
(738, '2024-02-24', '16:15:03', 2, 13, 3),
(744, '2024-02-24', '16:30:03', 8, 19, 4),
(750, '2024-02-24', '16:15:03', 14, 25, 5),
(751, '2024-02-25', '12:00:03', 15, 1, 1),
(757, '2024-02-25', '12:00:03', 5, 7, 2),
(763, '2024-02-25', '12:15:03', 11, 13, 3),
(769, '2024-02-25', '14:30:03', 1, 19, 4),
(775, '2024-02-25', '14:45:03', 7, 25, 5),
(776, '2024-02-25', '17:00:03', 8, 1, 1),
(782, '2024-02-25', '12:00:03', 14, 7, 2),
(788, '2024-02-25', '12:00:03', 4, 13, 3),
(794, '2024-02-25', '12:15:03', 10, 19, 4),
(800, '2024-02-25', '12:00:03', 16, 25, 5),
(801, '2024-02-25', '13:00:04', 1, 1, 1),
(807, '2024-02-25', '14:00:04', 7, 7, 2),
(813, '2024-02-25', '11:30:04', 13, 13, 3),
(819, '2024-02-25', '13:45:04', 3, 19, 4),
(825, '2024-02-25', '14:15:04', 9, 25, 5),
(826, '2024-02-26', '16:45:04', 10, 1, 1),
(832, '2024-02-26', '14:30:04', 16, 7, 2),
(838, '2024-02-26', '13:00:04', 6, 13, 3),
(844, '2024-02-26', '14:45:04', 12, 19, 4),
(850, '2024-02-26', '14:30:04', 2, 25, 5),
(851, '2024-02-26', '17:00:04', 3, 1, 1),
(857, '2024-02-26', '15:45:04', 9, 7, 2),
(863, '2024-02-26', '17:00:04', 15, 13, 3),
(869, '2024-02-26', '17:00:04', 5, 19, 4),
(875, '2024-02-26', '17:00:04', 11, 25, 5),
(876, '2024-02-26', '11:00:04', 12, 1, 1),
(882, '2024-02-26', '11:15:04', 2, 7, 2),
(888, '2024-02-26', '11:00:04', 8, 13, 3),
(894, '2024-02-26', '10:45:04', 14, 19, 4),
(900, '2024-02-26', '11:15:04', 4, 25, 5),
(901, '2024-02-27', '13:45:04', 5, 1, 1),
(907, '2024-02-27', '13:30:04', 11, 7, 2),
(913, '2024-02-27', '13:45:04', 1, 13, 3),
(919, '2024-02-27', '13:30:04', 7, 19, 4),
(925, '2024-02-27', '13:30:04', 13, 25, 5),
(926, '2024-02-27', '16:15:04', 14, 1, 1),
(932, '2024-02-27', '16:30:04', 4, 7, 2),
(938, '2024-02-27', '16:15:04', 10, 13, 3),
(944, '2024-02-27', '16:30:04', 16, 19, 4),
(950, '2024-02-27', '16:15:04', 6, 25, 5),
(951, '2024-02-27', '12:00:04', 7, 1, 1),
(957, '2024-02-27', '12:00:04', 13, 7, 2),
(963, '2024-02-27', '12:15:04', 3, 13, 3),
(969, '2024-02-27', '14:30:04', 9, 19, 4),
(975, '2024-02-27', '14:45:04', 15, 25, 5),
(976, '2024-02-28', '17:00:04', 16, 1, 1),
(982, '2024-02-28', '12:00:04', 6, 7, 2),
(988, '2024-02-28', '12:00:04', 12, 13, 3),
(994, '2024-02-28', '12:15:04', 2, 19, 4),
(1000, '2024-02-28', '12:00:04', 8, 25, 5),
(1001, '2024-02-28', '13:00:05', 9, 1, 1),
(1007, '2024-02-28', '14:00:05', 15, 7, 2),
(1013, '2024-02-28', '11:30:05', 5, 13, 3),
(1019, '2024-02-28', '13:45:05', 11, 19, 4),
(1025, '2024-02-28', '14:15:05', 1, 25, 5),
(1026, '2024-02-28', '16:45:05', 2, 1, 1),
(1032, '2024-02-28', '14:30:05', 8, 7, 2),
(1038, '2024-02-28', '13:00:05', 14, 13, 3),
(1044, '2024-02-28', '14:45:05', 4, 19, 4),
(1050, '2024-02-28', '14:30:05', 10, 25, 5),
(1051, '2024-02-29', '17:00:05', 11, 1, 1),
(1057, '2024-02-29', '15:45:05', 1, 7, 2),
(1063, '2024-02-29', '17:00:05', 7, 13, 3),
(1069, '2024-02-29', '17:00:05', 13, 19, 4),
(1075, '2024-02-29', '17:00:05', 3, 25, 5),
(1076, '2024-02-29', '11:00:05', 4, 1, 1),
(1082, '2024-02-29', '11:15:05', 10, 7, 2),
(1088, '2024-02-29', '11:00:05', 16, 13, 3),
(1094, '2024-02-29', '10:45:05', 6, 19, 4),
(1100, '2024-02-29', '11:15:05', 12, 25, 5),
(1101, '2024-02-29', '13:45:05', 13, 1, 1),
(1107, '2024-02-29', '13:30:05', 3, 7, 2),
(1113, '2024-02-29', '13:45:05', 9, 13, 3),
(1119, '2024-02-29', '13:30:05', 15, 19, 4),
(1125, '2024-02-29', '13:30:05', 5, 25, 5),
(1126, '2024-03-01', '16:15:05', 6, 1, 1),
(1132, '2024-03-01', '16:30:05', 12, 7, 2),
(1138, '2024-03-01', '16:15:05', 2, 13, 3),
(1144, '2024-03-01', '16:30:05', 8, 19, 4),
(1150, '2024-03-01', '16:15:05', 14, 25, 5),
(1151, '2024-03-01', '12:00:05', 15, 1, 1),
(1157, '2024-03-01', '12:00:05', 5, 7, 2),
(1163, '2024-03-01', '12:15:05', 11, 13, 3),
(1169, '2024-03-01', '14:30:05', 1, 19, 4),
(1175, '2024-03-01', '14:45:05', 7, 25, 5),
(1176, '2024-03-01', '17:00:05', 8, 1, 1),
(1182, '2024-03-01', '12:00:05', 14, 7, 2),
(1188, '2024-03-01', '12:00:05', 4, 13, 3),
(1194, '2024-03-01', '12:15:05', 10, 19, 4),
(1200, '2024-03-01', '12:00:05', 16, 25, 5),
(1201, '2024-03-02', '13:00:06', 1, 1, 1),
(1207, '2024-03-02', '14:00:06', 7, 7, 2),
(1213, '2024-03-02', '11:30:06', 13, 13, 3),
(1219, '2024-03-02', '13:45:06', 3, 19, 4),
(1225, '2024-03-02', '14:15:06', 9, 25, 5),
(1226, '2024-03-02', '16:45:06', 10, 1, 1),
(1232, '2024-03-02', '14:30:06', 16, 7, 2),
(1238, '2024-03-02', '13:00:06', 6, 13, 3),
(1244, '2024-03-02', '14:45:06', 12, 19, 4),
(1250, '2024-03-02', '14:30:06', 2, 25, 5),
(1251, '2024-03-02', '17:00:06', 3, 1, 1),
(1257, '2024-03-02', '15:45:06', 9, 7, 2),
(1263, '2024-03-02', '17:00:06', 15, 13, 3),
(1269, '2024-03-02', '17:00:06', 5, 19, 4),
(1275, '2024-03-02', '17:00:06', 11, 25, 5),
(1276, '2024-03-03', '11:00:06', 12, 1, 1),
(1282, '2024-03-03', '11:15:06', 2, 7, 2),
(1288, '2024-03-03', '11:00:06', 8, 13, 3),
(1294, '2024-03-03', '10:45:06', 14, 19, 4),
(1300, '2024-03-03', '11:15:06', 4, 25, 5),
(1301, '2024-03-03', '13:45:06', 5, 1, 1),
(1307, '2024-03-03', '13:30:06', 11, 7, 2),
(1313, '2024-03-03', '13:45:06', 1, 13, 3),
(1319, '2024-03-03', '13:30:06', 7, 19, 4),
(1325, '2024-03-03', '13:30:06', 13, 25, 5),
(1326, '2024-03-03', '16:15:06', 14, 1, 1),
(1332, '2024-03-03', '16:30:06', 4, 7, 2),
(1338, '2024-03-03', '16:15:06', 10, 13, 3),
(1344, '2024-03-03', '16:30:06', 16, 19, 4),
(1350, '2024-03-03', '16:15:06', 6, 25, 5),
(1351, '2024-03-04', '12:00:06', 7, 1, 1),
(1357, '2024-03-04', '12:00:06', 13, 7, 2),
(1363, '2024-03-04', '12:15:06', 3, 13, 3),
(1369, '2024-03-04', '14:30:06', 9, 19, 4),
(1375, '2024-03-04', '14:45:06', 15, 25, 5),
(1376, '2024-03-04', '17:00:06', 16, 1, 1),
(1382, '2024-03-04', '12:00:06', 6, 7, 2),
(1388, '2024-03-04', '12:00:06', 12, 13, 3),
(1394, '2024-03-04', '12:15:06', 2, 19, 4),
(1400, '2024-03-04', '12:00:06', 8, 25, 5),
(1401, '2024-03-04', '13:00:07', 9, 1, 1),
(1407, '2024-03-04', '14:00:07', 15, 7, 2),
(1413, '2024-03-04', '11:30:07', 5, 13, 3),
(1419, '2024-03-04', '13:45:07', 11, 19, 4),
(1425, '2024-03-04', '14:15:07', 1, 25, 5),
(1426, '2024-03-05', '16:45:07', 2, 1, 1),
(1432, '2024-03-05', '14:30:07', 8, 7, 2),
(1438, '2024-03-05', '13:00:07', 14, 13, 3),
(1444, '2024-03-05', '14:45:07', 4, 19, 4),
(1450, '2024-03-05', '14:30:07', 10, 25, 5),
(1451, '2024-03-05', '17:00:07', 11, 1, 1),
(1457, '2024-03-05', '15:45:07', 1, 7, 2),
(1463, '2024-03-05', '17:00:07', 7, 13, 3),
(1469, '2024-03-05', '17:00:07', 13, 19, 4),
(1475, '2024-03-05', '17:00:07', 3, 25, 5),
(1476, '2024-03-05', '11:00:07', 4, 1, 1),
(1482, '2024-03-05', '11:15:07', 10, 7, 2),
(1488, '2024-03-05', '11:00:07', 16, 13, 3),
(1494, '2024-03-05', '10:45:07', 6, 19, 4),
(1500, '2024-03-05', '11:15:07', 12, 25, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sarrera`
--

CREATE TABLE `sarrera` (
  `sarrera_id` int(10) UNSIGNED NOT NULL,
  `erosketak_id` smallint(5) UNSIGNED NOT NULL,
  `saioa_id` smallint(5) UNSIGNED DEFAULT NULL,
  `kant_sr` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zinema`
--

CREATE TABLE `zinema` (
  `zinema_id` smallint(5) UNSIGNED NOT NULL,
  `izena` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefonoa` varchar(9) DEFAULT NULL,
  `herria` varchar(20) DEFAULT NULL,
  `Kalea` varchar(20) DEFAULT NULL,
  `zenbakia` smallint(6) DEFAULT NULL,
  `youtube` varchar(30) DEFAULT NULL,
  `twitter` varchar(30) DEFAULT NULL,
  `instagram` varchar(30) DEFAULT NULL,
  `facebook` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `zinema`
--

INSERT INTO `zinema` (`zinema_id`, `izena`, `email`, `telefonoa`, `herria`, `Kalea`, `zenbakia`, `youtube`, `twitter`, `instagram`, `facebook`) VALUES
(1, 'Elorrieta-errekamari zinema', 'zinema@gmail.com', '123456789', 'Bilbao', 'Lehendakari Agirre', 4, 'ElorrietaYt', 'ElorrietaTw', 'ElorrietaInsta', 'ElorrietaFace'),
(2, 'Basauri zinema', 'zinema@gmail.com', '123456789', 'Basauri', 'Pozokoetxe', 6, 'BasaurizinemaYt', 'BasaurizinemaTw', 'BasaurizinemaInsta', 'BasaurizinemaFace'),
(3, 'Ideal zinema', 'zinema@gmail.com', '123456789', 'Bilbao', 'Juan Ajuriaguerra', 7, 'IdealYt', 'IdealTw', 'IdealInsta', 'IdealFace'),
(4, 'Portugalete zinema', 'zinema@gmail.com', '123456789', 'Portugalete', 'Buenavista', 2, 'PortuzinemaYt', 'PortuzinemaTw', 'PortuzinemaInsta', 'PortuzinemaFace'),
(5, 'Gazteiz zinema', 'zinema@gmail.com', '123456789', 'Gazteiz', 'La Musica Ibilbidea', 10, 'GazteizZinemaYt', 'GazteizZinemaTw', 'GazteizZinemaInsta', 'GazteizZinemaFace');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aretoa`
--
ALTER TABLE `aretoa`
  ADD PRIMARY KEY (`zinema_id`,`aretoa_id`);

--
-- Indices de la tabla `bezeroa`
--
ALTER TABLE `bezeroa`
  ADD PRIMARY KEY (`Bezero_id`),
  ADD UNIQUE KEY `NAN` (`NAN`),
  ADD UNIQUE KEY `erabiltzailea` (`erabiltzailea`);

--
-- Indices de la tabla `erosketak`
--
ALTER TABLE `erosketak`
  ADD PRIMARY KEY (`erosketak_id`),
  ADD KEY `Bezero_id` (`Bezero_id`);

--
-- Indices de la tabla `filma`
--
ALTER TABLE `filma`
  ADD PRIMARY KEY (`filma_id`);

--
-- Indices de la tabla `saioa`
--
ALTER TABLE `saioa`
  ADD PRIMARY KEY (`saioa_id`),
  ADD KEY `filma_id` (`filma_id`),
  ADD KEY `zinema_id` (`zinema_id`,`aretoa_id`);

--
-- Indices de la tabla `sarrera`
--
ALTER TABLE `sarrera`
  ADD PRIMARY KEY (`sarrera_id`,`erosketak_id`),
  ADD KEY `erosketak_id` (`erosketak_id`),
  ADD KEY `saioa_id` (`saioa_id`);

--
-- Indices de la tabla `zinema`
--
ALTER TABLE `zinema`
  ADD PRIMARY KEY (`zinema_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `zinema`
--
ALTER TABLE `zinema`
  MODIFY `zinema_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aretoa`
--
ALTER TABLE `aretoa`
  ADD CONSTRAINT `aretoa_ibfk_1` FOREIGN KEY (`zinema_id`) REFERENCES `zinema` (`zinema_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `erosketak`
--
ALTER TABLE `erosketak`
  ADD CONSTRAINT `erosketak_ibfk_1` FOREIGN KEY (`Bezero_id`) REFERENCES `bezeroa` (`Bezero_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `saioa`
--
ALTER TABLE `saioa`
  ADD CONSTRAINT `saioa_ibfk_1` FOREIGN KEY (`filma_id`) REFERENCES `filma` (`filma_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `saioa_ibfk_2` FOREIGN KEY (`zinema_id`,`aretoa_id`) REFERENCES `aretoa` (`zinema_id`, `aretoa_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sarrera`
--
ALTER TABLE `sarrera`
  ADD CONSTRAINT `sarrera_ibfk_1` FOREIGN KEY (`erosketak_id`) REFERENCES `erosketak` (`erosketak_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sarrera_ibfk_2` FOREIGN KEY (`saioa_id`) REFERENCES `saioa` (`saioa_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;