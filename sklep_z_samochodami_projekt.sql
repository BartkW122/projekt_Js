-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2024 at 08:23 PM
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
-- Struktura tabeli dla tabeli `marka`
--

CREATE TABLE `marka` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `marka`
--

INSERT INTO `marka` (`id`, `nazwa`) VALUES
(1, 'BMW e36');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ogloszenia`
--

CREATE TABLE `ogloszenia` (
  `id` int(11) NOT NULL,
  `rok_produkcji` varchar(15) DEFAULT NULL,
  `marka_id` int(25) DEFAULT NULL,
  `stan_pojazdu_id` int(11) DEFAULT NULL,
  `Dodatkowe_informacje_o_samochodzie` varchar(255) DEFAULT NULL,
  `pojemnosc_baku(Litry)` int(11) DEFAULT NULL,
  `typ_samochodu_id` int(11) DEFAULT NULL,
  `typ_napedu_id` int(11) DEFAULT NULL,
  `sprzedawca_id` int(11) DEFAULT NULL,
  `kupujacy_id` int(11) DEFAULT NULL,
  `stan` varchar(20) DEFAULT NULL,
  `zdjecia` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ogloszenia`
--

INSERT INTO `ogloszenia` (`id`, `rok_produkcji`, `marka_id`, `stan_pojazdu_id`, `Dodatkowe_informacje_o_samochodzie`, `pojemnosc_baku(Litry)`, `typ_samochodu_id`, `typ_napedu_id`, `sprzedawca_id`, `kupujacy_id`, `stan`, `zdjecia`) VALUES
(1, '2008', 1, 1, 'cos tam', 22, 1, 1, 1, NULL, 'nie kupione', 'ścieżka do pliku z zdjęciem');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stan_pojazdu`
--

CREATE TABLE `stan_pojazdu` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stan_pojazdu`
--

INSERT INTO `stan_pojazdu` (`id`, `nazwa`) VALUES
(1, 'Uzywany');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `typ_napedu`
--

CREATE TABLE `typ_napedu` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `typ_napedu`
--

INSERT INTO `typ_napedu` (`id`, `nazwa`) VALUES
(1, 'naped na przod');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `typ_samochodu`
--

CREATE TABLE `typ_samochodu` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `typ_samochodu`
--

INSERT INTO `typ_samochodu` (`id`, `nazwa`) VALUES
(1, 'suv');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `typ_uzytkownika`
--

CREATE TABLE `typ_uzytkownika` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `typ_uzytkownika`
--

INSERT INTO `typ_uzytkownika` (`id`, `nazwa`) VALUES
(1, 'sprzedajacy'),
(2, 'admin');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownik`
--

CREATE TABLE `uzytkownik` (
  `id` int(11) NOT NULL,
  `imie` varchar(25) DEFAULT NULL,
  `nazwisko` varchar(25) DEFAULT NULL,
  `numer_telefonu` int(11) DEFAULT NULL,
  `miejscowosc` varchar(35) DEFAULT NULL,
  `Addres` varchar(25) DEFAULT NULL,
  `typ_uzytkownika_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uzytkownik`
--

INSERT INTO `uzytkownik` (`id`, `imie`, `nazwisko`, `numer_telefonu`, `miejscowosc`, `Addres`, `typ_uzytkownika_id`) VALUES
(1, 'Max', 'Kowalski', 123456789, 'Warszawa', 'Rojna 45', 2);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `marka`
--
ALTER TABLE `marka`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `ogloszenia`
--
ALTER TABLE `ogloszenia`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `stan_pojazdu`
--
ALTER TABLE `stan_pojazdu`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `typ_napedu`
--
ALTER TABLE `typ_napedu`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `typ_samochodu`
--
ALTER TABLE `typ_samochodu`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `typ_uzytkownika`
--
ALTER TABLE `typ_uzytkownika`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uzytkownik`
--
ALTER TABLE `uzytkownik`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `marka`
--
ALTER TABLE `marka`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ogloszenia`
--
ALTER TABLE `ogloszenia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stan_pojazdu`
--
ALTER TABLE `stan_pojazdu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `typ_napedu`
--
ALTER TABLE `typ_napedu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `typ_samochodu`
--
ALTER TABLE `typ_samochodu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `typ_uzytkownika`
--
ALTER TABLE `typ_uzytkownika`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `uzytkownik`
--
ALTER TABLE `uzytkownik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
