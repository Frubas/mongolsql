-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 01 Gru 2022, 14:36
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `ksiegarniainternetowa`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `autor`
--

CREATE TABLE `autor` (
  `imie` char(50) DEFAULT NULL,
  `nazwisko` char(50) DEFAULT NULL,
  `narodowosc` char(50) DEFAULT NULL,
  `okreztworzenia` char(50) DEFAULT NULL,
  `jezyk` char(50) DEFAULT NULL,
  `rodzajtwurczosci` char(50) DEFAULT NULL,
  `osiagniecia` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `faktury`
--

CREATE TABLE `faktury` (
  `idfaktury` char(13) NOT NULL,
  `sposoplatnosci` char(20) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `wystawienia` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `klient_id` int(10) UNSIGNED NOT NULL,
  `imie` char(50) NOT NULL,
  `nazwisko` char(50) NOT NULL,
  `kodpocztowy` char(50) NOT NULL,
  `ulica` char(50) NOT NULL,
  `nrdomu` char(50) NOT NULL,
  `PESEL` char(100) NOT NULL,
  `telefon` char(50) NOT NULL,
  `email` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiazki`
--

CREATE TABLE `ksiazki` (
  `isbn` char(13) NOT NULL,
  `autor` char(50) DEFAULT NULL,
  `tytul` char(100) DEFAULT NULL,
  `miejscewydania` char(50) DEFAULT NULL,
  `cena` float(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiazki_zamowione`
--

CREATE TABLE `ksiazki_zamowione` (
  `zamowienie_id` int(10) UNSIGNED NOT NULL,
  `isbn` char(13) NOT NULL,
  `ilosc` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `recenzje_ksiazek`
--

CREATE TABLE `recenzje_ksiazek` (
  `isbn` char(13) NOT NULL,
  `recenzja` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `zamowienie_id` int(10) UNSIGNED NOT NULL,
  `klient_id` int(10) UNSIGNED NOT NULL,
  `data` date NOT NULL,
  `liczbaegzemplazy` char(50) DEFAULT NULL,
  `id_faktury` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `faktury`
--
ALTER TABLE `faktury`
  ADD PRIMARY KEY (`idfaktury`);

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`klient_id`);

--
-- Indeksy dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD PRIMARY KEY (`isbn`);

--
-- Indeksy dla tabeli `ksiazki_zamowione`
--
ALTER TABLE `ksiazki_zamowione`
  ADD PRIMARY KEY (`zamowienie_id`,`isbn`);

--
-- Indeksy dla tabeli `recenzje_ksiazek`
--
ALTER TABLE `recenzje_ksiazek`
  ADD PRIMARY KEY (`isbn`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`zamowienie_id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `klienci`
--
ALTER TABLE `klienci`
  MODIFY `klient_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `zamowienie_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
