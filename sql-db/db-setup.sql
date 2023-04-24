-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 24. Apr 2023 um 09:18
-- Server-Version: 10.1.37-MariaDB
-- PHP-Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `realtime-ocpp-db`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `started_transactions`
--

CREATE TABLE `started_transactions` (
  `id` int(15) NOT NULL,
  `ocppIdentity` varchar(255) NOT NULL,
  `connectorId` int(15) NOT NULL,
  `timestamp` varchar(255) NOT NULL,
  `idTag` varchar(255) NOT NULL,
  `meterStart` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `stations`
--

CREATE TABLE `stations` (
  `id` int(63) NOT NULL,
  `ocppIdentity` varchar(511) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `stopped_transactions`
--

CREATE TABLE `stopped_transactions` (
  `id` int(12) NOT NULL,
  `startedTransactionId` int(12) NOT NULL,
  `timestamp` varchar(255) NOT NULL,
  `meterStop` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `started_transactions`
--
ALTER TABLE `started_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `stations`
--
ALTER TABLE `stations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ocppIdentity` (`ocppIdentity`);

--
-- Indizes für die Tabelle `stopped_transactions`
--
ALTER TABLE `stopped_transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `started_transaction_id` (`startedTransactionId`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `started_transactions`
--
ALTER TABLE `started_transactions`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `stations`
--
ALTER TABLE `stations`
  MODIFY `id` int(63) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `stopped_transactions`
--
ALTER TABLE `stopped_transactions`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
