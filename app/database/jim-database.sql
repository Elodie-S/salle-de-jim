-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 07 nov. 2022 à 23:22
-- Version du serveur : 8.0.27
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `jim`
--

-- --------------------------------------------------------

--
-- Structure de la table `grant_permissions`
--

DROP TABLE IF EXISTS `grant_permissions`;
CREATE TABLE IF NOT EXISTS `grant_permissions` (
  `grant_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL,
  `perm1` tinyint(1) NOT NULL DEFAULT '0',
  `perm2` tinyint(1) NOT NULL DEFAULT '0',
  `perm3` tinyint(1) NOT NULL DEFAULT '0',
  `perm4` tinyint(1) NOT NULL DEFAULT '0',
  `perm5` tinyint(1) NOT NULL DEFAULT '0',
  `perm6` tinyint(1) NOT NULL DEFAULT '0',
  `perm7` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`grant_id`),
  KEY `user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `grant_permissions`
--

INSERT INTO `grant_permissions` (`grant_id`, `user_name`, `perm1`, `perm2`, `perm3`, `perm4`, `perm5`, `perm6`, `perm7`) VALUES
(46, 'Lyon', 1, 1, 1, 1, 1, 1, 1),
(47, 'Paris', 1, 1, 1, 1, 1, 1, 1),
(48, 'Marseille', 1, 1, 1, 0, 0, 1, 1),
(49, 'Bordeaux', 1, 1, 1, 0, 0, 0, 1),
(50, 'Nice', 1, 0, 1, 0, 0, 0, 1),
(51, 'Nantes', 1, 1, 1, 0, 0, 0, 1),
(52, 'Montpellier', 1, 1, 1, 1, 0, 0, 1),
(53, 'Strasbourg', 1, 1, 0, 0, 0, 1, 1),
(54, 'Lille', 1, 1, 1, 1, 0, 0, 1),
(55, 'Toulon', 1, 0, 1, 0, 1, 0, 1),
(56, 'Grenoble', 1, 0, 1, 1, 0, 1, 1),
(69, 'Avignon', 1, 0, 0, 0, 0, 0, 1),
(79, 'Toulouse', 1, 1, 0, 0, 0, 1, 1),
(84, 'Bellecour', 1, 1, 1, 0, 0, 0, 1),
(85, 'Confluence', 1, 1, 1, 0, 1, 1, 1),
(86, 'Gerland', 1, 0, 1, 0, 0, 0, 1),
(87, 'Brotteaux', 1, 1, 1, 0, 1, 1, 1),
(88, 'Lumière', 1, 0, 1, 0, 0, 0, 1),
(89, 'Opéra', 1, 1, 1, 0, 1, 0, 1),
(90, 'Louvre', 1, 1, 0, 0, 0, 1, 1),
(91, 'Bastille', 1, 1, 1, 1, 1, 0, 1),
(92, 'Vendome', 1, 1, 0, 1, 0, 0, 1),
(93, 'Bourse', 1, 1, 1, 0, 0, 0, 1),
(94, 'Panthéon', 1, 0, 0, 0, 0, 0, 1),
(95, 'Vieux-Port', 1, 1, 0, 0, 0, 0, 1),
(96, 'Panier', 1, 0, 0, 0, 0, 0, 1),
(97, 'Notre-Dame', 1, 1, 1, 0, 0, 1, 0),
(98, 'Bastide', 1, 1, 1, 0, 0, 0, 1),
(99, 'St Pierre', 1, 0, 0, 0, 0, 0, 1),
(100, 'Californie', 1, 0, 1, 0, 0, 0, 1),
(101, 'Jules Verne', 1, 1, 0, 0, 0, 0, 1),
(102, 'Palavas', 1, 1, 0, 0, 0, 0, 1),
(103, 'Centre', 1, 1, 1, 1, 0, 0, 1),
(104, 'Dumas', 1, 1, 0, 0, 0, 1, 1),
(105, 'Cathédrale', 1, 1, 0, 0, 0, 0, 0),
(106, 'Gambetta', 1, 0, 1, 0, 0, 0, 1),
(107, 'Sarrazins', 1, 0, 1, 0, 0, 0, 1),
(108, 'Liberté', 1, 0, 1, 0, 1, 0, 1),
(109, 'Liberation', 1, 0, 1, 1, 0, 0, 1),
(110, 'Marronniers', 1, 0, 1, 0, 0, 0, 1),
(111, 'Casiabianca', 1, 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `gym`
--

DROP TABLE IF EXISTS `gym`;
CREATE TABLE IF NOT EXISTS `gym` (
  `gym_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `gym_manager` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gym_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gym_owner` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`gym_id`),
  KEY `user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `gym`
--

INSERT INTO `gym` (`gym_id`, `user_name`, `gym_manager`, `gym_address`, `gym_owner`) VALUES
(2, 'Bellecour', 'Damien Bourgeois', '12 rue de la République 69001 Lyon', 'Lyon'),
(3, 'Confluence', 'Simon Riqueti', '35 Rue Denuzière, 69002 Lyon', 'Lyon'),
(4, 'Gerland', 'Olivier Bullion', '99 Rue de Gerland, 69007 Lyon', 'Lyon'),
(5, 'Brotteaux', 'Didier Chappelle', '19 Rue Notre Dame, 69006 Lyon', 'Lyon'),
(6, 'Lumière', 'Enzo Blanchard', '30 rue des frères Lumière 69008 Lyon', 'Lyon'),
(7, 'Opéra', 'Silvain Demaret', '8 Rue de la Michodière, 75002 Paris', 'Paris'),
(8, 'Louvre', 'Vincent Couturier', '31 Av. de l\'Opéra, 75001 Paris', 'Paris'),
(9, 'Bastille', 'Jonathan Soyer', '12 Rue du Petit Musc, 75004 Paris', 'Paris'),
(10, 'Vendome', 'Didier Courvoisier', '6 Rue Daunou, 75002 Paris', 'Paris'),
(11, 'Bourse', 'Gabriel Delafosse', '21 Rue de la Banque, 75002 Paris', 'Paris'),
(12, 'Panthéon', 'Matthias Cormier', '7 Rue de Caumartin, 75009 Paris', 'Paris'),
(13, 'Vieux-Port', 'Ange Carpentier', '87 Rue Sainte, 13007 Marseille', 'Marseille'),
(14, 'Panier', 'Basile Chapuis', '14 Rue Jean François Leca, 13002 Marseille', 'Marseille'),
(15, 'Notre-Dame', 'Denis De la Croix', '40 Rue Lucien Gaillard, 13000 Marseille', 'Marseille'),
(16, 'Bastide', 'Célia Jaubert', '9 Rue Fondaudège, 33000 Bordeaux', 'Bordeaux'),
(17, 'St Pierre', 'Rébecca Peletier', '296 Av. Thiers, 33100 Bordeaux', 'Bordeaux'),
(18, 'Californie', 'Yves Alarie', '13-15 Av. de la Californie, 06200 Nice', 'Nice'),
(19, 'Jules Verne', 'Timothé Dimont', '14 Bd Jules Verne, 44300 Nantes', 'Nantes'),
(20, 'Palavas', 'Edgar Jacquard', 'Av. de Palavas 77, 34000 Montpellier', 'Montpellier'),
(21, 'Centre', 'Benjamin Pasquier', '240 Av. du Père Soulas, 34090 Montpellier', 'Montpellier'),
(22, 'Dumas', 'Régis Chéron', 'Rue Alexandre Dumas 8, 67200 Strasbourg', 'Strasbourg'),
(23, 'Cathédrale', 'Élise Maret', '27 Rue des Frères, 67000 Strasbourg', 'Strasbourg'),
(24, 'Gambetta', 'Roselyne Tremblay', '233 Rue Léon Gambetta, 59000 Lille', 'Lille'),
(25, 'Sarrazins', 'Sarrazins', '4 bis Rue des Sarrazins, 59800 Lille', 'Lille'),
(26, 'Liberté', 'Renaud Blaise', '161 Av. Colonel Fabien, 83000 Toulon', 'Toulon'),
(27, 'Liberation', 'Marc Pélissier', '171 Cr de la Libération et du Général de Gaulle, 38000 Grenoble', 'Grenoble'),
(28, 'Marronniers', 'Christine Lozé', '2 Chem. des Marronniers, 38100 Grenoble', 'Grenoble'),
(29, 'Casiabianca', 'Vivien LeBeau', 'Rue du Sous-Marin Casabianca, 84000 Avignon', 'Avignon');

-- --------------------------------------------------------

--
-- Structure de la table `jim_users`
--

DROP TABLE IF EXISTS `jim_users`;
CREATE TABLE IF NOT EXISTS `jim_users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL,
  `user_role` varchar(50) NOT NULL,
  `user_active` tinyint DEFAULT '0',
  `user_email` varchar(100) NOT NULL,
  `user_pwd` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `jim_users`
--

INSERT INTO `jim_users` (`user_id`, `user_name`, `user_role`, `user_active`, `user_email`, `user_pwd`) VALUES
(1, 'Admin', 'admin', 1, 'admin@salle2jim.com', 'e098d225dad0f97533904a3f4ca3dcb58a4cdb34ca6d43c02a4f2471042dcd0d'),
(83, 'Lyon', 'partner', 1, 'lyon@salle2jim.com', '9ae16ea7ef640789b938af61d6b41ea651ad94565491903961f3a051b2db2f20'),
(84, 'Paris', 'partner', 1, 'paris@salle2jim.com', '27a28b357590bb9d30d1003a987c30ea3300aad2c03df22b339552537c60a826'),
(85, 'Marseille', 'partner', 1, 'marseille@salle2jim.com', '304a3a5796cb35d99ea801f199926ff7c1bc57ac202641c91de607d8826fc58c'),
(86, 'Bordeaux', 'partner', 0, 'bordeaux@salle2jim.com', 'd86014154c9db1934567ec5de0dae8faa444ca36f58ea3a37333c6cf1436aca1'),
(87, 'Nice', 'partner', 1, 'nice@salle2jim.com', '6efd5ded5592c4b8d164ce9b95d4c96ff4a633f7a08291262cb747f53dea5a30'),
(88, 'Nantes', 'partner', 0, 'nantes@salle2jim.com', 'e0d3b01f15661199300d2eb0e896447e5d05f4697dea794cf0f8b3a9521a230c'),
(89, 'Montpellier', 'partner', 1, 'montpellier@salle2jim.com', '08313809e7e0b9f41593a9addfeb519857e894985ddf79a1bfd6ac37542ddc57'),
(90, 'Strasbourg', 'partner', 1, 'strasbourg@salle2jim.com', 'cae20561f29f4cd8c907d2282289ea80267771b32f1bdd0b45d98ccb7214d1dc'),
(91, 'Lille', 'partner', 1, 'lille@salle2jim.com', '8cc216112b3be11282d712d0d99fe0cea0f5c38303d580d1fa16b379de562f98'),
(92, 'Toulon', 'partner', 1, 'toulon@salle2jim.com', 'b34b4eed6453cbf1d64d6a5f56d95bfd312a30695ab1c96c5e3d15c1f666e5f8'),
(93, 'Grenoble', 'partner', 0, 'grenoble@salle2jim.com', '3bd4ae2f88576f61ad6503d44ec7a221b9d87bee2ca8ecc90e1e3d39ac64dad8'),
(99, 'Avignon', 'partner', 1, 'avignon@salle2jim.com', '34f6a17201427f405de431421416724040502ead6156dc1b20036a7a9335a575'),
(111, 'Toulouse', 'partner', 1, 'toulouse@salle2jim.com', 'c74bfdb4e80a535fbccba94bc26b54347c7612faadc5f658b49f394de0da3d8e'),
(121, 'Bellecour', 'gym', 1, 'lyon-bellecour@salle2jim.com', '7f8fc74beb2de2c756600101b1a35b9f34c44c416857c1800f3e847e728d8de5'),
(122, 'Confluence', 'gym', 1, 'lyon-confluence@salle2jim.com', 'b2c0d8e0095c734b7229b8eb7cad6b8dbce389142e41a4cd144829affe60d3c3'),
(123, 'Gerland', 'gym', 1, 'lyon-gerland@salle2jim.com', '02e27dc133bdfe5a851c614825878c2d9ba5097726ae1d42dda2bc90c1486ee8'),
(124, 'Brotteaux', 'gym', 0, 'lyon-brotteaux@salle2jim.com', 'aa71d2aa3948fd92da7ed1b95cfb832c9ff3ac7228346541848909913af06e0c'),
(125, 'Lumière', 'gym', 1, 'lyon-lumiere@salle2jim.com', '7a6fa36595f6b5aafe3a03688654e1555b09e7ac41959e87d33a67463fe52030'),
(126, 'Opéra', 'gym', 1, 'paris-opera@salle2jim.com', 'fa15babdfcfe2318ab0c9de66e54a1c54bcc2dbe78026c9075575f7a21eea633'),
(127, 'Louvre', 'gym', 1, 'paris-louvre@salle2jim.com', 'c18e3176e026c184252b9ad745b5527742283134549a86c58aee637b945fe83d'),
(128, 'Bastille', 'gym', 1, 'paris-bastille@salle2jim.com', '2e6b2498bc1307246e059f95570bf06c7a74f118cf33ef82e25d20e6340f3c34'),
(129, 'Vendome', 'gym', 1, 'paris-vendome@salle2jim.com', '1ee19ab57843d8e781fd925f396eeebd84285d6e5c43a667ba39bd26cf0a9c52'),
(130, 'Bourse', 'gym', 1, 'paris-bourse@salle2jim.com', '690cf3b3a738039a58fb00d01d50ad1eaf3c4aa9286e0fe936004792c4f20a5f'),
(131, 'Panthéon', 'gym', 1, 'paris-pantheon@salle2jim.com', '2d0f6c22b926ef2fe1d2be35b78d6420909f9607b30ce12fda4c75439db3a8ec'),
(132, 'Vieux-Port', 'gym', 1, 'marseille-vieux-port@salle2jim.com', '640b76beeb105bd38793896b2d8b26e524a7f8d28bd44586ba57de41b42e1b50'),
(133, 'Panier', 'gym', 1, 'marseille-panier@salle2jim.com', 'ad0a5c33d6e5653f0c250a387da1a7a08b26da40b797fda44aafb86aae199a07'),
(134, 'Notre-Dame', 'gym', 1, 'marseille-notre-dame@salle2jim.com', '843f9cc4d1d65dc1a0c9f5de54a057d1a15d0b650bb17f1bab103c5fa24024ed'),
(135, 'Bastide', 'gym', 1, 'bordeaux-bastide@salle2jim.com', '543fdb0e0623461916f11f589174997a688c11d58cf67c3e734bd489dc176622'),
(136, 'St Pierre', 'gym', 1, 'bordeaux-st-pierre@salle2jim.com', 'cb9e702c25efd359a85ab4f5a4880e8a9c7d8ed2f79278f8b8421278ba2f0d40'),
(137, 'Californie', 'gym', 1, 'nice-californie@salle2jim.com', 'a8a30831643c842e809ff6e99a23f1c71a80e0f7659765ec12c4125d09c1bcaa'),
(138, 'Jules Verne', 'gym', 1, 'nantes-jules-verne@salle2jim.com', 'ddf054e9efb7374f19edc93d4386b8d65076e3bb11bd347e563b124eee4abd5f'),
(139, 'Palavas', 'gym', 1, 'montpellier-palavas@salle2jim.com', '754dcff474372c6e9535acd7e9742141626cf2e53c6f5b239ffa788f78ff17db'),
(140, 'Centre', 'gym', 1, 'montpellier-centre@salle2jim.com', '907cf72966403c4ea8ac97cbd64bfca9fe3e1b3bdae8d036582449fca2d98a68'),
(141, 'Dumas', 'gym', 1, 'strasbourg-dumas@salle2jim.com', 'cbcc96e8da6a6173fc463f7e5ef3ca7524f4babcc8bd6a946a9711a4535cc2e0'),
(142, 'Cathédrale', 'gym', 1, 'strasbourg-cathedrale@salle2jim.com', '39c478a95d43959b0dcb1df179d8fc31e2ca288582cc8a148d37b0c2748fc8f2'),
(143, 'Gambetta', 'gym', 1, 'lille-gambetta@salle2jim.com', '3b5713cda9558a592d4c0955abe49473376b863b2f5f223b5cf1c6d5c7887925'),
(144, 'Sarrazins', 'gym', 1, 'lille-sarrazins@salle2jim.com', '18d48b5dbf2a4599d394ffd0c5a9b64cad4ade1010c978f506cb55e3d164e046'),
(145, 'Liberté', 'gym', 1, 'toulon-liberte@salle2jim.com', 'fde8b8bd48632a5277cb95380de39b731b03d8032a3175ab4d2b44662281faea'),
(146, 'Liberation', 'gym', 1, 'granoble-liberation@salle2jim.com', '0ab576955f739803710b407847b5896d47047c4d3159df093e1c2595fd374945'),
(147, 'Marronniers', 'gym', 1, 'grenoble-marronniers@salle2jim.com', '46f7415e12ee4c8016127e9c8413046f0b5b6541c9c59c1bc5dbb19ea3339b94'),
(148, 'Casiabianca', 'gym', 1, 'avignon-casabianca@salle2jim.com', 'd200df0db24f4295f7c309ff1729a311b08cf341b982bb6df7e29d220704e028');

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `permission_id` int NOT NULL AUTO_INCREMENT,
  `permission_nb` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`permission_id`, `permission_nb`, `permission_name`) VALUES
(1, 'perm1', 'Envoyer une newsletter'),
(2, 'perm2', 'Organiser un évènement sportif'),
(3, 'perm3', 'Vendre des boissons'),
(4, 'perm4', 'Vendre du matériel sportif'),
(5, 'perm5', 'Section VIP'),
(6, 'perm6', 'Commercialiser des abonnements Premium'),
(7, 'perm7', 'Gérer le planning des équipes');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `grant_permissions`
--
ALTER TABLE `grant_permissions`
  ADD CONSTRAINT `user_name` FOREIGN KEY (`user_name`) REFERENCES `jim_users` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `gym`
--
ALTER TABLE `gym`
  ADD CONSTRAINT `gym_ibfk_1` FOREIGN KEY (`user_name`) REFERENCES `jim_users` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
