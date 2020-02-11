-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le :  mar. 11 fév. 2020 à 16:02
-- Version du serveur :  10.1.41-MariaDB-0+deb9u1
-- Version de PHP :  7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `Gloth`
--

-- --------------------------------------------------------

--
-- Structure de la table `config_site`
--

CREATE TABLE `config_site` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL DEFAULT 'Habbo',
  `lien` varchar(2500) NOT NULL DEFAULT 'http://localhost',
  `email` varchar(255) NOT NULL DEFAULT 'contact@habbo.fr',
  `maintenance` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `config_site`
--

INSERT INTO `config_site` (`id`, `nom`, `lien`, `email`, `maintenance`) VALUES
(1, 'Gloth', 'https://gloth.chrisd.fr/', 'contact@chrisd.fr', '0');

-- --------------------------------------------------------

--
-- Structure de la table `ordonnances`
--

CREATE TABLE `ordonnances` (
  `id` int(11) NOT NULL,
  `nom_medecin` varchar(255) NOT NULL,
  `prenom_medecin` varchar(255) NOT NULL,
  `telephone` int(11) NOT NULL,
  `identification` int(11) NOT NULL,
  `date_p` int(11) NOT NULL,
  `corps` text NOT NULL,
  `nom_patient` varchar(155) DEFAULT NULL,
  `prenom_patient` varchar(155) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `poids` int(11) DEFAULT NULL,
  `gender` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ordonnances`
--

INSERT INTO `ordonnances` (`id`, `nom_medecin`, `prenom_medecin`, `telephone`, `identification`, `date_p`, `corps`, `nom_patient`, `prenom_patient`, `age`, `poids`, `gender`) VALUES
(24, 'xqss', 'sqsqsq', 111, 111, 1581434611, 'ssqqssq', 'qssqqs', 'sqqsqsq', 11, 11, ''),
(23, 'sqqssq', 'qqsqs', 111, 111, 1581434515, '', 'qsqssq', 'sqss', 111, 11, '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `config_site`
--
ALTER TABLE `config_site`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ordonnances`
--
ALTER TABLE `ordonnances`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `config_site`
--
ALTER TABLE `config_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `ordonnances`
--
ALTER TABLE `ordonnances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
