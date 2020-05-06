-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 06 mai 2020 à 16:29
-- Version du serveur :  10.2.22-MariaDB
-- Version de PHP :  7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de données :  `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createDate` datetime NOT NULL,
  `modifDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`, `createDate`, `modifDate`) VALUES
(1, 'Wordpress', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Bootstrap', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'UML', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Symfony', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Git', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `statut` int(2) NOT NULL DEFAULT 0,
  `comment` text NOT NULL,
  `author` int(11) NOT NULL,
  `createDate` datetime NOT NULL,
  `updateDate` datetime DEFAULT NULL,
  `valid` int(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `postid`, `parentid`, `statut`, `comment`, `author`, `createDate`, `updateDate`, `valid`) VALUES
(112, 111, 0, 1, 'ajout commentaire\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Praesentium nam quas inventore, ut iure iste modi eos adipisci ad ea itaque labore earum autem nobis et numquam, minima eius. Nam eius, non unde ut aut sunt eveniet rerum repellendus porro.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Praesentium nam quas inventore, ut iure iste modi eos adipisci ad ea itaque labore earum autem nobis et numquam, minima eius. Nam eius, non unde ut aut sunt eveniet rerum repellendus porro.', 64, '2020-05-02 17:56:54', '2020-05-02 17:57:17', 1),
(113, 111, 0, 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Praesentium nam quas inventore, ut iure iste modi eos adipisci ad ea itaque labore earum autem nobis et numquam, minima eius. Nam eius, non unde ut aut sunt eveniet rerum repellendus porro.\r\n', 64, '2020-05-03 15:45:04', '2020-05-03 15:46:16', 1),
(114, 111, 113, 1, 'Quis eius aspernatur, eaque culpa cumque reiciendis, nobis at earum assumenda similique ut? Aperiam vel aut, ex exercitationem eos consequuntur eaque culpa totam', 63, '2020-05-03 15:51:07', '2020-05-03 16:09:44', 1),
(115, 97, 0, 1, 'Temporibus quo dolore veritatis doloribus delectus dolores perspiciatis recusandae ducimus, nisi quod, incidunt ut quaerat, magnam cupiditate. Aut, laboriosam magnam, nobis dolore fugiat impedit necessitatibus nisi cupiditate, quas repellat itaque molestias sit libero voluptas eveniet omnis illo ullam dolorem minima.', 63, '2020-05-03 16:04:55', '2020-05-03 16:09:34', 1),
(116, 92, 0, 1, 'Illo magnam at dolore ad enim fugiat ut maxime facilis autem, nulla cumque quis commodi eos nisi unde soluta, ipsa eius aspernatur sint atque! Nihil, eveniet illo ea, mollitia fuga accusamus dolor dolorem perspiciatis rerum hic, consectetur error rem aspernatur!', 63, '2020-05-03 16:05:34', '2020-05-03 16:09:23', 1),
(117, 43, 0, 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?', 63, '2020-05-03 16:05:57', '2020-05-03 16:09:15', 1),
(118, 111, 113, 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Praesentium nam quas inventore, ut iure iste modi eos adipisci ad ea itaque labore earum autem nobis et numquam, minima eius. Nam eius, non unde ut aut sunt eveniet rerum repellendus porro.', 61, '2020-05-03 16:07:38', '2020-05-03 16:09:09', 1),
(119, 91, 0, 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Praesentium nam quas inventore, ut iure iste modi eos adipisci ad ea itaque labore earum autem nobis et numquam, minima eius. Nam eius, non unde ut aut sunt eveniet rerum repellendus porro.', 61, '2020-05-03 16:08:03', '2020-05-03 16:09:02', 1),
(120, 97, 0, 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Praesentium nam quas inventore, ut iure iste modi eos adipisci ad ea itaque labore earum autem nobis et numquam, minima eius. Nam eius, non unde ut aut sunt eveniet rerum repellendus porro.', 61, '2020-05-03 16:08:24', '2020-05-03 16:08:53', 1),
(121, 43, 117, 1, 'Quis eius aspernatur, eaque culpa cumque reiciendis, nobis at earum assumenda similique ut? Aperiam vel aut, ex exercitationem eos consequuntur eaque culpa totam, deserunt, aspernatur quae eveniet hic provident ullam tempora error repudiandae sapiente illum rerum itaque voluptatem', 61, '2020-05-03 16:11:35', '2020-05-03 16:14:23', 1),
(122, 45, 0, 1, 'Porro amet accusantium libero fugit totam, deserunt ipsa, dolorem, vero expedita illo similique saepe nisi deleniti. Cumque, laboriosam, porro! Facilis voluptatem sequi nulla quidem, provident eius quos pariatur maxime sapiente illo nostrum quibusdam aliquid fugiat! Earum quod fuga id officia.', 60, '2020-05-03 16:12:29', '2020-05-03 16:14:17', 1),
(123, 97, 0, 1, 'Porro amet accusantium libero fugit totam, deserunt ipsa, dolorem, vero expedita illo similique saepe nisi deleniti. Cumque, laboriosam, porro! Facilis voluptatem sequi nulla quidem, provident eius quos pariatur maxime sapiente illo nostrum quibusdam aliquid fugiat! Earum quod fuga id officia.', 60, '2020-05-03 16:12:48', '2020-05-03 16:14:10', 1),
(124, 92, 116, 1, 'Porro amet accusantium libero fugit totam, deserunt ipsa, dolorem, vero expedita illo similique saepe nisi deleniti. Cumque, laboriosam, porro! Facilis voluptatem sequi nulla quidem, provident eius quos pariatur maxime sapiente illo nostrum quibusdam aliquid fugiat! Earum quod fuga id officia.', 60, '2020-05-03 16:13:01', '2020-05-03 16:14:03', 1),
(125, 91, 119, 1, 'Porro amet accusantium libero fugit totam, deserunt ipsa, dolorem, vero expedita illo similique saepe nisi deleniti. Cumque, laboriosam, porro! Facilis voluptatem sequi nulla quidem, provident eius quos pariatur maxime sapiente illo nostrum quibusdam aliquid fugiat! Earum quod fuga id officia.', 60, '2020-05-03 16:13:16', '2020-05-03 16:13:58', 1),
(126, 43, 0, 1, 'Porro amet accusantium libero fugit totam, deserunt ipsa, dolorem, vero expedita illo similique saepe nisi deleniti. Cumque, laboriosam, porro! Facilis voluptatem sequi nulla quidem, provident eius quos pariatur maxime sapiente illo nostrum quibusdam aliquid fugiat! Earum quod fuga id officia.', 60, '2020-05-03 16:13:40', '2020-05-03 16:13:52', 1),
(127, 45, 0, 1, 'Illo magnam at dolore ad enim fugiat ut maxime facilis autem, nulla cumque quis commodi eos nisi unde soluta, ipsa eius aspernatur sint atque! Nihil, eveniet illo ea, mollitia fuga accusamus dolor dolorem perspiciatis rerum hic, consectetur error rem aspernatur!', 64, '2020-05-03 16:16:04', '2020-05-03 16:18:29', 1),
(128, 91, 0, 1, 'Illo magnam at dolore ad enim fugiat ut maxime facilis autem, nulla cumque quis commodi eos nisi unde soluta, ipsa eius aspernatur sint atque! Nihil, eveniet illo ea, mollitia fuga accusamus dolor dolorem perspiciatis rerum hic, consectetur error rem aspernatur!', 64, '2020-05-03 16:16:16', '2020-05-03 16:18:22', 1),
(129, 43, 0, 1, 'Illo magnam at dolore ad enim fugiat ut maxime facilis autem, nulla cumque quis commodi eos nisi unde soluta, ipsa eius aspernatur sint atque! Nihil, eveniet illo ea, mollitia fuga accusamus dolor dolorem perspiciatis rerum hic, consectetur error rem aspernatur!', 64, '2020-05-03 16:16:49', '2020-05-03 16:18:15', 1),
(130, 92, 0, 1, 'Illo magnam at dolore ad enim fugiat ut maxime facilis autem, nulla cumque quis commodi eos nisi unde soluta, ipsa eius aspernatur sint atque! Nihil, eveniet illo ea, mollitia fuga accusamus dolor dolorem perspiciatis rerum hic, consectetur error rem aspernatur!', 64, '2020-05-03 16:17:21', '2020-05-03 16:18:09', 1),
(131, 97, 120, 1, 'Illo magnam at dolore ad enim fugiat ut maxime facilis autem, nulla cumque quis commodi eos nisi unde soluta.', 64, '2020-05-03 16:17:54', '2020-05-03 16:18:03', 1),
(132, 97, 123, 0, 'ajouter un commentaire ', 64, '2020-05-06 11:25:49', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `lastname` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `valid` int(11) DEFAULT NULL,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `message`
--

INSERT INTO `message` (`id`, `lastname`, `firstname`, `email`, `content`, `valid`, `createDate`) VALUES
(1, 'test', 'testprenom', 'test@test.fr', 'fdkjf dshjsdkhkjdshgkskghksh ', NULL, '2020-05-03 23:08:23');

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `author` varchar(128) NOT NULL,
  `postImg` varchar(255) NOT NULL,
  `idcategory` int(11) NOT NULL,
  `createDate` datetime NOT NULL,
  `modifDate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `author`, `postImg`, `idcategory`, `createDate`, `modifDate`) VALUES
(111, 'Renommer un projet et son dépôt', 'Je voudrais renommer un projet qui a son dépôt Git.\r\nPuis-je me contenter de renommer le dossier qui contient le projet ou bien y a t-il un truc à faire dans Git ? Avant ? Après ?', 'admin', 'git.png', 5, '2020-05-02 15:20:15', '2020-05-02 15:29:36'),
(43, 'Faut-il utiliser ou fuir WordPress', 'WordPress est un système de gestion de contenu (SGC ou content management system (CMS) en anglais) gratuit, libre et open-source.', 'admin', 'wp-f.jpg', 1, '2020-03-31 11:22:45', '2020-04-21 23:29:16'),
(45, 'Avantage de UML', 'Je suis sur le point de développer une application de gestion orienté base de données relationnelles et en utilisant les FORMS et REPORTS de ORACLE, je voulais savoir quels sont les avantages de la faire avec UML.', 'admin', 'uml.jpg', 3, '2020-03-31 14:45:53', '2020-04-19 23:00:55'),
(97, 'Git : Revenir à une ancienne version', 'Je travail sous Visual studio 2019 et j\'utilisa Github pour sauvegarder mon code.\r\n\r\nSeulement voila, en allant trop vite j\'ai publié un commit bugué car je n\'ai pas retesté toute l\'appli...\r\nAprès m\'être perdu sur le net, j\'en demande a vos connaissances \r\n\r\nComment faire pour récupérer tous mon projet à partir d\'un ancien commit ? (commit surligné en jaune)\r\nEst-il possible de le faire via Visual Studio ?', 'admin', 'git.png', 5, '2020-04-20 16:36:49', '2020-05-02 15:11:34'),
(91, 'BootStrap - Avantages & Inconvénients', 'Bootstrap n\'est plus à présenter aux développeurs Web, car c\'est sans doute le framework HTML, CSS et JavaScript le plus populaire pour développer des projets mobiles first et responsives sur le Web. Il offre des outils utiles à la création du design de sites et d\'applications Web. C\'est un ensemble qui contient des codes HTML et CSS, des formulaires, boutons, outils de navigation et autres éléments interactifs, ainsi que des extensions JavaScript en option. La dernière version majeure, Bootstrap 4.0 a été publiée en janvier 2018, après plus de trois 3 ans de développement et une réécriture majeure de l\'ensemble du projet. Elle a donc introduit des changements incompatibles que les développeurs devraient prendre en compte dans leurs projets.', 'admin', 'bootstrap.jpg', 2, '2020-04-19 23:04:23', '2020-05-02 17:36:32'),
(92, 'symfony 4', 'SensioLabs a annoncé il y a quelques jours la sortie du Symfony 4.0.0, un ensemble de composants PHP ainsi qu\'un framework écrit en PHP qui fournit des fonctionnalités modulables et adaptables qui permettent de faciliter et d’accélérer le développement d\'un site Web.\r\n\r\nLe framework Symfony 4 est construit avec la dernière version de Symfony Components. Il s\'agit d\'un ensemble de bibliothèques PHP réutilisables qui devient une base standard pour la construction d\'applications PHP. Il faut noter qu\'il est possible d\'utiliser n\'importe lequel de ces composants dans vos propres applications indépendamment du framework Symfony.', 'admin', 'symfony.jpg', 4, '2020-04-19 23:15:35', '2020-05-02 17:31:38');

-- --------------------------------------------------------

--
-- Structure de la table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mentor` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `evaluator` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `validDate` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createDate` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `projects`
--

INSERT INTO `projects` (`id`, `title`, `content`, `detail`, `mentor`, `evaluator`, `validDate`, `createDate`) VALUES
(1, 'Festival des films', 'Projeter des films d\'auteur en plein air du 5 au 8 août au parc Monceau à Paris.', 'commentprojet1.jpg', 'Gaetan De Smet', 'Soma-Giuseppe Bini', 'Projet validé le mercredi 22 janvier 2020', '2020-04-30 16:23:02'),
(2, 'Application de restauration en ligne', 'Livrer des plats de qualité à domicile en moins de 20 minutes...', 'commentprojet2.jpg', 'Gaetan De Smet', 'Wenceslas Baridon', 'Projet validé le samedi 14 mars 2020', '2020-04-30 16:23:54'),
(3, 'Créez mon premier blog en PHP', 'Développer mon blog professionnel sans Framework', '', 'Gaetan De Smet', '', 'En cours', '2020-04-30 16:24:32');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(127) NOT NULL,
  `lastname` text NOT NULL,
  `firstname` text NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(128) NOT NULL,
  `createDate` datetime NOT NULL,
  `modifDate` datetime DEFAULT NULL,
  `role` varchar(127) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `login`, `lastname`, `firstname`, `email`, `password`, `createDate`, `modifDate`, `role`) VALUES
(39, 'admin', 'BACCOUR', 'Nizar', 'nbaccour@gmail.com', '05a671c66aefea124cc08b76ea6d30bb', '2020-03-06 00:00:00', '0000-00-00 00:00:00', 'Administrator'),
(60, 'mrezeau', 'Rezeau', 'Magalie', 'mrezeau@open.fr', '098f6bcd4621d373cade4e832627b4f6', '2020-05-02 17:45:44', NULL, 'user'),
(61, 'csoli', 'Soli', 'Cédric', 'csoli@open.fr', '098f6bcd4621d373cade4e832627b4f6', '2020-05-02 17:48:22', NULL, 'user'),
(62, 'cchantrie', 'Chantrie', 'Céline', 'cchantrie@open.fr', '098f6bcd4621d373cade4e832627b4f6', '2020-05-02 17:49:43', NULL, 'user'),
(63, 'ejuffard', 'Juffard', 'Etienne', 'ejuffard@open.fr', '098f6bcd4621d373cade4e832627b4f6', '2020-05-02 17:50:50', NULL, 'user'),
(64, 'ndupond', 'Dupond', 'Nicolas', 'ndupond@open.fr', '098f6bcd4621d373cade4e832627b4f6', '2020-05-02 17:51:44', NULL, 'user');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT pour la table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;
