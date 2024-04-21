-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2024 at 07:41 PM
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
  `nazwa` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `marka`
--

INSERT INTO `marka` (`id`, `nazwa`) VALUES
(1, 'BMW e36'),
(3, 'MAZDA 3');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ogloszenia`
--

CREATE TABLE `ogloszenia` (
  `id` int(11) NOT NULL,
  `rok_produkcji` varchar(15) NOT NULL,
  `marka_id` int(11) NOT NULL,
  `stan_pojazdu_id` int(11) NOT NULL,
  `Dodatkowe_informacje_o_samochodzie` varchar(255) NOT NULL,
  `pojemnosc_baku(Litry)` int(11) NOT NULL,
  `typ_samochodu_id` int(11) NOT NULL,
  `typ_napedu_id` int(11) NOT NULL,
  `sprzedawca_id` int(11) NOT NULL,
  `kupujacy_id` int(11) NOT NULL,
  `stan` varchar(20) NOT NULL,
  `zdjecia` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ogloszenia`
--

INSERT INTO `ogloszenia` (`id`, `rok_produkcji`, `marka_id`, `stan_pojazdu_id`, `Dodatkowe_informacje_o_samochodzie`, `pojemnosc_baku(Litry)`, `typ_samochodu_id`, `typ_napedu_id`, `sprzedawca_id`, `kupujacy_id`, `stan`, `zdjecia`) VALUES
(1, '2008', 1, 1, 'cos tam', 22, 1, 1, 1, 0, 'nie kupione', 'ścieżka do pliku z zdjęciem');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stan_pojazdu`
--

CREATE TABLE `stan_pojazdu` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(50) NOT NULL
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
  `nazwa` varchar(15) NOT NULL
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
  `nazwa` varchar(25) NOT NULL
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
  `nazwa` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `typ_uzytkownika`
--

INSERT INTO `typ_uzytkownika` (`id`, `nazwa`) VALUES
(1, 'uzytkownik'),
(2, 'admin');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownik`
--

CREATE TABLE `uzytkownik` (
  `id` int(11) NOT NULL,
  `imie` varchar(25) NOT NULL,
  `nazwisko` varchar(25) NOT NULL,
  `numer_telefonu` int(11) NOT NULL,
  `haslo` varchar(35) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `miejscowosc` varchar(35) NOT NULL,
  `Addres` varchar(25) NOT NULL,
  `typ_uzytkownika_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uzytkownik`
--

INSERT INTO `uzytkownik` (`id`, `imie`, `nazwisko`, `numer_telefonu`, `haslo`, `email`, `miejscowosc`, `Addres`, `typ_uzytkownika_id`) VALUES
(1, 'Max', 'Kowalski', 123456789, 'Kowal345', 'Kowal345@gmail.com', 'Warszawa', 'Rojna 45', 2);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `marka` (`marka_id`),
  ADD KEY `stan_pojazdu` (`stan_pojazdu_id`),
  ADD KEY `typ_samochodu` (`typ_samochodu_id`),
  ADD KEY `typ_napedu` (`typ_napedu_id`),
  ADD KEY `uzytkownik` (`sprzedawca_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ogloszenia`
--
ALTER TABLE `ogloszenia`
  ADD CONSTRAINT `marka` FOREIGN KEY (`marka_id`) REFERENCES `marka` (`id`),
  ADD CONSTRAINT `stan_pojazdu` FOREIGN KEY (`stan_pojazdu_id`) REFERENCES `stan_pojazdu` (`id`),
  ADD CONSTRAINT `typ_napedu` FOREIGN KEY (`typ_napedu_id`) REFERENCES `typ_napedu` (`id`),
  ADD CONSTRAINT `typ_samochodu` FOREIGN KEY (`typ_samochodu_id`) REFERENCES `typ_samochodu` (`id`),
  ADD CONSTRAINT `uzytkownik` FOREIGN KEY (`sprzedawca_id`) REFERENCES `uzytkownik` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
