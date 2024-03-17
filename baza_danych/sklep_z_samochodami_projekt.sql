-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2024 at 05:39 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sklep_z_samochodami_projekt`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kupujacy`
--

CREATE TABLE `kupujacy` (
  `id` int(11) NOT NULL,
  `imie` varchar(25) DEFAULT NULL,
  `nazwisko` varchar(25) DEFAULT NULL,
  `numer_telefonu` int(11) DEFAULT NULL,
  `miejscowosc` varchar(35) DEFAULT NULL,
  `Addres` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ogloszenia`
--

CREATE TABLE `ogloszenia` (
  `id` int(11) NOT NULL,
  `rok_produkcji` varchar(15) DEFAULT NULL,
  `marka` varchar(25) DEFAULT NULL,
  `model` varchar(25) DEFAULT NULL,
  `pojemnosc_baku` int(11) DEFAULT NULL,
  `typ_samochodu_id` int(11) DEFAULT NULL,
  `typ_napedu_id` int(11) DEFAULT NULL,
  `sprzedawca_id` int(11) DEFAULT NULL,
  `kupujacy_id` int(11) DEFAULT NULL,
  `stan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sprzedawca`
--

CREATE TABLE `sprzedawca` (
  `id` int(11) NOT NULL,
  `imie` varchar(25) DEFAULT NULL,
  `nazwisko` varchar(25) DEFAULT NULL,
  `numer_telofnu` int(11) NOT NULL,
  `miejscowosc` varchar(30) DEFAULT NULL,
  `Addres` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `typ_napedu`
--

CREATE TABLE `typ_napedu` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `typ_samochodu`
--

CREATE TABLE `typ_samochodu` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
