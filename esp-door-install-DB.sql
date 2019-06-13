-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Erstellungszeit: 13. Jun 2019 um 18:03
-- Server-Version: 10.1.38-MariaDB-0+deb9u1
-- PHP-Version: 7.0.33-0+deb9u3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `esp-door`
--
CREATE DATABASE IF NOT EXISTS `esp-door` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `esp-door`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `accesslog`
--

CREATE TABLE `accesslog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `isknown` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `door` varchar(50) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL,
  `src` varchar(20) NOT NULL,
  `description` varchar(40) NOT NULL,
  `data` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `door` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `newuser`
--

CREATE TABLE `newuser` (
  `uid` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `isknown` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `door` varchar(50) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `readers`
--

CREATE TABLE `readers` (
  `ip` varchar(15) NOT NULL,
  `doorname` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `uuid` varchar(20) NOT NULL,
  `user` varchar(50) NOT NULL,
  `acctype` int(11) NOT NULL,
  `validuntil` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `accesslog`
--
ALTER TABLE `accesslog`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indizes für die Tabelle `events`
--
ALTER TABLE `events`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_2` (`id`) USING BTREE;

--
-- Indizes für die Tabelle `newuser`
--
ALTER TABLE `newuser`
  ADD PRIMARY KEY (`uid`);

--
-- Indizes für die Tabelle `readers`
--
ALTER TABLE `readers`
  ADD PRIMARY KEY (`ip`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uuid`),
  ADD UNIQUE KEY `uuid` (`uuid`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `accesslog`
--
ALTER TABLE `accesslog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT für Tabelle `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
