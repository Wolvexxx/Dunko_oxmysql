-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 28. Feb 2022 um 01:21
-- Server-Version: 10.4.22-MariaDB
-- PHP-Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `dunkoox`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `advanced_vehicles`
--

CREATE TABLE `advanced_vehicles` (
  `vehicle` varchar(50) NOT NULL,
  `user_id` varchar(55) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `km` double UNSIGNED NOT NULL DEFAULT 0,
  `vehicle_handling` longtext NOT NULL,
  `nitroAmount` int(11) NOT NULL DEFAULT 0,
  `nitroRecharges` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `advanced_vehicles_inspection`
--

CREATE TABLE `advanced_vehicles_inspection` (
  `vehicle` varchar(50) NOT NULL,
  `user_id` varchar(55) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `item` varchar(50) NOT NULL,
  `km` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `value` double UNSIGNED NOT NULL DEFAULT 0,
  `timer` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `advanced_vehicles_services`
--

CREATE TABLE `advanced_vehicles_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicle` varchar(50) NOT NULL,
  `user_id` varchar(55) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `item` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `km` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `img` varchar(255) NOT NULL DEFAULT '',
  `timer` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `advanced_vehicles_upgrades`
--

CREATE TABLE `advanced_vehicles_upgrades` (
  `vehicle` varchar(50) NOT NULL,
  `user_id` varchar(55) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL,
  `item` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `vrp_arme` (
  `user_id` int(11) NOT NULL,
  `clasa` varchar(100) DEFAULT NULL,
  `weapon` varchar(100) DEFAULT NULL,
  `gloante` int(11) DEFAULT NULL,
  `hash` varchar(100) NOT NULL,
  `componente` longtext DEFAULT NULL,
  `inventar` int(11) NOT NULL DEFAULT 0,
  `poateSaVanda` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `vrp_business`
--

CREATE TABLE `vrp_business` (
  `id` int(255) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `bizName` text CHARACTER SET latin1 NOT NULL,
  `bizDescription` text CHARACTER SET latin1 NOT NULL,
  `bizPrice` int(255) NOT NULL DEFAULT 0,
  `bizType` text CHARACTER SET latin1 NOT NULL,
  `bizCashier` bigint(255) NOT NULL DEFAULT 0,
  `bizSupplies` int(255) NOT NULL DEFAULT 75,
  `bizOwner` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bizOwnerID` int(255) NOT NULL,
  `bizForSale` int(255) NOT NULL DEFAULT 0,
  `bizSalePrice` int(255) NOT NULL,
  `bizStrikes` int(255) NOT NULL DEFAULT 0,
  `bizImunity` int(255) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `vrp_srv_data`
--

CREATE TABLE `vrp_srv_data` (
  `dkey` varchar(255) NOT NULL DEFAULT '',
  `dvalue` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



--
-- Tabellenstruktur für Tabelle `vrp_turfs`
--

CREATE TABLE `vrp_turfs` (
  `id` int(255) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `blipColor` int(11) NOT NULL DEFAULT 0,
  `blipRadius` float NOT NULL DEFAULT 110,
  `faction` varchar(50) NOT NULL,
  `isAttacked` varchar(50) NOT NULL DEFAULT 'Nu',
  `attackedBy` varchar(50) NOT NULL DEFAULT 'none',
  `payday` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Tabellenstruktur für Tabelle `vrp_users`
--

CREATE TABLE `vrp_users` (
  `id` int(11) NOT NULL,
  `whitelisted` tinyint(1) DEFAULT NULL,
  `banned` tinyint(1) DEFAULT 0,
  `bannedTemp` int(255) DEFAULT 0,
  `bannedBy` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bannedReason` text DEFAULT NULL,
  `BanTempZile` int(255) NOT NULL DEFAULT 0,
  `BanTempData` varchar(255) DEFAULT NULL,
  `BanTempExpire` varchar(255) DEFAULT NULL,
  `adminLvl` int(11) NOT NULL DEFAULT 0,
  `aJailTime` int(255) NOT NULL DEFAULT 0,
  `aJailReason` text DEFAULT NULL,
  `vipLvl` int(11) NOT NULL DEFAULT 0,
  `vipTime` int(100) DEFAULT 0,
  `vipPerm` int(100) NOT NULL DEFAULT 0,
  `sponsorRank` int(11) NOT NULL DEFAULT 0,
  `faction` text NOT NULL DEFAULT 'user',
  `isFactionLeader` int(255) NOT NULL DEFAULT 0,
  `isFactionCoLeader` int(255) NOT NULL DEFAULT 0,
  `factionRank` text NOT NULL,
  `bankMoney` int(255) NOT NULL DEFAULT 9000000,
  `walletMoney` int(255) NOT NULL DEFAULT 1000000,
  `donationCoins` int(255) NOT NULL DEFAULT 0,
  `Giftpoints` int(255) NOT NULL DEFAULT 0,
  `hoursPlayed` float NOT NULL DEFAULT 0,
  `age` int(11) NOT NULL DEFAULT 18,
  `firstName` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT 'Nume',
  `secondName` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT 'Prenume',
  `finalSansa` int(11) NOT NULL DEFAULT 0,
  `raport` int(11) NOT NULL DEFAULT 0,
  `skin` longtext NOT NULL DEFAULT '',
  `job` varchar(100) NOT NULL DEFAULT 'Somer',
  `phoneBg` text NOT NULL DEFAULT 'https://i.imgur.com/5DsKDBE.jpg',
  `BgColor` text NOT NULL DEFAULT '0, 166, 255',
  `menuTopBottom` float NOT NULL DEFAULT 0,
  `menuLeftRight` float NOT NULL DEFAULT 0,
  `bizLim` int(11) NOT NULL DEFAULT 2,
  `phone_number` varchar(10) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `warns` int(255) NOT NULL DEFAULT 0,
  `warnr1` varchar(255) NOT NULL DEFAULT 'none',
  `warnr2` varchar(255) NOT NULL DEFAULT 'none',
  `warnr3` varchar(255) NOT NULL DEFAULT 'none',
  `warnid1` varchar(255) NOT NULL DEFAULT 'none',
  `warnid2` varchar(255) NOT NULL DEFAULT 'none',
  `warnid3` varchar(255) NOT NULL DEFAULT 'none',
  `username` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--


--
-- Tabellenstruktur für Tabelle `vrp_user_business`
--

CREATE TABLE `vrp_user_business` (
  `user_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(30) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `capital` int(11) DEFAULT NULL,
  `laundered` int(11) DEFAULT NULL,
  `reset_timestamp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `vrp_user_data`
--

CREATE TABLE `vrp_user_data` (
  `user_id` int(11) NOT NULL,
  `dkey` varchar(255) NOT NULL,
  `dvalue` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



--
-- Tabellenstruktur für Tabelle `vrp_user_homes`
--

CREATE TABLE `vrp_user_homes` (
  `user_id` int(11) NOT NULL DEFAULT 0,
  `home` varchar(255) NOT NULL,
  `number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `vrp_user_identities`
--

CREATE TABLE `vrp_user_identities` (
  `user_id` int(11) NOT NULL,
  `registration` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `vrp_user_ids`
--

CREATE TABLE `vrp_user_ids` (
  `id` int(255) NOT NULL,
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `vrp_user_ids`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `vrp_user_vehicles`
--

CREATE TABLE `vrp_user_vehicles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `vehicle` varchar(255) NOT NULL DEFAULT '',
  `veh_type` varchar(255) NOT NULL DEFAULT 'car',
  `garage` text NOT NULL,
  `gSlot` int(255) NOT NULL DEFAULT 1,
  `vehicle_plate` varchar(50) NOT NULL,
  `impounded` int(255) NOT NULL DEFAULT 0,
  `vehicle_colorprimary` varchar(150) DEFAULT NULL,
  `vehicle_colorsecondary` varchar(150) DEFAULT NULL,
  `vehicle_pearlescentcolor` varchar(150) DEFAULT NULL,
  `vehicle_wheelcolor` varchar(150) DEFAULT NULL,
  `vehicle_plateindex` varchar(150) DEFAULT NULL,
  `vehicle_neoncolor1` varchar(150) DEFAULT NULL,
  `vehicle_neoncolor2` varchar(150) DEFAULT NULL,
  `vehicle_neoncolor3` varchar(150) DEFAULT NULL,
  `vehicle_windowtint` varchar(150) DEFAULT NULL,
  `vehicle_wheeltype` varchar(150) DEFAULT NULL,
  `vehicle_mods0` varchar(150) DEFAULT NULL,
  `vehicle_mods1` varchar(150) DEFAULT NULL,
  `vehicle_mods2` varchar(150) DEFAULT NULL,
  `vehicle_mods3` varchar(150) DEFAULT NULL,
  `vehicle_mods4` varchar(150) DEFAULT NULL,
  `vehicle_mods5` varchar(150) DEFAULT NULL,
  `vehicle_mods6` varchar(150) DEFAULT NULL,
  `vehicle_mods7` varchar(150) DEFAULT NULL,
  `vehicle_mods8` varchar(150) DEFAULT NULL,
  `vehicle_mods9` varchar(150) DEFAULT NULL,
  `vehicle_mods10` varchar(150) DEFAULT NULL,
  `vehicle_mods11` varchar(150) DEFAULT NULL,
  `vehicle_mods12` varchar(150) DEFAULT NULL,
  `vehicle_mods13` varchar(150) DEFAULT NULL,
  `vehicle_mods14` varchar(150) DEFAULT NULL,
  `vehicle_mods15` varchar(150) DEFAULT NULL,
  `vehicle_mods16` varchar(150) DEFAULT NULL,
  `vehicle_turbo` varchar(150) NOT NULL DEFAULT 'off',
  `vehicle_tiresmoke` varchar(150) NOT NULL DEFAULT 'off',
  `vehicle_xenon` varchar(150) NOT NULL DEFAULT 'off',
  `vehicle_mods23` varchar(150) DEFAULT NULL,
  `vehicle_mods24` varchar(150) DEFAULT NULL,
  `vehicle_neon0` varchar(150) DEFAULT NULL,
  `vehicle_neon1` varchar(150) DEFAULT NULL,
  `vehicle_neon2` varchar(150) DEFAULT NULL,
  `vehicle_neon3` varchar(150) DEFAULT NULL,
  `vehicle_bulletproof` varchar(150) DEFAULT NULL,
  `vehicle_smokecolor1` varchar(150) DEFAULT NULL,
  `vehicle_smokecolor2` varchar(150) DEFAULT NULL,
  `vehicle_smokecolor3` varchar(150) DEFAULT NULL,
  `vehicle_modvariation` varchar(150) NOT NULL DEFAULT 'off',
  `upgrades` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `advanced_vehicles`
--
ALTER TABLE `advanced_vehicles`
  ADD PRIMARY KEY (`vehicle`,`user_id`,`plate`) USING BTREE;

--
-- Indizes für die Tabelle `advanced_vehicles_inspection`
--
ALTER TABLE `advanced_vehicles_inspection`
  ADD PRIMARY KEY (`vehicle`,`user_id`,`plate`,`item`) USING BTREE;

--
-- Indizes für die Tabelle `advanced_vehicles_services`
--
ALTER TABLE `advanced_vehicles_services`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `vehicle` (`vehicle`) USING BTREE,
  ADD KEY `user_id` (`user_id`) USING BTREE,
  ADD KEY `plate` (`plate`) USING BTREE;

--
-- Indizes für die Tabelle `advanced_vehicles_upgrades`
--
ALTER TABLE `advanced_vehicles_upgrades`
  ADD PRIMARY KEY (`vehicle`,`user_id`,`plate`,`class`) USING BTREE;


ALTER TABLE `vrp_business`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `vrp_srv_data`
--
ALTER TABLE `vrp_srv_data`
  ADD PRIMARY KEY (`dkey`);

--
-- Indizes für die Tabelle `vrp_turfs`
--
ALTER TABLE `vrp_turfs`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `vrp_users`
--
ALTER TABLE `vrp_users`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `vrp_user_business`
--
ALTER TABLE `vrp_user_business`
  ADD PRIMARY KEY (`user_id`);

--
-- Indizes für die Tabelle `vrp_user_data`
--
ALTER TABLE `vrp_user_data`
  ADD PRIMARY KEY (`user_id`,`dkey`);

--
-- Indizes für die Tabelle `vrp_user_homes`
--
ALTER TABLE `vrp_user_homes`
  ADD PRIMARY KEY (`user_id`);

--
-- Indizes für die Tabelle `vrp_user_ids`
--
ALTER TABLE `vrp_user_ids`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `fk_user_ids_users` (`user_id`),
  ADD KEY `id` (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Indizes für die Tabelle `vrp_user_vehicles`
--
ALTER TABLE `vrp_user_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `yellowpages_posts`
--

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `advanced_vehicles_services`
--
ALTER TABLE `advanced_vehicles_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `vrp_business`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `vrp_turfs`
--
ALTER TABLE `vrp_turfs`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT für Tabelle `vrp_users`
--
ALTER TABLE `vrp_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `vrp_user_ids`
--
ALTER TABLE `vrp_user_ids`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `vrp_user_vehicles`
--
ALTER TABLE `vrp_user_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

