-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 19, 2025 at 08:25 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `polska`
--

-- --------------------------------------------------------

--
-- Table structure for table `miasta`
--

CREATE TABLE `miasta` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `wojewodztwo` int(11) DEFAULT NULL,
  `powiat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `miasta`
--

INSERT INTO `miasta` (`id`, `name`, `wojewodztwo`, `powiat`) VALUES
(1, 'Warszawa', 1, 1),
(2, 'Radom', 1, 2),
(3, 'Płock', 1, 3),
(4, 'Kraków', 2, 4),
(5, 'Tarnów', 2, 5),
(6, 'Nowy Sącz', 2, 6),
(7, 'Katowice', 3, 7),
(8, 'Częstochowa', 3, 8),
(9, 'Gliwice', 3, 9),
(10, 'Wrocław', 4, 10),
(11, 'Legnica', 4, 11),
(12, 'Wałbrzych', 4, 12),
(13, 'Gdańsk', 5, 13),
(14, 'Gdynia', 5, 14),
(15, 'Sopot', 5, 15),
(16, 'Bydgoszcz', 6, 16),
(17, 'Toruń', 6, 17),
(18, 'Włocławek', 6, 18),
(19, 'Lublin', 7, 19),
(20, 'Zamość', 7, 20),
(21, 'Chełm', 7, 21),
(22, 'Gorzów Wielkopolski', 8, 22),
(23, 'Zielona Góra', 8, 23),
(24, 'Nowa Sól', 8, 24),
(25, 'Łódź', 9, 25),
(26, 'Piotrków Trybunalski', 9, 26),
(27, 'Pabianice', 9, 27),
(28, 'Opole', 10, 28),
(29, 'Kędzierzyn-Koźle', 10, 29),
(30, 'Nysa', 10, 30),
(31, 'Rzeszów', 11, 31),
(32, 'Przemyśl', 11, 32),
(33, 'Krosno', 11, 33),
(34, 'Białystok', 12, 34),
(35, 'Suwałki', 12, 35),
(36, 'Łomża', 12, 36),
(37, 'Kielce', 13, 37),
(38, 'Ostrowiec Świętokrzyski', 13, 38),
(39, 'Starachowice', 13, 39),
(40, 'Olsztyn', 14, 40),
(41, 'Elbląg', 14, 41),
(42, 'Ełk', 14, 42),
(43, 'Poznań', 15, 43),
(44, 'Kalisz', 15, 44),
(45, 'Konin', 15, 45),
(46, 'Szczecin', 16, 46),
(47, 'Koszalin', 16, 47),
(48, 'Stargard', 16, 48);

-- --------------------------------------------------------

--
-- Table structure for table `osoby`
--

CREATE TABLE `osoby` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `miasto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `osoby`
--

INSERT INTO `osoby` (`id`, `name`, `miasto`) VALUES
(1, 'Jan Kowalski', 1),
(2, 'Anna Nowak', 1),
(3, 'Piotr Wiśniewski', 1),
(4, 'Jan Kowalski', 2),
(5, 'Anna Nowak', 2),
(6, 'Piotr Wiśniewski', 2),
(7, 'Jan Kowalski', 3),
(8, 'Anna Nowak', 3),
(9, 'Piotr Wiśniewski', 3),
(10, 'Jan Kowalski', 4),
(11, 'Anna Nowak', 4),
(12, 'Piotr Wiśniewski', 4),
(13, 'Jan Kowalski', 5),
(14, 'Anna Nowak', 5),
(15, 'Piotr Wiśniewski', 5),
(16, 'Jan Kowalski', 6),
(17, 'Anna Nowak', 6),
(18, 'Piotr Wiśniewski', 6),
(19, 'Jan Kowalski', 7),
(20, 'Anna Nowak', 7),
(21, 'Piotr Wiśniewski', 7),
(22, 'Jan Kowalski', 8),
(23, 'Anna Nowak', 8),
(24, 'Piotr Wiśniewski', 8),
(25, 'Jan Kowalski', 9),
(26, 'Anna Nowak', 9),
(27, 'Piotr Wiśniewski', 9),
(28, 'Jan Kowalski', 10),
(29, 'Anna Nowak', 10),
(30, 'Piotr Wiśniewski', 10),
(31, 'Jan Kowalski', 11),
(32, 'Anna Nowak', 11),
(33, 'Piotr Wiśniewski', 11),
(34, 'Jan Kowalski', 12),
(35, 'Anna Nowak', 12),
(36, 'Piotr Wiśniewski', 12),
(37, 'Jan Kowalski', 13),
(38, 'Anna Nowak', 13),
(39, 'Piotr Wiśniewski', 13),
(40, 'Jan Kowalski', 14),
(41, 'Anna Nowak', 14),
(42, 'Piotr Wiśniewski', 14),
(43, 'Jan Kowalski', 15),
(44, 'Anna Nowak', 15),
(45, 'Piotr Wiśniewski', 15),
(46, 'Jan Kowalski', 16),
(47, 'Anna Nowak', 16),
(48, 'Piotr Wiśniewski', 16),
(49, 'Jan Kowalski', 17),
(50, 'Anna Nowak', 17),
(51, 'Piotr Wiśniewski', 17),
(52, 'Jan Kowalski', 18),
(53, 'Anna Nowak', 18),
(54, 'Piotr Wiśniewski', 18),
(55, 'Jan Kowalski', 19),
(56, 'Anna Nowak', 19),
(57, 'Piotr Wiśniewski', 19),
(58, 'Jan Kowalski', 20),
(59, 'Anna Nowak', 20),
(60, 'Piotr Wiśniewski', 20),
(61, 'Jan Kowalski', 21),
(62, 'Anna Nowak', 21),
(63, 'Piotr Wiśniewski', 21),
(64, 'Jan Kowalski', 22),
(65, 'Anna Nowak', 22),
(66, 'Piotr Wiśniewski', 22),
(67, 'Jan Kowalski', 23),
(68, 'Anna Nowak', 23),
(69, 'Piotr Wiśniewski', 23),
(70, 'Jan Kowalski', 24),
(71, 'Anna Nowak', 24),
(72, 'Piotr Wiśniewski', 24),
(73, 'Jan Kowalski', 25),
(74, 'Anna Nowak', 25),
(75, 'Piotr Wiśniewski', 25),
(76, 'Jan Kowalski', 26),
(77, 'Anna Nowak', 26),
(78, 'Piotr Wiśniewski', 26),
(79, 'Jan Kowalski', 27),
(80, 'Anna Nowak', 27),
(81, 'Piotr Wiśniewski', 27),
(82, 'Jan Kowalski', 28),
(83, 'Anna Nowak', 28),
(84, 'Piotr Wiśniewski', 28),
(85, 'Jan Kowalski', 29),
(86, 'Anna Nowak', 29),
(87, 'Piotr Wiśniewski', 29),
(88, 'Jan Kowalski', 30),
(89, 'Anna Nowak', 30),
(90, 'Piotr Wiśniewski', 30),
(91, 'Jan Kowalski', 31),
(92, 'Anna Nowak', 31),
(93, 'Piotr Wiśniewski', 31),
(94, 'Jan Kowalski', 32),
(95, 'Anna Nowak', 32),
(96, 'Piotr Wiśniewski', 32),
(97, 'Jan Kowalski', 33),
(98, 'Anna Nowak', 33),
(99, 'Piotr Wiśniewski', 33),
(100, 'Jan Kowalski', 34),
(101, 'Anna Nowak', 34),
(102, 'Piotr Wiśniewski', 34),
(103, 'Jan Kowalski', 35),
(104, 'Anna Nowak', 35),
(105, 'Piotr Wiśniewski', 35),
(106, 'Jan Kowalski', 36),
(107, 'Anna Nowak', 36),
(108, 'Piotr Wiśniewski', 36),
(109, 'Jan Kowalski', 37),
(110, 'Anna Nowak', 37),
(111, 'Piotr Wiśniewski', 37),
(112, 'Jan Kowalski', 38),
(113, 'Anna Nowak', 38),
(114, 'Piotr Wiśniewski', 38),
(115, 'Jan Kowalski', 39),
(116, 'Anna Nowak', 39),
(117, 'Piotr Wiśniewski', 39),
(118, 'Jan Kowalski', 40),
(119, 'Anna Nowak', 40),
(120, 'Piotr Wiśniewski', 40),
(121, 'Jan Kowalski', 41),
(122, 'Anna Nowak', 41),
(123, 'Piotr Wiśniewski', 41),
(124, 'Jan Kowalski', 42),
(125, 'Anna Nowak', 42),
(126, 'Piotr Wiśniewski', 42),
(127, 'Jan Kowalski', 43),
(128, 'Anna Nowak', 43),
(129, 'Piotr Wiśniewski', 43),
(130, 'Jan Kowalski', 44),
(131, 'Anna Nowak', 44),
(132, 'Piotr Wiśniewski', 44),
(133, 'Jan Kowalski', 45),
(134, 'Anna Nowak', 45),
(135, 'Piotr Wiśniewski', 45),
(136, 'Jan Kowalski', 46),
(137, 'Anna Nowak', 46),
(138, 'Piotr Wiśniewski', 46),
(139, 'Jan Kowalski', 47),
(140, 'Anna Nowak', 47),
(141, 'Piotr Wiśniewski', 47),
(142, 'Jan Kowalski', 48),
(143, 'Anna Nowak', 48),
(144, 'Piotr Wiśniewski', 48);

-- --------------------------------------------------------

--
-- Table structure for table `powiaty`
--

CREATE TABLE `powiaty` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `wojewodztwo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `powiaty`
--

INSERT INTO `powiaty` (`id`, `name`, `wojewodztwo`) VALUES
(1, 'powiat m. Warszawa', 1),
(2, 'powiat radomski', 1),
(3, 'powiat płocki', 1),
(4, 'powiat m. Kraków', 2),
(5, 'powiat tarnowski', 2),
(6, 'powiat nowosądecki', 2),
(7, 'powiat m. Katowice', 3),
(8, 'powiat częstochowski', 3),
(9, 'powiat gliwicki', 3),
(10, 'powiat m. Wrocław', 4),
(11, 'powiat legnicki', 4),
(12, 'powiat wałbrzyski', 4),
(13, 'powiat m. Gdańsk', 5),
(14, 'powiat m. Gdynia', 5),
(15, 'powiat m. Sopot', 5),
(16, 'powiat m. Bydgoszcz', 6),
(17, 'powiat m. Toruń', 6),
(18, 'powiat m. Włocławek', 6),
(19, 'powiat m. Lublin', 7),
(20, 'powiat zamojski', 7),
(21, 'powiat chełmski', 7),
(22, 'powiat m. Gorzów Wielkopolski', 8),
(23, 'powiat m. Zielona Góra', 8),
(24, 'powiat nowosolski', 8),
(25, 'powiat m. Łódź', 9),
(26, 'powiat m. Piotrków Trybunalski', 9),
(27, 'powiat pabianicki', 9),
(28, 'powiat m. Opole', 10),
(29, 'powiat kędzierzyńsko-kozielski', 10),
(30, 'powiat nyski', 10),
(31, 'powiat m. Rzeszów', 11),
(32, 'powiat m. Przemyśl', 11),
(33, 'powiat m. Krosno', 11),
(34, 'powiat m. Białystok', 12),
(35, 'powiat m. Suwałki', 12),
(36, 'powiat m. Łomża', 12),
(37, 'powiat m. Kielce', 13),
(38, 'powiat ostrowiecki', 13),
(39, 'powiat starachowicki', 13),
(40, 'powiat m. Olsztyn', 14),
(41, 'powiat m. Elbląg', 14),
(42, 'powiat ełcki', 14),
(43, 'powiat m. Poznań', 15),
(44, 'powiat m. Kalisz', 15),
(45, 'powiat m. Konin', 15),
(46, 'powiat m. Szczecin', 16),
(47, 'powiat m. Koszalin', 16),
(48, 'powiat stargardzki', 16);

-- --------------------------------------------------------

--
-- Table structure for table `wojewodztwa`
--

CREATE TABLE `wojewodztwa` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wojewodztwa`
--

INSERT INTO `wojewodztwa` (`id`, `name`) VALUES
(1, 'Mazowieckie'),
(2, 'Małopolskie'),
(3, 'Śląskie'),
(4, 'Dolnośląskie'),
(5, 'Pomorskie'),
(6, 'Kujawsko-Pomorskie'),
(7, 'Lubelskie'),
(8, 'Lubuskie'),
(9, 'Łódzkie'),
(10, 'Opolskie'),
(11, 'Podkarpackie'),
(12, 'Podlaskie'),
(13, 'Świętokrzyskie'),
(14, 'Warmińsko-Mazurskie'),
(15, 'Wielkopolskie'),
(16, 'Zachodniopomorskie');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
