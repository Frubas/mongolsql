SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

CREATE DATABASE IF NOT EXISTS `daneosobowe` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `daneosobowe`;

CREATE TABLE IF NOT EXISTS `nazwiska` (
  `Numer` int(11) NOT NULL AUTO_INCREMENT,
  `Imie` text COLLATE utf8_polish_ci NOT NULL,
  `Nazwisko` text COLLATE utf8_polish_ci NOT NULL,
  `Stanowisko` text COLLATE utf8_polish_ci NOT NULL,
  `Pensja` float COLLATE utf8_polish_ci NOT NULL,
  `Miasto` text COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`Numer`),
  KEY `id` (`Numer`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=11 ;

INSERT INTO `nazwiska` (`Numer`, `Imie`, `Nazwisko`, `Stanowisko`,`Pensja`,`Miasto`) VALUES
(1, 'Jan', 'Kowalski', 'urzędnik',900.00,'Gdańsk'),
(2, 'Waldemar', 'Pawlak', 'kierownik',3000.00 ,'Sopot'),
(3, 'Marian', 'Malinowski', 'urzędnik',1100.00,'Gdynia'),
(4, 'Adam', 'Nowak', 'księgowy',2000.00,'Gdańsk'),
(5, 'Ewa', 'Musiał', 'starżysta',0.00,'Gdańsk'),
(6, 'Zenon', 'Miler', 'stażysta',0.00,'Gdynia'),
(7, 'Paul', 'Davies', 'Prezez',8000.00,'Londyn'),
(8, 'Mieczysław', 'Dobija', 'kontroler',3000.00,'Warszawa'),
(9, 'Peter', 'Rutkowski', 'informatyk',3500.00,'Gdańsk');