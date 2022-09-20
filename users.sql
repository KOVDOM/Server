-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Sze 20. 12:51
-- Kiszolgáló verziója: 10.4.24-MariaDB
-- PHP verzió: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `backenddb`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uname` varchar(25) CHARACTER SET utf8 COLLATE utf8_hungarian_ci DEFAULT NULL,
  `email` varchar(40) CHARACTER SET utf8 COLLATE utf8_hungarian_ci DEFAULT NULL,
  `pwd` varchar(32) CHARACTER SET utf8 COLLATE utf8_hungarian_ci DEFAULT NULL,
  `fullname` varchar(40) CHARACTER SET utf8 COLLATE utf8_hungarian_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `rank` int(1) DEFAULT NULL,
  `ban` bit(1) DEFAULT NULL,
  `ipadd` varchar(20) DEFAULT NULL,
  `reg_time` datetime DEFAULT NULL,
  `log_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `uname`, `email`, `pwd`, `fullname`, `active`, `rank`, `ban`, `ipadd`, `reg_time`, `log_time`) VALUES
(1, 'dominik', 'kovacsd2@kkszki.hu', '1234567890', 'Kovács Dominik', 0, 0, b'0', '127.0.0.1', '2022-09-13 00:00:00', '2022-09-13 00:00:00'),
(5, 'qwert', 'agsfvsg@rqgt.rt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'qwer', 'qwer@rfgg.fr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Gergő', 'kissg2@kkszki.hu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
