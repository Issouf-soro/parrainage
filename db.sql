-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 20 oct. 2025 à 10:40
-- Version du serveur :  5.7.26
-- Version de PHP :  7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `parrainages`
--

-- --------------------------------------------------------

--
-- Structure de la table `fileul`
--

DROP TABLE IF EXISTS `fileul`;
CREATE TABLE IF NOT EXISTS `fileul` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_parrains` int(11) NOT NULL,
  `id_fileul` int(11) NOT NULL,
  `date_create` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_parrains` (`id_parrains`),
  UNIQUE KEY `unique_fileul` (`id_fileul`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `parrains`
--

DROP TABLE IF EXISTS `parrains`;
CREATE TABLE IF NOT EXISTS `parrains` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `password` text NOT NULL,
  `cle` varchar(80) NOT NULL,
  `date_create` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `fileul`
--
ALTER TABLE `fileul`
  ADD CONSTRAINT `fileul_ibfk_1` FOREIGN KEY (`id_parrains`) REFERENCES `parrains` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
