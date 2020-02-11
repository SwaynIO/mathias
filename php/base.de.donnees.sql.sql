CREATE TABLE `theocmsv5_articles` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `background` text NOT NULL,
  `contenu` text NOT NULL,
  `date_p` int(11) NOT NULL,
  `auteur` varchar(15) NOT NULL,
  `categorie` enum('1','2','3','4') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `theocmsv5_article_comments`
--

CREATE TABLE `theocmsv5_article_comments` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `pseudo` varchar(20) NOT NULL,
  `commentaire` varchar(220) NOT NULL,
  `date_p` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `theocmsv5_article_views`
--

CREATE TABLE `theocmsv5_article_views` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `theocmsv5_badges`
--

CREATE TABLE `theocmsv5_badges` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `badge_id` varchar(255) NOT NULL,
  `prix` varchar(3) NOT NULL,
  `stock` varchar(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `theocmsv5_connexions`
--

CREATE TABLE `theocmsv5_connexions` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(15) NOT NULL,
  `ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `theocmsv5_keblo`
--

CREATE TABLE `theocmsv5_keblo` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `time_keblo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `theocmsv5_logs`
--

CREATE TABLE `theocmsv5_logs` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(15) NOT NULL,
  `action` text NOT NULL,
  `date_p` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `theocmsv5_site`
--

CREATE TABLE `theocmsv5_site` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL DEFAULT 'Habbo',
  `lien` varchar(2500) NOT NULL DEFAULT 'http://localhost',
  `email` varchar(255) NOT NULL DEFAULT 'contact@habbo.fr',
  `dedipass_public` varchar(255) NOT NULL DEFAULT '...',
  `dedipass_private` varchar(255) NOT NULL DEFAULT '...',
  `twitter` text NOT NULL,
  `fb` text NOT NULL,
  `maintenance` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `theocmsv5_site`
--

INSERT INTO `theocmsv5_site` (`id`, `nom`, `lien`, `email`, `dedipass_public`, `dedipass_private`, `twitter`, `fb`, `maintenance`) VALUES
(1, 'THEOCMS', 'http://localhost', 'contact@habbo.fr', '...', '...', 'test', 'test', '0');

-- --------------------------------------------------------

--
-- Structure de la table `theocmsv5_swf`
--

CREATE TABLE `theocmsv5_swf` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL DEFAULT '86.66.66.66',
  `port` int(11) NOT NULL DEFAULT '300',
  `variable` varchar(2500) NOT NULL DEFAULT 'http://localhost/swf/gamedata/external_variables.txt',
  `text` varchar(2500) NOT NULL DEFAULT 'http://localhost/swf/gamedata/external_flash_texts.txt',
  `override_variable` varchar(2500) NOT NULL DEFAULT 'http://localhost/swf/gamedata/override/external_override_variables.txt',
  `productdata` varchar(2500) NOT NULL DEFAULT 'http://localhost/swf/gamedata/productdata.txt',
  `furnidata` varchar(2500) NOT NULL DEFAULT 'http://localhost/swf/gamedata/furnidata.xml',
  `base` varchar(2500) NOT NULL DEFAULT 'http://localhost/swf/gordon/PRODUCTION0000/',
  `habbo` varchar(2500) NOT NULL DEFAULT 'http://localhost/swf/gordon/PRODUCTION0000/Habbo.swf'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `theocmsv5_swf`
--

INSERT INTO `theocmsv5_swf` (`id`, `ip`, `port`, `variable`, `text`, `override_variable`, `productdata`, `furnidata`, `base`, `habbo`) VALUES
(1, '86.66.66.66', 300, 'http://localhost/swf/gamedata/external_variables.txt', 'http://localhost/swf/gamedata/external_flash_texts.txt', 'http://localhost/swf/gamedata/override/external_override_variables.txt', 'http://localhost/swf/gamedata/productdata.txt', 'http://localhost/swf/gamedata/furnidata.xml', 'http://localhost/swf/gordon/PRODUCTION0000/', 'http://localhost/swf/gordon/PRODUCTION0000/Habbo.swf');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `theocmsv5_articles`
--
ALTER TABLE `theocmsv5_articles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `theocmsv5_article_comments`
--
ALTER TABLE `theocmsv5_article_comments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `theocmsv5_article_views`
--
ALTER TABLE `theocmsv5_article_views`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `theocmsv5_badges`
--
ALTER TABLE `theocmsv5_badges`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `theocmsv5_connexions`
--
ALTER TABLE `theocmsv5_connexions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `theocmsv5_keblo`
--
ALTER TABLE `theocmsv5_keblo`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `theocmsv5_logs`
--
ALTER TABLE `theocmsv5_logs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `theocmsv5_site`
--
ALTER TABLE `theocmsv5_site`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `theocmsv5_swf`
--
ALTER TABLE `theocmsv5_swf`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `theocmsv5_articles`
--
ALTER TABLE `theocmsv5_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `theocmsv5_article_comments`
--
ALTER TABLE `theocmsv5_article_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `theocmsv5_article_views`
--
ALTER TABLE `theocmsv5_article_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `theocmsv5_badges`
--
ALTER TABLE `theocmsv5_badges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `theocmsv5_connexions`
--
ALTER TABLE `theocmsv5_connexions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `theocmsv5_keblo`
--
ALTER TABLE `theocmsv5_keblo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `theocmsv5_logs`
--
ALTER TABLE `theocmsv5_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `theocmsv5_site`
--
ALTER TABLE `theocmsv5_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `theocmsv5_swf`
--
ALTER TABLE `theocmsv5_swf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `users`
ADD IF NOT EXISTS `fonction` VARCHAR(60) NOT NULL DEFAULT 'Membre',
ADD IF NOT EXISTS `jetons` INT(11) NOT NULL DEFAULT '0',
ADD IF NOT EXISTS `radio` ENUM('0', '1') NOT NULL DEFAULT '0',
ADD IF NOT EXISTS `disabled` ENUM('0', '1') NOT NULL DEFAULT '0';