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

create table stations
(
    id           int(63) auto_increment primary key,
    ocppIdentity varchar(511) not null,
    name         varchar(255) not null,
    constraint ocppIdentity unique (ocppIdentity)
);

create table transactions
(
    id             int(15) auto_increment primary key,
    ocppIdentity   varchar(255) not null,
    connectorId    int(15)      not null,
    timestampStart varchar(255) not null,
    idTag          varchar(255) not null,
    meterStart     int(15)      not null,
    timestampStop  varchar(255) null,
    meterStop      int(12)      null
);
