-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 17 mars 2024 à 22:58
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `symrecipe`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20240312181539', '2024-03-15 07:28:52', 90),
('DoctrineMigrations\\Version20240315062940', '2024-03-15 07:30:08', 129),
('DoctrineMigrations\\Version20240315165137', '2024-03-15 17:51:58', 52);

-- --------------------------------------------------------

--
-- Structure de la table `ingredient`
--

CREATE TABLE `ingredient` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ingredient`
--

INSERT INTO `ingredient` (`id`, `name`, `price`, `created_at`) VALUES
(344, 'nisi', 62, '2024-03-16 20:15:07'),
(345, 'sit', 66, '2024-03-16 20:15:07'),
(346, 'qui', 63, '2024-03-16 20:15:07'),
(347, 'voluptatibus', 1, '2024-03-16 20:15:07'),
(348, 'eum', 97, '2024-03-16 20:15:07'),
(349, 'et', 52, '2024-03-16 20:15:07'),
(350, 'enim', 31, '2024-03-16 20:15:07'),
(351, 'ut', 38, '2024-03-16 20:15:07'),
(352, 'reiciendis', 98, '2024-03-16 20:15:07'),
(353, 'quasi', 75, '2024-03-16 20:15:07'),
(354, 'recusandae', 90, '2024-03-16 20:15:07'),
(355, 'vel', 85, '2024-03-16 20:15:07'),
(356, 'reprehenderit', 83, '2024-03-16 20:15:07'),
(357, 'incidunt', 8, '2024-03-16 20:15:07'),
(358, 'quis', 36, '2024-03-16 20:15:07'),
(359, 'aut', 1, '2024-03-16 20:15:07'),
(360, 'aut', 38, '2024-03-16 20:15:07'),
(361, 'ab', 41, '2024-03-16 20:15:07'),
(362, 'ea', 45, '2024-03-16 20:15:07'),
(363, 'laborum', 42, '2024-03-16 20:15:07'),
(364, 'similique', 89, '2024-03-16 20:15:07'),
(365, 'voluptatem', 52, '2024-03-16 20:15:07'),
(366, 'officiis', 95, '2024-03-16 20:15:07'),
(367, 'est', 3, '2024-03-16 20:15:07'),
(368, 'minus', 79, '2024-03-16 20:15:07'),
(369, 'quos', 32, '2024-03-16 20:15:07'),
(370, 'recusandae', 48, '2024-03-16 20:15:07'),
(371, 'et', 45, '2024-03-16 20:15:07'),
(372, 'aliquid', 21, '2024-03-16 20:15:07'),
(373, 'esse', 50, '2024-03-16 20:15:07'),
(374, 'illo', 24, '2024-03-16 20:15:07'),
(375, 'voluptatem', 50, '2024-03-16 20:15:07'),
(376, 'sit', 75, '2024-03-16 20:15:07'),
(377, 'sed', 36, '2024-03-16 20:15:07'),
(378, 'cupiditate', 93, '2024-03-16 20:15:07'),
(379, 'deserunt', 44, '2024-03-16 20:15:07'),
(380, 'unde', 34, '2024-03-16 20:15:07'),
(381, 'fuga', 24, '2024-03-16 20:15:07'),
(382, 'sit', 39, '2024-03-16 20:15:07'),
(383, 'voluptas', 43, '2024-03-16 20:15:07'),
(384, 'nihil', 36, '2024-03-16 20:15:07'),
(385, 'ipsum', 13, '2024-03-16 20:15:07'),
(386, 'debitis', 49, '2024-03-16 20:15:07'),
(387, 'qui', 50, '2024-03-16 20:15:07'),
(388, 'et', 42, '2024-03-16 20:15:07'),
(389, 'sequi', 43, '2024-03-16 20:15:07'),
(390, 'iste', 55, '2024-03-16 20:15:07'),
(391, 'in', 76, '2024-03-16 20:15:07'),
(392, 'laudantium', 30, '2024-03-16 20:15:07');

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `recipe`
--

CREATE TABLE `recipe` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `time` int(11) DEFAULT NULL,
  `nb_people` int(11) DEFAULT NULL,
  `difficulty` int(11) DEFAULT NULL,
  `description` longtext NOT NULL,
  `price` double DEFAULT NULL,
  `is_favorite` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `recipe`
--

INSERT INTO `recipe` (`id`, `name`, `time`, `nb_people`, `difficulty`, `description`, `price`, `is_favorite`, `created_at`, `updated_at`) VALUES
(178, 'perspiciatis', 127, NULL, 5, 'Aspernatur illum sed soluta facilis id voluptatem doloribus. Architecto reprehenderit necessitatibus est mollitia. Consectetur soluta nemo ut id. Optio eius nulla minus aut at vitae fugit.', NULL, 1, '2024-03-16 20:15:07', '2024-03-16 20:15:07'),
(179, 'fugit', NULL, NULL, 4, 'Dolor fugiat saepe libero magni consequuntur qui laboriosam. Molestiae aut quo illum enim corrupti.', NULL, 1, '2024-03-16 20:15:07', '2024-03-16 20:15:07'),
(180, 'doloremque', NULL, NULL, 3, 'Possimus dolorum adipisci ea corporis placeat voluptas voluptate. Culpa voluptatem a aliquid minus sit. Provident sit ut sunt aut vitae occaecati laboriosam. Ducimus tempora eaque ad voluptate. Ullam consequuntur consequatur ducimus sed voluptatem esse. Omnis sit vero quo rerum cupiditate et in.', NULL, 0, '2024-03-16 20:15:07', '2024-03-16 20:15:07'),
(181, 'et', NULL, 43, 2, 'Nulla dolorem aut tenetur maxime. Et veniam itaque deserunt nam et cupiditate. Ipsa ut sequi at voluptatem dolores doloremque deleniti. Quis omnis in quidem voluptates.', NULL, 0, '2024-03-16 20:15:07', '2024-03-16 20:15:07'),
(182, 'aspernatur', NULL, NULL, NULL, 'Qui repudiandae eos odit unde. Voluptates in expedita provident cumque omnis et. Quidem iure animi sapiente ratione exercitationem.', NULL, 0, '2024-03-16 20:15:07', '2024-03-16 20:15:07'),
(183, 'sed', 289, NULL, 1, 'Rerum dolores quam dolorum dolorum perferendis quia aut non. Officiis et ratione esse dolorum beatae. Sed nesciunt veniam enim nemo corrupti. Et vel nam ullam. Amet non inventore deserunt suscipit suscipit neque. Quaerat dolorum voluptatem eius veniam hic voluptas laboriosam facere.', NULL, 1, '2024-03-16 20:15:07', '2024-03-16 20:15:07'),
(184, 'totam', NULL, 12, 3, 'Incidunt aut animi consequatur sunt. Consequatur quae ducimus possimus temporibus. Quidem ut qui alias fugiat quam quibusdam aliquam praesentium.', NULL, 0, '2024-03-16 20:15:07', '2024-03-16 20:15:07'),
(185, 'molestias', 240, 46, NULL, 'Qui ipsa quis cum vero at numquam modi. Ut veniam officiis nam vero quaerat. Sit cumque dolorem praesentium corrupti ipsam consequatur. Quia molestias doloremque consectetur.', NULL, 1, '2024-03-16 20:15:07', '2024-03-16 20:15:07'),
(186, 'eaque', NULL, 50, NULL, 'Voluptates nihil rerum soluta corrupti sed nostrum. Eos odio dolore possimus deleniti. Ut incidunt distinctio vero at quia velit voluptas. Nesciunt amet non quasi debitis qui. At minus labore beatae dicta in ut dolorem.', NULL, 1, '2024-03-16 20:15:07', '2024-03-16 20:15:07'),
(187, 'rem', 1404, 16, NULL, 'Aut qui quisquam quia vel. Ipsam perferendis vero voluptas. Optio quia architecto molestiae in ut cum dolores non. Non explicabo omnis qui blanditiis quo dignissimos distinctio nostrum.', NULL, 1, '2024-03-16 20:15:07', '2024-03-16 20:15:07'),
(188, 'at', 1393, NULL, NULL, 'Quis voluptas voluptatum iusto velit. Sequi facere totam eveniet porro quod. Iusto ut cumque vel ut. Doloribus nihil saepe ab placeat fuga. Assumenda voluptates enim voluptas nihil fuga laboriosam. Eum consequatur quo sit autem vitae totam nam. Sed maxime unde rerum non iste.', NULL, 0, '2024-03-16 20:15:07', '2024-03-16 20:15:07'),
(189, 'veritatis', 1206, 42, NULL, 'Vel explicabo quod porro dolores harum sed. Quod et voluptatem ab dolor sint et magni. Aliquid perspiciatis accusamus sunt voluptas molestias sequi atque. Eveniet non pariatur maxime repellendus est quasi quam.', NULL, 1, '2024-03-16 20:15:07', '2024-03-16 20:15:07'),
(190, 'ut', NULL, NULL, 3, 'Necessitatibus et unde ipsum et quisquam unde architecto. Deleniti asperiores distinctio tempore et deserunt assumenda iusto sint. Laudantium culpa voluptatum dolores aspernatur saepe et dolorem.', NULL, 1, '2024-03-16 20:15:07', '2024-03-16 20:15:07'),
(191, 'rem', NULL, NULL, 3, 'Tempora laudantium corporis magnam ullam corrupti. Deserunt possimus excepturi itaque et debitis quam. Ut omnis ab est hic quidem dolor. Aut et ex velit.', NULL, 0, '2024-03-16 20:15:07', '2024-03-16 20:15:07'),
(192, 'alias', 898, 26, NULL, 'Et vitae dolor quia quae maiores sint nam. Accusamus molestiae repellendus ut dolor vitae voluptatibus ex temporibus. Accusamus numquam nostrum et.', NULL, 0, '2024-03-16 20:15:07', '2024-03-16 20:15:07'),
(193, 'fuga', 634, 9, 4, 'Ratione laborum possimus delectus et ut dolores modi. Recusandae fuga eveniet reprehenderit saepe unde ipsam. Quia et nostrum mollitia molestias itaque recusandae illum ut. Quos eaque amet optio nemo et incidunt nulla.', NULL, 0, '2024-03-16 20:15:07', '2024-03-16 20:15:07'),
(194, 'veritatis', NULL, NULL, NULL, 'Qui sequi et dolorem maiores sint veniam. Quasi nobis ut cupiditate possimus dolorum quo est. Quaerat quisquam et quas culpa perferendis id. Iste odit dolorum ad placeat.', NULL, 1, '2024-03-16 20:15:07', '2024-03-16 20:15:07'),
(195, 'facere', 17, NULL, NULL, 'Voluptatem doloremque vel et. In ea nemo nihil et facere et laborum. Qui et consequatur consequatur odio. Corporis doloribus harum iste. Omnis id ullam id quia et. Qui eligendi sapiente sed aliquam esse. Eum id temporibus et molestiae est. Et et fuga praesentium.', NULL, 1, '2024-03-16 20:15:07', '2024-03-16 20:15:07'),
(196, 'quisquam', 1154, NULL, 4, 'Aspernatur rem ratione illum deleniti adipisci. Dolor voluptas magnam sequi vitae. Amet necessitatibus inventore enim beatae excepturi. Esse possimus maiores aut voluptatem nihil officia perferendis.', NULL, 0, '2024-03-16 20:15:07', '2024-03-16 20:15:07'),
(197, 'voluptatem', 435, 21, 4, 'Velit sint quis quia explicabo voluptas quidem molestiae. Soluta quia et repudiandae ex a nihil. Inventore voluptas modi minima repellendus. Consequuntur aut corrupti voluptatem tenetur adipisci iusto possimus. Id rerum quia vel ipsum delectus.', NULL, 1, '2024-03-16 20:15:07', '2024-03-16 20:15:07'),
(198, 'est', NULL, 31, NULL, 'Et odio sint quisquam voluptatem voluptatem nesciunt. Nesciunt sint sunt quae harum quia. Dignissimos quod quisquam culpa qui. Sint doloribus sunt porro ab. Autem odit rerum in tenetur dicta quis. Odit animi ea quaerat eligendi atque.', NULL, 1, '2024-03-16 20:15:07', '2024-03-16 20:15:07'),
(199, 'maxime', 458, 46, 1, 'Iure tempore voluptas voluptas ab maxime id. Molestias maiores dolorem quam est. Recusandae quis id deleniti maxime. Repellendus ut ut perspiciatis facilis ducimus vel veniam animi.', NULL, 1, '2024-03-16 20:15:07', '2024-03-16 20:15:07'),
(200, 'aliquam', 1283, NULL, NULL, 'Sit illum quasi alias impedit. Officia debitis dolore nesciunt repudiandae quidem. Numquam culpa omnis eius doloribus ut. Harum autem esse consectetur sit dolorum voluptas. Facere nam reiciendis ut optio. Ut et dolores illo atque ea. Enim pariatur et ut. Repellendus et laudantium quo.', NULL, 0, '2024-03-16 20:15:07', '2024-03-16 20:15:07'),
(201, 'sed', NULL, NULL, 3, 'Eveniet aut dolores eaque fuga. Provident corrupti nostrum et voluptas sint ut. Veniam odit est accusantium sunt. Consequuntur mollitia ab consectetur et asperiores provident.', NULL, 1, '2024-03-16 20:15:07', '2024-03-16 20:15:07'),
(202, 'sunt', NULL, NULL, 1, 'Quia qui enim nam consequatur ut commodi deleniti vitae. Ex provident et ipsa sit dolorem accusantium. Odio quo aut repellat cumque sed ut unde. Et quia porro ad dicta error et. Iusto enim sunt vero aut dignissimos est voluptatem natus. Quidem voluptatum ab enim nihil ducimus autem quam.', NULL, 0, '2024-03-16 20:15:07', '2024-03-16 20:15:07');

-- --------------------------------------------------------

--
-- Structure de la table `recipe_ingredient`
--

CREATE TABLE `recipe_ingredient` (
  `recipe_id` int(11) NOT NULL,
  `ingredient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `recipe_ingredient`
--

INSERT INTO `recipe_ingredient` (`recipe_id`, `ingredient_id`) VALUES
(178, 348),
(178, 351),
(178, 356),
(178, 362),
(178, 372),
(178, 380),
(178, 384),
(178, 389),
(179, 344),
(179, 352),
(179, 360),
(179, 362),
(179, 373),
(179, 383),
(179, 392),
(180, 344),
(180, 357),
(180, 363),
(180, 364),
(180, 368),
(180, 369),
(180, 372),
(180, 374),
(181, 353),
(181, 363),
(181, 367),
(181, 370),
(181, 372),
(181, 382),
(181, 385),
(181, 392),
(182, 346),
(182, 352),
(182, 353),
(182, 356),
(182, 358),
(182, 360),
(182, 372),
(182, 391),
(183, 356),
(183, 357),
(183, 363),
(183, 364),
(183, 368),
(184, 361),
(184, 364),
(184, 372),
(184, 378),
(184, 380),
(184, 385),
(184, 386),
(184, 387),
(184, 390),
(185, 347),
(185, 352),
(185, 357),
(185, 365),
(185, 367),
(185, 371),
(185, 377),
(185, 385),
(186, 350),
(186, 357),
(186, 358),
(186, 364),
(186, 369),
(186, 382),
(186, 386),
(187, 348),
(187, 365),
(187, 366),
(187, 368),
(187, 369),
(187, 376),
(187, 383),
(188, 345),
(188, 361),
(188, 363),
(188, 364),
(189, 352),
(189, 353),
(189, 359),
(189, 366),
(189, 383),
(189, 388),
(189, 389),
(190, 346),
(190, 352),
(190, 362),
(190, 363),
(190, 373),
(190, 382),
(190, 388),
(191, 350),
(191, 355),
(191, 356),
(191, 366),
(191, 367),
(191, 374),
(191, 389),
(191, 391),
(192, 347),
(192, 360),
(192, 364),
(192, 376),
(192, 388),
(193, 346),
(193, 350),
(193, 353),
(193, 362),
(193, 376),
(193, 383),
(193, 384),
(193, 388),
(193, 389),
(194, 360),
(194, 364),
(194, 375),
(194, 380),
(194, 384),
(194, 392),
(195, 348),
(195, 349),
(195, 354),
(195, 355),
(195, 387),
(195, 389),
(196, 344),
(196, 347),
(196, 351),
(196, 358),
(196, 366),
(196, 367),
(196, 368),
(196, 370),
(196, 371),
(196, 379),
(197, 350),
(197, 357),
(197, 364),
(197, 367),
(197, 369),
(197, 385),
(197, 392),
(198, 354),
(198, 356),
(198, 365),
(198, 366),
(198, 374),
(198, 379),
(198, 391),
(199, 344),
(199, 364),
(199, 380),
(199, 383),
(199, 391),
(200, 360),
(200, 363),
(200, 368),
(200, 373),
(200, 390),
(200, 391),
(201, 354),
(201, 355),
(201, 360),
(201, 368),
(201, 373),
(201, 380),
(201, 385),
(201, 391),
(202, 353),
(202, 358),
(202, 365),
(202, 373),
(202, 374),
(202, 391);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `pseudo` varchar(50) DEFAULT NULL,
  `email` varchar(180) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`roles`)),
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `full_name`, `pseudo`, `email`, `roles`, `password`, `created_at`, `updated_at`) VALUES
(53, 'Alexandre Dos Santos-Lopes', 'Agnès', 'tboulay@descamps.net', '[\"ROLE_USER\"]', '$2y$13$YeRUUnVd9tPvzlZskrbp9O.FCpyV2p7W1I0rlXAhhHKmt0Mpz7nnW', '2024-03-16 20:15:07', '2024-03-16 20:15:07'),
(54, 'Isaac-Charles Le Gall', NULL, 'fontaine.robert@live.com', '[\"ROLE_USER\"]', '$2y$13$8NXXChE0VNVnhLpKFel/Bev60VaGTpxNYnmF.gPMQoY0mAauZE80a', '2024-03-16 20:15:07', '2024-03-16 20:15:07'),
(55, 'Augustin Martins', 'Henriette', 'jjacob@parent.com', '[\"ROLE_USER\"]', '$2y$13$V.E0joiLLPAbZhNAeq4grOEg0KUtIJp/vA8cwICmEvbPyWetR8wcq', '2024-03-16 20:15:08', '2024-03-16 20:15:08'),
(56, 'Stéphane Gomez', NULL, 'wgros@free.fr', '[\"ROLE_USER\"]', '$2y$13$O69qm71ab4lw2o45ofI9du0uDaoA3SzBu.Ntj65WkCJwFMZJdLpkW', '2024-03-16 20:15:08', '2024-03-16 20:15:08'),
(57, 'Thomas-Henri Lagarde', 'Roger', 'crichard@arnaud.fr', '[\"ROLE_USER\"]', '$2y$13$RcZoD/Rcn4t8nIuzYkuLr.yFfikRArctlRcWh7kXPK1T0Oo8tNucm', '2024-03-16 20:15:08', '2024-03-16 20:15:08'),
(58, 'Marc Collin', NULL, 'michelle.marechal@yahoo.fr', '[\"ROLE_USER\"]', '$2y$13$pSMMLLrlgmBhWyzOR2N/d.LxfQjzgF.4Dot/eKm9pI9gJfBF7ZLwO', '2024-03-16 20:15:09', '2024-03-16 20:15:09'),
(59, 'Véronique Renaud-Coste', NULL, 'aubert.jerome@weiss.net', '[\"ROLE_USER\"]', '$2y$13$0Er1oLclgDz.BBFExtHxaeFuvE5c8T5U818y2vA5yrh.7CUXrDvJi', '2024-03-16 20:15:09', '2024-03-16 20:15:09'),
(60, 'Thomas Gilbert-Dupre', 'Arthur', 'rbrunel@laposte.net', '[\"ROLE_USER\"]', '$2y$13$2VHnxp.vhHP9gGbK/iY/zeY1vo.ct2eQR./i18OmED7cJ.lamVoru', '2024-03-16 20:15:10', '2024-03-16 20:15:10'),
(61, 'Thérèse-Marianne Brunet', NULL, 'maillard.sabine@noos.fr', '[\"ROLE_USER\"]', '$2y$13$6LFzEhX/J08..cICz.dVaOweHCBUmqY.uZuc9KW0eTv8ajhVA4KSa', '2024-03-16 20:15:10', '2024-03-16 20:15:10'),
(62, 'Rémy Bertrand', NULL, 'oceane83@gautier.com', '[\"ROLE_USER\"]', '$2y$13$hTr2IjDfFDpB4XDoE4D.WupBvRqsEiC8xGQLDIwBTxyUHMkVaW2GW', '2024-03-16 20:15:10', '2024-03-16 20:15:10');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `recipe_ingredient`
--
ALTER TABLE `recipe_ingredient`
  ADD PRIMARY KEY (`recipe_id`,`ingredient_id`),
  ADD KEY `IDX_22D1FE1359D8A214` (`recipe_id`),
  ADD KEY `IDX_22D1FE13933FE08C` (`ingredient_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_IDENTIFIER_EMAIL` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `ingredient`
--
ALTER TABLE `ingredient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=393;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `recipe`
--
ALTER TABLE `recipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `recipe_ingredient`
--
ALTER TABLE `recipe_ingredient`
  ADD CONSTRAINT `FK_22D1FE1359D8A214` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_22D1FE13933FE08C` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredient` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
