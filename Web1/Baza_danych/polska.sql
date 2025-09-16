-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 16, 2025 at 09:34 PM
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
(1, 'Błonie', 1, 1),
(2, 'Skawina', 2, 2),
(3, 'Knurów', 3, 3),
(4, 'Kąty Wrocławskie', 4, 4),
(5, 'Pruszcz Gdański', 5, 5);

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
(2, 'Anna Nowak', 2),
(3, 'Piotr Zieliński', 3),
(4, 'Katarzyna Wiśniewska', 4),
(5, 'Michał Wójcik', 5);

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
(1, 'powiat warszawski zachodni', 1),
(2, 'powiat krakowski', 2),
(3, 'powiat gliwicki', 3),
(4, 'powiat wrocławski', 4),
(5, 'powiat gdański', 5);

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
(5, 'Pomorskie');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
