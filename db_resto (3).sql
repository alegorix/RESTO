-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 03 déc. 2024 à 07:58
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_resto`
--

-- --------------------------------------------------------

--
-- Structure de la table `tbl_menu`
--

DROP TABLE IF EXISTS `tbl_menu`;
CREATE TABLE IF NOT EXISTS `tbl_menu` (
  `id_plat` int NOT NULL AUTO_INCREMENT,
  `type_plat` int NOT NULL,
  `nom_plat` varchar(200) NOT NULL,
  `desc_plat` varchar(500) NOT NULL,
  `prix_plat` varchar(7) NOT NULL,
  `photo_plat` varchar(200) NOT NULL,
  `menu_active` int DEFAULT '1',
  PRIMARY KEY (`id_plat`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `tbl_menu`
--

INSERT INTO `tbl_menu` (`id_plat`, `type_plat`, `nom_plat`, `desc_plat`, `prix_plat`, `photo_plat`, `menu_active`) VALUES
(1, 1, 'Scampis à l\'ail', 'Fabrication maison par le chef Ayoub', '17,45', '', 1),
(2, 1, 'Cuisses de grenouilles', 'Farcies au canard', '13,45', '', 0),
(4, 0, 'test', '', '12', '', 1),
(8, 1, 'aaaaaa', 'AAAAAA', 'zzz', '', 1),
(5, 2, 'Raviolis', '', '13,50', '', 1),
(6, 0, 'ddd', '', '12', '', 1),
(7, 3, 'Pates bolo', '', '12', '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_type_plat`
--

DROP TABLE IF EXISTS `tbl_type_plat`;
CREATE TABLE IF NOT EXISTS `tbl_type_plat` (
  `id_type_plat` int NOT NULL AUTO_INCREMENT,
  `nom_type_plat` varchar(100) NOT NULL,
  PRIMARY KEY (`id_type_plat`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `tbl_type_plat`
--

INSERT INTO `tbl_type_plat` (`id_type_plat`, `nom_type_plat`) VALUES
(1, 'Entrées'),
(2, 'Plats'),
(3, 'Desserts'),
(4, 'Pizzas');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `user_nom` varchar(40) NOT NULL,
  `user_prenom` varchar(40) NOT NULL,
  `user_email` varchar(40) NOT NULL,
  `user_phone` varchar(20) NOT NULL,
  `user_password` varchar(250) NOT NULL,
  `user_active` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `tbl_users`
--

INSERT INTO `tbl_users` (`id_user`, `user_nom`, `user_prenom`, `user_email`, `user_phone`, `user_password`, `user_active`) VALUES
(1, 'Delbrassinne', 'Eric', 'eric@alegorix.agency', '+32473123456', 'test', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tb_reserv`
--

DROP TABLE IF EXISTS `tb_reserv`;
CREATE TABLE IF NOT EXISTS `tb_reserv` (
  `id_reserv` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `reserv_nbrpers` int NOT NULL,
  `reserv_date` date NOT NULL,
  `reserv_heure` time NOT NULL,
  `reserv_commentaire` varchar(2000) NOT NULL,
  PRIMARY KEY (`id_reserv`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `tb_reserv`
--

INSERT INTO `tb_reserv` (`id_reserv`, `user_id`, `reserv_nbrpers`, `reserv_date`, `reserv_heure`, `reserv_commentaire`) VALUES
(1, 1, 6, '2024-11-23', '12:30:00', 'Près de la fenêtre si possible, merci');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
