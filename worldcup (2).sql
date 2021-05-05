-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 05. Mai 2021 um 17:39
-- Server-Version: 10.4.14-MariaDB
-- PHP-Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `worldcup`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `aid`
--

CREATE TABLE `aid` (
  `aid_id` int(11) NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `aid`
--

INSERT INTO `aid` (`aid_id`, `first_name`, `last_name`) VALUES
(1, 'hans', 'Mayer'),
(2, 'isabella', 'Huber'),
(3, 'hans', 'Mayer'),
(4, 'isabella', 'Huber');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `athlete`
--

CREATE TABLE `athlete` (
  `athlete_id` int(11) NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `nation` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `athlete`
--

INSERT INTO `athlete` (`athlete_id`, `first_name`, `last_name`, `nation`) VALUES
(1, 'Christoph', 'Modl', 'AUT'),
(2, 'max', 'mustermann', 'ger'),
(3, 'Christoph', 'Modl', 'AUT'),
(4, 'max', 'mustermann', 'ger'),
(5, 'Christoph', 'Modl', 'AUT'),
(6, 'max', 'mustermann', 'ger'),
(7, 'Christoph', 'Modl', 'AUT'),
(8, 'max', 'mustermann', 'ger');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `athlete_registration`
--

CREATE TABLE `athlete_registration` (
  `athlete_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `athlete_registration`
--

INSERT INTO `athlete_registration` (`athlete_id`, `event_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `disciplin`
--

CREATE TABLE `disciplin` (
  `disciplin_id` int(11) NOT NULL,
  `disciplin_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `disciplin`
--

INSERT INTO `disciplin` (`disciplin_id`, `disciplin_name`) VALUES
(1, '100-Meter-Lauf'),
(2, 'Weitsprung'),
(3, 'Sperrwurf'),
(4, '100-Meter-Lauf'),
(5, 'Weitsprung'),
(6, 'Sperrwurf'),
(7, '100-Meter-Lauf'),
(8, 'Weitsprung'),
(9, 'Sperrwurf'),
(10, '100-Meter-Lauf'),
(11, 'Weitsprung'),
(12, 'Sperrwurf');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `event_date` date DEFAULT NULL,
  `event_time` time DEFAULT NULL,
  `disciplin_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `event`
--

INSERT INTO `event` (`event_id`, `event_date`, `event_time`, `disciplin_id`, `location_id`) VALUES
(1, '2021-05-01', '10:00:00', 1, 1),
(2, '2021-05-01', '10:00:00', 1, 1),
(3, '2021-05-01', '10:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `event_aid_list`
--

CREATE TABLE `event_aid_list` (
  `event_id` int(11) NOT NULL,
  `aid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `location`
--

CREATE TABLE `location` (
  `location_id` int(11) NOT NULL,
  `city` varchar(30) DEFAULT NULL,
  `street` varchar(40) DEFAULT NULL,
  `postal_code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `location`
--

INSERT INTO `location` (`location_id`, `city`, `street`, `postal_code`) VALUES
(1, 'Linz', 'Froschberg 1', '4020'),
(2, 'Graz', ' strasse 10', '8010'),
(3, 'Linz', 'Froschberg 1', '4020'),
(4, 'Graz', ' strasse 10', '8010'),
(5, 'Linz', 'Froschberg 1', '4020'),
(6, 'Graz', ' strasse 10', '8010');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `referee`
--

CREATE TABLE `referee` (
  `aid_id` int(11) NOT NULL,
  `referee_lever` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `referee`
--

INSERT INTO `referee` (`aid_id`, `referee_lever`) VALUES
(1, 'A');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `result`
--

CREATE TABLE `result` (
  `result_id` int(11) NOT NULL,
  `ranking` int(11) DEFAULT NULL,
  `result_value` decimal(10,2) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `athlete_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `result`
--

INSERT INTO `result` (`result_id`, `ranking`, `result_value`, `event_id`, `athlete_id`) VALUES
(1, 1, '11.59', 1, 1),
(2, 1, '11.59', 1, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `steward`
--

CREATE TABLE `steward` (
  `aid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `steward`
--

INSERT INTO `steward` (`aid_id`) VALUES
(2);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `aid`
--
ALTER TABLE `aid`
  ADD PRIMARY KEY (`aid_id`);

--
-- Indizes für die Tabelle `athlete`
--
ALTER TABLE `athlete`
  ADD PRIMARY KEY (`athlete_id`);

--
-- Indizes für die Tabelle `athlete_registration`
--
ALTER TABLE `athlete_registration`
  ADD PRIMARY KEY (`athlete_id`,`event_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indizes für die Tabelle `disciplin`
--
ALTER TABLE `disciplin`
  ADD PRIMARY KEY (`disciplin_id`);

--
-- Indizes für die Tabelle `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `disciplin_id` (`disciplin_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indizes für die Tabelle `event_aid_list`
--
ALTER TABLE `event_aid_list`
  ADD PRIMARY KEY (`event_id`,`aid_id`),
  ADD KEY `aid_id` (`aid_id`);

--
-- Indizes für die Tabelle `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indizes für die Tabelle `referee`
--
ALTER TABLE `referee`
  ADD PRIMARY KEY (`aid_id`);

--
-- Indizes für die Tabelle `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`result_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `athlete_id` (`athlete_id`);

--
-- Indizes für die Tabelle `steward`
--
ALTER TABLE `steward`
  ADD PRIMARY KEY (`aid_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `aid`
--
ALTER TABLE `aid`
  MODIFY `aid_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `athlete`
--
ALTER TABLE `athlete`
  MODIFY `athlete_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT für Tabelle `disciplin`
--
ALTER TABLE `disciplin`
  MODIFY `disciplin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT für Tabelle `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `location`
--
ALTER TABLE `location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `result`
--
ALTER TABLE `result`
  MODIFY `result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `athlete_registration`
--
ALTER TABLE `athlete_registration`
  ADD CONSTRAINT `athlete_registration_ibfk_1` FOREIGN KEY (`athlete_id`) REFERENCES `athlete` (`athlete_id`),
  ADD CONSTRAINT `athlete_registration_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`);

--
-- Constraints der Tabelle `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `event_ibfk_1` FOREIGN KEY (`disciplin_id`) REFERENCES `disciplin` (`disciplin_id`),
  ADD CONSTRAINT `event_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`);

--
-- Constraints der Tabelle `event_aid_list`
--
ALTER TABLE `event_aid_list`
  ADD CONSTRAINT `event_aid_list_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`),
  ADD CONSTRAINT `event_aid_list_ibfk_2` FOREIGN KEY (`aid_id`) REFERENCES `aid` (`aid_id`);

--
-- Constraints der Tabelle `referee`
--
ALTER TABLE `referee`
  ADD CONSTRAINT `referee_ibfk_1` FOREIGN KEY (`aid_id`) REFERENCES `aid` (`aid_id`);

--
-- Constraints der Tabelle `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `result_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`),
  ADD CONSTRAINT `result_ibfk_2` FOREIGN KEY (`athlete_id`) REFERENCES `athlete` (`athlete_id`);

--
-- Constraints der Tabelle `steward`
--
ALTER TABLE `steward`
  ADD CONSTRAINT `steward_ibfk_1` FOREIGN KEY (`aid_id`) REFERENCES `aid` (`aid_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
