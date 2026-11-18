-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lis 18, 2026 at 09:22 PM
-- Wersja serwera: 10.11.16-MariaDB
-- Wersja PHP: 8.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `moja_baza`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `logi_klikniec`
--

CREATE TABLE `logi_klikniec` (
  `id` int(11) NOT NULL,
  `opis` varchar(255) NOT NULL,
  `data_utworzenia` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `logi_klikniec`
--

INSERT INTO `logi_klikniec` (`id`, `opis`, `data_utworzenia`) VALUES
(1, 'Przycisk kliknięty przez użytkownika (IP: ::1)', '2026-11-18 20:53:11'),
(2, 'Przycisk kliknięty przez użytkownika (IP: ::1)', '2026-11-18 20:55:16'),
(3, 'Przycisk kliknięty przez użytkownika (IP: ::1)', '2026-11-18 20:55:19');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `logi_klikniec`
--
ALTER TABLE `logi_klikniec`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `logi_klikniec`
--
ALTER TABLE `logi_klikniec`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
