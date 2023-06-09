-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 26 mai 2023 à 19:42
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pos_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `order_list`
--

CREATE TABLE `order_list` (
  `id_order` varchar(6) NOT NULL,
  `date_order` date NOT NULL,
  `id_article` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `note` text NOT NULL,
  `num_table` int(11) NOT NULL,
  `nom_serveur` text NOT NULL,
  `total_price` int(11) NOT NULL,
  `payed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `order_list`
--

INSERT INTO `order_list` (`id_order`, `date_order`, `id_article`, `quantity`, `note`, `num_table`, `nom_serveur`, `total_price`, `payed`) VALUES
('gaaif2', '2023-05-08', 1, 2, 'SS', 4, 'ME OFC', 800, 0),
('gaaif2', '2023-05-08', 2, 2, 'AS', 4, 'ME OFC', 800, 0),
('f6c_bw', '2023-05-08', 47, 1, 'Double Chiken', 6, 'ME OFC', 400, 0),
('f6c_bw', '2023-05-08', 10, 1, 'Aucune', 6, 'ME OFC', 400, 0),
('ad4b47', '2023-05-08', 47, 2, 'DC', 2, 'ME OFC', 200, 0),
('ad4b47', '2023-05-08', 18, 2, 'Aucune', 2, 'ME OFC', 200, 0),
('xrkrxh', '2023-05-08', 18, 2, 'Aucun', 1, 'ME OFC', 200, 0),
('xrkrxh', '2023-05-08', 48, 3, 'Thon', 1, 'ME OFC', 300, 0),
('b9svxr', '2023-05-09', 1, 1, '', 2, 'ME OFC', 100, 0),
('b9svxr', '2023-05-09', 2, 1, '', 2, 'ME OFC', 100, 0),
('b9svxr', '2023-05-09', 3, 1, '', 2, 'ME OFC', 100, 0),
('0bderb', '2023-05-10', 1, 1, 'Sans Sucre', 2, 'ME OFC', 100, 0),
('0bderb', '2023-05-10', 47, 1, 'Double chiken', 2, 'ME OFC', 100, 0),
('faz8gz', '2023-05-13', 2, 2, 'Sans Sucre', 4, 'ME OFC', 200, 0),
('faz8gz', '2023-05-13', 47, 1, 'Double Chiken', 4, 'ME OFC', 100, 0),
('yjr0a6', '2023-05-15', 1, 1, '', 2, 'Zakaria Machmach', 100, 0),
('yjr0a6', '2023-05-15', 2, 1, '', 2, 'Zakaria Machmach', 100, 0),
('fx7x9y', '2023-05-15', 9, 2, 'Very Cold', 4, 'Ra Ze', 200, 0),
('fx7x9y', '2023-05-15', 47, 1, 'Double Frommage', 4, 'Ra Ze', 100, 0);

-- --------------------------------------------------------

--
-- Structure de la table `pos_table`
--

CREATE TABLE `pos_table` (
  `uid` int(11) NOT NULL,
  `url` text NOT NULL,
  `name` text NOT NULL,
  `price` text NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `pos_table`
--

INSERT INTO `pos_table` (`uid`, `url`, `name`, `price`, `type`) VALUES
(1, 'assets/images/avocadrotea.jpeg', 'Avocadro Tea', '100 ', 'Boisson Chaude'),
(2, 'assets/images/blackcoffee.jpeg', 'Black Coffee', '100', 'Boisson chaude'),
(3, 'assets/images/cappuchino.jpeg', 'Cappuccino', '100', 'Boisson chaude'),
(4, 'assets/images/coffemilk.jpeg', 'Coffe With Milk', '100', 'Boisson chaude'),
(5, 'assets/images/creamcoffee.jpeg', 'Cream Coffee', '100', 'Boisson chaude'),
(6, 'assets/images/morrocantea.jpeg', 'Moroccan Tea', '100', 'Boisson chaude'),
(7, 'assets/images/Pumpkin spice latte.jpeg', 'Pumpkin Spice Latte', '100', 'Boisson chaude'),
(8, 'assets/images/Thé rouge de Noël.webp', 'Christmas Red Tea', '100', 'Boisson chaude'),
(9, 'assets/images/chocolatmilkshake.jpeg', ' Chocolat Milkshake ', '100', 'Boisson Froide'),
(10, 'assets/images/Coldbrew.jpeg', 'Cold Brew', '100', 'Boisson Froide'),
(11, 'assets/images/Frappuccino® - Mocha.jpeg', ' Frappuccino Mocha', '100', 'Boisson Froide'),
(12, 'assets/images/Frappuccino® Coco Choco.jpeg', ' Coco Choco', '100', 'Boisson Froide'),
(13, 'assets/images/Mocha.jpeg', ' Mocha ', '100', 'Boisson Froide'),
(14, 'assets/images/Peach Iced Tea.jpeg', ' Peach Iced Tea ', '100', 'Boisson Froide'),
(15, 'assets/images/vanillemilkshake.jpeg', ' Pumpkin Spice Latte', '100', 'Boisson Froide'),
(16, 'assets/images/Iced Caramel Macchiato.jpeg', ' Christmas Red Tea', '100', 'Boisson Froide'),
(17, 'assets/images/7up.jpeg', '7UP ', '100', 'Boisson Froide'),
(18, 'assets/images/coca.jpeg', 'Coca Cola', '100', 'Boisson Froide'),
(19, 'assets/images/fanta.jpeg', ' Fanta ', '100', 'Boisson Froide'),
(20, 'assets/images/hawie.jpeg', ' Hawai ', '100', 'Boisson Froide'),
(21, 'assets/images/pepsi.jpeg', ' Pepsi ', '100', 'Boisson Froide'),
(22, 'assets/images/sprite.jpeg', ' Sprite ', '100', 'Boisson Froide'),
(23, 'assets/images/sweppscitron.jpeg', ' Sweppes Citron ', '100', 'Boisson Froide'),
(24, 'assets/images/mirindina.jpeg', ' Mirindina Orange ', '100', 'Boisson Froide'),
(25, 'assets/images/choux a la creme.jpeg', 'Cream Puffs', '100', 'Desserts'),
(26, 'assets/images/Un gâteau végan au chocolat.jpeg', 'Chocolate Cake', '100', 'Desserts'),
(27, 'assets/images/Une mousse aux fruits rouges.jpeg', 'Red Fruit Mousse', '100', 'Desserts'),
(28, 'assets/images/Une tarte au citron meringuée.jpeg', 'Lemon Pie', '100', 'Desserts'),
(29, 'assets/images/Tiramisu traditionnel.jpeg', 'Tiramisu ', '100', 'Desserts'),
(30, 'assets/images/NOUGAT GLACÉ AUX FRUITS SECS.jpeg', 'Frozen Nougat', '100', 'Desserts'),
(31, 'assets/images/MOUSSE AU CHOCOLAT.jpeg', 'Chocolate Mousse', '100', 'Desserts'),
(32, 'assets/images/RIZ AU LAIT.jpeg', 'Milk Rice ', '100', 'Desserts'),
(33, 'assets/images/zazaa.jpeg', 'Zaazaa Juice', '100', 'Jus'),
(34, 'assets/images/ananas.jpg', 'Pineapple Juice', '100', 'Jus'),
(35, 'assets/images/jus-davocat.jpg', 'Avocado Juice', '100', 'Jus'),
(36, 'assets/images/jus-de-citron.jpg', 'Lemon Juice', '100', 'Jus'),
(37, 'assets/images/jus-dorange.jpg', 'Orange Juice ', '100', 'Jus'),
(38, 'assets/images/JUS-PANACH_.jpg', 'Mixed Juice', '100', 'Jus'),
(39, 'assets/images/jus-de-raisin.jpg', 'Grape Juice', '100', 'Jus'),
(40, 'assets/images/pommejus.jpeg', 'Apple Juice with Milk ', '100', 'Jus'),
(41, 'assets/images/Salade César au poulet.jpeg', ' Caesar salad  ', '100', 'Salade'),
(42, 'assets/images/Salade composée au thon.jpeg', 'Salad with Tuna ', '100', 'Salade'),
(43, 'assets/images/Salade de betteraves et œufs durs.jpeg', ' Beet salad & eggs', '100', 'Salade'),
(44, 'assets/images/Salade de roquette aux figues et aux poires.jpeg', ' Arugula salad ', '100', 'Salade'),
(45, 'assets/images/salade necoise.jpeg', ' Nicoise salad ', '100', 'Salade'),
(46, 'assets/images/Salade Waldorf facile.jpg', ' Waldorf Salad ', '100', 'Salade'),
(47, 'assets/images/burgerwh.jpg', 'Chicken Burger', '100', 'Plat'),
(48, 'assets/images/pizza.jpeg', 'salami Pizza', '100', 'Plat'),
(49, 'assets/images/Bavettes à l\'échalote.jpg', 'Bavettes à l\'échalote', '100', 'Plat'),
(50, 'assets/images/lasagna.jpg', 'Lasagna', '100', 'Plat'),
(51, 'assets/images/spageti.jpg', 'Spaghetti ', '100', 'Plat'),
(52, 'assets/images/taco.jpg', 'Americano Taco', '100', 'Plat'),
(53, 'assets/images/suchi.jpg', 'Sushi Plate ', '100', 'Plat'),
(54, 'assets/images/grilled fish and potatoes.jpg', 'Grilled Fish & Potatoes', '100', 'Plat'),
(55, 'assets/images/Leftover Turkey and Ham Pie.jpg', 'Leftover Turkey & Ham Pie', '100', 'Plat'),
(56, 'assets/images/Tandoori Chicken.jpeg', 'Tandoori Chicken', '100', 'Plat'),
(57, 'assets/images/chikentagine.jpg', 'Chiken Tagine', '100', 'Plat'),
(58, 'assets/images/rfissa.jpeg', ' Moroccan Rfissa ', '100', 'Plat'),
(59, 'assets/images/Bouillabaisse de Marseille.jpg', ' Bouillabaisse ', '100', 'Soupe'),
(60, 'assets/images/harira.jpeg', 'Morrocan Harira', '100', 'Soupe'),
(61, 'assets/images/Minestrone.jpeg', 'Minestrone Soupe', '100', 'Soupe'),
(62, 'assets/images/Potage bicolore.jpg', 'Potage Bicolore', '100', 'Soupe'),
(63, 'assets/images/Soupe au pistou.jpg', 'Soupe au Pistou ', '100', 'Soupe'),
(64, 'assets/images/Soupe de légumes et de bœuf.jpeg', ' Légumes Soupe ', '100', 'Soupe');

-- --------------------------------------------------------

--
-- Structure de la table `users_table`
--

CREATE TABLE `users_table` (
  `uid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `job` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users_table`
--

INSERT INTO `users_table` (`uid`, `username`, `password`, `first_name`, `last_name`, `job`) VALUES
(4, 'Admin', 'Admin', 'Zakaria', 'Machmach', 'Admin'),
(17, 'Raze', '12345', 'Ra', 'Ze', 'Serveur');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `order_list`
--
ALTER TABLE `order_list`
  ADD KEY `foreign_key1` (`id_article`);

--
-- Index pour la table `pos_table`
--
ALTER TABLE `pos_table`
  ADD PRIMARY KEY (`uid`);

--
-- Index pour la table `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `pos_table`
--
ALTER TABLE `pos_table`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT pour la table `users_table`
--
ALTER TABLE `users_table`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `foreign_key1` FOREIGN KEY (`id_article`) REFERENCES `pos_table` (`uid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
