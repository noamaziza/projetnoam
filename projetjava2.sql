-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 13 fév. 2022 à 12:41
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projetjava2`
--

-- --------------------------------------------------------

--
-- Structure de la table `labo`
--

CREATE TABLE `labo` (
  `lab_code` int(2) NOT NULL,
  `nom_laboratoire` varchar(10) DEFAULT NULL,
  `lab_chefvente` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `labo`
--

INSERT INTO `labo` (`lab_code`, `nom_laboratoire`, `lab_chefvente`) VALUES
(1, 'astera', 'david'),
(2, 'ipsen', 'moussa'),
(3, 'biogaran', 'jean'),
(4, 'Pfizer', 'xiu'),
(5, 'onxeo', 'Pry');

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

CREATE TABLE `region` (
  `reg_tra` int(10) NOT NULL,
  `reg_nom` varchar(50) DEFAULT NULL,
  `sec_code` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `region`
--

INSERT INTO `region` (`reg_tra`, `reg_nom`, `sec_code`) VALUES
(30, 'Gard', 1),
(52, 'Haute-Marnr', 1),
(66, 'Pyrénées-Orientales', 2),
(77, 'Seine-et-Marnr', 1),
(91, 'tes', 2),
(92, 'b', 1),
(93, 'f', 1),
(94, 'f', 1),
(95, 'u', 1),
(96, ' g', 1),
(100, 't', 1);

-- --------------------------------------------------------

--
-- Structure de la table `secteur`
--

CREATE TABLE `secteur` (
  `sec_code` int(10) NOT NULL,
  `sec_libelle` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `secteur`
--

INSERT INTO `secteur` (`sec_code`, `sec_libelle`) VALUES
(1, 'secteur A'),
(2, 'secteur B'),
(3, ' secteur C'),
(4, ' secteur D');

-- --------------------------------------------------------

--
-- Structure de la table `travailler`
--

CREATE TABLE `travailler` (
  `vis_matricule` int(50) NOT NULL,
  `date_embauche` date NOT NULL,
  `reg_tra` int(10) NOT NULL,
  `role_trav` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `travailler`
--

INSERT INTO `travailler` (`vis_matricule`, `date_embauche`, `reg_tra`, `role_trav`) VALUES
(1, '2001-06-30', 77, 'analyste'),
(2, '2021-05-12', 30, 'medecin '),
(3, '2018-12-25', 52, 'pharmacien'),
(4, '2021-11-16', 52, 'virologue'),
(5, '2021-11-10', 66, 'ingenieur'),
(10, '2021-11-05', 77, 'technicien');

-- --------------------------------------------------------

--
-- Structure de la table `visiteur`
--

CREATE TABLE `visiteur` (
  `vis_matricule` int(50) NOT NULL,
  `vis_nom` varchar(25) DEFAULT NULL,
  `vis_prenom` varchar(50) DEFAULT NULL,
  `vis_adresse` varchar(50) DEFAULT NULL,
  `vis_ville` varchar(30) DEFAULT NULL,
  `vis_datenaisance` varchar(10) DEFAULT NULL,
  `sec_code` int(10) DEFAULT NULL,
  `lab_code` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `visiteur`
--

INSERT INTO `visiteur` (`vis_matricule`, `vis_nom`, `vis_prenom`, `vis_adresse`, `vis_ville`, `vis_datenaisance`, `sec_code`, `lab_code`) VALUES
(1, 'jean ', 'paul', 'avenue de la republique', 'Marseille', '2000-10-16', 1, 3),
(2, 'debouz', 'jamel', 'rue de paris', 'Reims', '2000-04-07', 3, 5),
(3, 'adams', 'kev', 'boulevard secrtan ', 'Dijon', '1973-09-23', 2, 2),
(4, 'bertran', 'bruno', 'avenue des champs', 'Reims', '1983-12-11', 1, 3),
(5, 'levi', 'patrick', 'rue de la paix', 'Bordeaux', '1997-02-02', 4, 1),
(6, 'dadoun', 'anaia', 'impasse du chat', 'Bordeaux', '1993-03-10', 3, 4),
(7, 'coen', 'michelle', ' rue de paris', 'Paris', '1999-03-09', 2, 1),
(8, 'aziza', 'noam', 'rue de belleville ', 'Paris', '2002-09-14', 4, 5),
(9, 'nabeth', 'nolan', 'rue haxo ', 'Dijon ', '2004-10-26', 3, 4),
(10, 'joseph', 'jeremie', 'rue du soleil', 'Marseille', '2003-02-10', 2, 2),
(97, 'd', 'd', 'd', 'd', '2022-02-16', 1, 1),
(98, 'c', 'f', 'f', 'f', '2022-02-09', 1, 1),
(99, 'd', 'd', 'd', 'd', '2022-02-02', 1, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `labo`
--
ALTER TABLE `labo`
  ADD PRIMARY KEY (`lab_code`);

--
-- Index pour la table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`reg_tra`),
  ADD KEY `sec_code` (`sec_code`);

--
-- Index pour la table `secteur`
--
ALTER TABLE `secteur`
  ADD PRIMARY KEY (`sec_code`);

--
-- Index pour la table `travailler`
--
ALTER TABLE `travailler`
  ADD PRIMARY KEY (`vis_matricule`,`date_embauche`,`reg_tra`),
  ADD KEY `vis_matricule` (`vis_matricule`),
  ADD KEY `reg_tra` (`reg_tra`);

--
-- Index pour la table `visiteur`
--
ALTER TABLE `visiteur`
  ADD PRIMARY KEY (`vis_matricule`),
  ADD KEY `sec_code` (`sec_code`),
  ADD KEY `lab_code` (`lab_code`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `region`
--
ALTER TABLE `region`
  MODIFY `reg_tra` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `travailler`
--
ALTER TABLE `travailler`
  MODIFY `vis_matricule` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT pour la table `visiteur`
--
ALTER TABLE `visiteur`
  MODIFY `vis_matricule` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `region`
--
ALTER TABLE `region`
  ADD CONSTRAINT `region_ibfk_1` FOREIGN KEY (`sec_code`) REFERENCES `secteur` (`sec_code`);

--
-- Contraintes pour la table `secteur`
--
ALTER TABLE `secteur`
  ADD CONSTRAINT `secteur_ibfk_1` FOREIGN KEY (`sec_code`) REFERENCES `visiteur` (`sec_code`);

--
-- Contraintes pour la table `travailler`
--
ALTER TABLE `travailler`
  ADD CONSTRAINT `travailler_ibfk_2` FOREIGN KEY (`reg_tra`) REFERENCES `region` (`reg_tra`),
  ADD CONSTRAINT `travailler_ibfk_3` FOREIGN KEY (`vis_matricule`) REFERENCES `visiteur` (`vis_matricule`);

--
-- Contraintes pour la table `visiteur`
--
ALTER TABLE `visiteur`
  ADD CONSTRAINT `visiteur_ibfk_1` FOREIGN KEY (`lab_code`) REFERENCES `labo` (`lab_code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
