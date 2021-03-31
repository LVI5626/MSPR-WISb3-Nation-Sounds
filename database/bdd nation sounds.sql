-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 31 mars 2021 à 12:36
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `nations`
--

-- --------------------------------------------------------

--
-- Structure de la table `alert`
--

DROP TABLE IF EXISTS `alert`;
CREATE TABLE IF NOT EXISTS `alert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `texteng` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `titreeng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `alert`
--

INSERT INTO `alert` (`id`, `photo`, `photo2`, `titre`, `text`, `texteng`, `titreeng`) VALUES
(4, 'https://d18dnr0ekxokj7.cloudfront.net/actualites-marseille/2016/02/provence-biere-connexion.jpg', 'https://d18dnr0ekxokj7.cloudfront.net/actualites-marseille/2016/02/provence-biere-connexion.jpg', 'Pas de bières cette année', 'Afin de mieux pouvoir respecter les gestes barrières et garder consciences de mesures sanitaires\r\nLa vente de bièrre et autre alcool sera suspendu pendant toute les durée du festival', 'In order to better be able to respect barrier gestures and maintain awareness of health measures\r\nThe sale of beer and other alcohol will be suspended for the duration of the festival', 'Not beer for this year'),
(5, '/img/alert/masque.jpg', '/img/alert/masque.jpg', 'Port du masque obligatoire', 'En raison des mesures sanitaires, le port du masque sera obligatoires pendant toute la durée du festival.\r\nLa moindre personne ne respectant pas cette règle aura une amende de 135€ et une exclusion du festival sans remboursement.\r\n\r\nProtégeons-nous !', 'In order to better be able to respect barrier gestures and maintain awareness of health measures\r\nThe sale of beer and other alcohol will be sus Due to sanitary measures, wearing a mask will be compulsory throughout the festival.\r\nAnyone who does not respect this rule will be fined € 135 and excluded from the festival without reimbursement.\r\n\r\nProtect Us!', 'Mandatory mask wearing');

-- --------------------------------------------------------

--
-- Structure de la table `artist`
--

DROP TABLE IF EXISTS `artist`;
CREATE TABLE IF NOT EXISTS `artist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `hour` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `scene` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo2` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `descriptioneng` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `artist`
--

INSERT INTO `artist` (`id`, `name`, `photo`, `description`, `genre`, `date`, `hour`, `scene`, `photo2`, `descriptioneng`) VALUES
(1, 'Angèle', '/img/artists/picture/angèle.jpg', 'Angèle Van Laeken, dite Angèle, née le 3 décembre 1995 à Uccle, est une auteur-compositrice-interprète et musicienne belge. Elle est la fille du chanteur Marka et de la comédienne Laurence Bibot, ainsi que la sœur du rappeur Roméo Elvis. Elle grandit à Linkebeek, dans la banlieue sud de Bruxelles.', 'Pop', 'Dimanche', '22:00', 'Scène Pop Folk', '/img/artists/background/angèle.jpg', 'Angèle Van Laeken, known as Angèle, born December 3, 1995 in Uccle, is a Belgian singer-songwriter and musician. She is the daughter of singer Marka and actress Laurence Bibot, as well as the sister of rapper Romeo Elvis. She grew up in Linkebeek, in the southern suburbs of Brussels.'),
(2, 'Eskemo', '/img/artists/picture/eskemo.jpg', 'Romain Brois (chant), Benjamin Brois (basse, chant), Maxime Brois (batterie), Rémi (Eskemo) (guitare), et Enzo (Eskemo) (guitare) sont trois adolescents de Biarritz (Pyrénées-Atlantiques). Ils forment Eskemo en 2007 en s\'avouant influencés par le rock tendance emo et par le visual-kei pour le soin apporté à leur apparence.', 'Rock Electro', 'Vendredi', '21:45', 'Scène Rock', '/img/artists/background/eskemo.jpg', 'Romain Brois (vocals), Benjamin Brois (bass, vocals), Maxime Brois (drums), Rémi (Eskemo) (guitar), and Enzo (Eskemo) (guitar) are three teenagers from Biarritz (Pyrénées-Atlantiques). They formed Eskemo in 2007 admitting to be influenced by the rock emo trend and by visual-kei for the care given to their appearance.'),
(3, 'Man With a Mission', '/img/artists/picture/man-with-a-mission.jpg', 'Man with a Mission est un groupe japonais de rock alternatif, originaire de Shibuya. Il comprend cinq membres, Tokyo Tanaka, Kamikaze Boy, Jean-Ken Johnny, DJ Santa Monica, et Spear Rib. Tous les membres portent un masque de loups pendant leurs concerts et dans leurs clips.', 'Rock', 'Samedi', '22:15', 'Scène Rock', '/img/artists/background/man-with-a-mission.jpg', 'Man with a Mission is a Japanese alternative rock band from Shibuya. It includes five members, Tokyo Tanaka, Kamikaze Boy, Jean-Ken Johnny, DJ Santa Monica, and Spear Rib. All members wear wolf masks during their concerts and in their music videos.'),
(4, 'Timsters', '/img/artists/picture/timsters.jpg', 'Originaire d’un village isolé de la campagne bretonne, Timsters, de son vrai nom Julien, appréhende les années 90, comme par procuration. Un poster de Manhattan au pied de son lit, l’adolescent découvre la Pop Culture New-Yorkaise au travers des films et séries de l’époque… Isolé en campagne avec un accès limité à la culture, Julien côtoie l’ennui jusqu’à ce que son père lui apprenne ses premiers riffs de guitare. Une addiction est née.\r\n\r\nA l’âge de 15 ans, c’est un peu dérouté qu’il suit le même chemin que son père pour devenir conducteur routier. Durant cette période, il passe de longues heures en solitaire à étoffer sa culture musicale. Avec cet amour grandissant pour le quatrième art, il prend un virage à 180 degrés et s’investit pleinement dans sa passion.', 'Pop', 'Samedi', '19:00', 'Scène Pop Folk', '/img/artists/background/timsters.jpg', 'Originally from an isolated village in the Breton countryside, Timsters, whose real name is Julien, apprehends the 90s, as if by proxy. A Manhattan poster at the foot of his bed, the teenager discovers New York Pop Culture through films and series of the time ... Isolated in the countryside with limited access to culture, Julien rubs shoulders with boredom. what his father teaches him his first guitar riffs. An addiction was born.  At the age of 15, it\'s a little confused that he is following the same path as his father to become a truck driver. During this period, he spent long hours alone to expand his musical culture. With this growing love for the fourth art, he took a 180-degree turn and fully invested himself in his passion.'),
(5, 'Orelsan', '/img/artists/picture/orelsan.jpg', 'Orelsan, de son vrai nom Aurélien Cotentin, né le 1ᵉʳ août 1982 à Alençon dans l\'Orne, est un rappeur, compositeur, acteur, réalisateur, scénariste et doubleur français. Il se fait connaître sur Internet via la chanson Saint-Valentin puis perce en 2008 avec le titre Changement.', 'Pop', 'Samedi', '19:30', 'Scène RAP', '/img/artists/background/orelsan.jpg', 'Orelsan, whose real name is Aurélien Cotentin, born August 1, 1982 in Alençon in the Orne, is a French rapper, composer, actor, director, screenwriter and voice actor. He became known on the Internet through the song Saint-Valentin then broke through in 2008 with the title Change.'),
(6, 'Justice', '/img/artists/picture/justice.jpg', 'Justice est un duo de musique électronique français composé de Gaspard Augé et Xavier de Rosnay. Le label du duo est Ed Banger Records, dirigé par Pedro Winter. Justice est connue pour incorporer une forte influence rock dans leur musique et leur image.\r\n\r\nLe premier album du groupe, Cross, est sorti en juin 2007, acclamé par la critique. L\'album a ensuite été nominé pour un Grammy Award du meilleur album électronique / de danse et est arrivé au 15e rang des 50 meilleurs albums de Pitchfork en 2007 et au 18e rang sur la liste des «25 meilleurs albums de 2007» de Blender. , perdant contre The Reminder de Feist. Le remix du groupe de la chanson MGMT \"Electric Feel\" a remporté le Grammy Award du meilleur enregistrement remixé, non classique en 2009.', 'Pop', 'Dimanche', '22:30', 'Scène Electro DJ', '/img/artists/background/justice.jpg', 'Justice is a French electronic music duo consisting of Gaspard Augé and Xavier de Rosnay. The duo\'s label is Ed Banger Records, managed by Pedro Winter. Justice is known for incorporating a strong rock influence into their music and image.  The band\'s debut album Cross was released in June 2007 to critical acclaim. The album was later nominated for a Grammy Award for Best Electronic/Dance Album and came in at number 15 on Pitchfork\'s Top 50 Albums of 2007 and number 18 on Blender\'s \"25 Best Albums of 2007\" list.It was nominated for the 2007 Shortlist Prize, losing out to The Reminder by Feist. The band\'s remix of the MGMT song \"Electric Feel\" won the Grammy Award for Best Remixed Recording, Non-Classical in 2009.'),
(7, 'SIAMÉS', '/img/artists/picture/siames.jpg', 'SIAMÉS est un groupe de musique', 'Pop', 'Samedi', '22:00', 'Scène Electro DJ', '/img/artists/background/siames.jpg', 'SIAMÉS is a music group'),
(8, 'Mosimann', '/img/artists/picture/mosimann.jpg', 'Quentin Mosimann, né à Genève le 14 février 1988, est un disc jockey franco-suisse et chanteur.', 'Pop', 'Samedi', '21:00', 'Scène Electro DJ', '/img/artists/background/mosimann.jpg', 'Quentin Mosimann, born in Geneva on February 14, 1988, is a Franco-Swiss disc jockey and singer.'),
(9, 'Joanna', '/img/artists/picture/joanna.jpg', 'Âgée d’à peine 20 ans, Joanna est une jeune fille en fleur, qui chante des désirs à fleur de mots. Sa musique est un RnB pop langoureux, porté par une voix qu’on découvre en live, cristalline. Son, écriture et image : un talent s’affirme.', 'Pop', 'Vendredi', '17:00', 'Scène RAP', '/img/artists/background/joanna.jpg', 'Barely 20 years old, Joanna is a young girl in flower, who sings desires at the flower of words. His music is languid RnB pop, carried by a voice that we discover live, crystalline. Sound, writing and image: a talent is affirmed.'),
(10, 'Indochine', '/img/artists/picture/indochine.jpg', 'Indochine est un groupe de pop rock français. Formé en 1981, le groupe est issu du courant new wave3. Révélé par le titre L’Aventurier en 1982, le groupe connaît un grand succès dans les années 1980 avec des tubes comme 3 nuits par semaine, 3e sexe, Tes yeux noirs ou Canary Bay. Après quelques albums ayant rencontré un succès moindre et un désintérêt manifeste des médias pour Indochine dans les années 1990, celui-ci retrouve le succès en 2002, avec la sortie de l\'album Paradize dont est issu le single J\'ai demandé à la lune.', 'Pop / Rock', 'Dimanche', '21:45', 'Scène Rock', '/img/artists/background/indochine.jpg', 'Indochine is a French pop rock group. Formed in 1981, the group comes from the current new wave3. Revealed by the title L’Aventurier in 1982, the group enjoyed great success in the 1980s with hits like 3 nights a week, 3rd sex, Your black eyes and Canary Bay. After a few albums which met with less success and a clear lack of interest in the media for Indochine in the 1990s, it regained success in 2002, with the release of the Paradize album from which the single I asked the moon was issued. .'),
(11, 'Olivia Ruiz', '/img/artists/picture/olivia-ruiz.jpg', 'En 2001, la jeune femme est découverte par le grand public grâce à sa participation à la Star Academy. Elle échoue en demi-finale face à Jenifer mais, remarquée par les maisons de disques, elle signe chez Universal. Elle n\'aura de cesse de s\'éloigner de l\'image Star Ac\' et d\'imposer son propre style. Après avoir frappé à la porte de plusieurs artistes, c\'est finalement Juliette qui fait confiance à son talent et lui écrit le titre J\'aime pas l\'amour. Olivia sort ainsi son premier album éponyme en 2003. Son succès est retentissant : sa fraicheur et sa poésie séduisent le public, elle passe sur toutes les radios et on la nomme dans la catégorie révélation sur scène des Victoires de la Musique 2005. \r\n\r\nLa Femme Chocolat, son deuxième album sort en 2005. Pour ce second opus, elle collabore avec Christophe Mali (de Tryo), Juliette, Mathias Malzieu le chanteur de Dionysos ou encore Christian Olivier des Têtes Raides. Olivia connaît à nouveau le succès avec un million d\'albums vendus. J\'traine les pieds et La femme chocolat résonnent dans toutes les oreilles. Elle gagne en 2007 deux Victoires de la Musique en tant qu\'artiste féminine et spectacle de l\'année. ', 'Pop', 'Dimanche', '16:30', 'Scène Jazz', '/img/artists/background/olivia-ruiz.jpg', 'In 2001, the young woman was discovered by the general public thanks to her participation in the Star Academy. She failed in the semifinals against Jenifer but, noticed by the record companies, she signed with Universal. She will never stop moving away from the Star Ac \'image and imposing her own style. After knocking on the door of several artists, it is ultimately Juliette who trusts her talent and writes the title J\'aime pas amour. Olivia thus released her eponymous first album in 2003. Her success was resounding: her freshness and her poetry seduced the public, she appeared on all the radios and was named in the revelation category on stage of the Victoires de la Musique 2005.  La Femme Chocolat, her second album was released in 2005. For this second opus, she collaborated with Christophe Mali (from Tryo), Juliette, Mathias Malzieu, the singer of Dionysos or even Christian Olivier from the Têtes Raides. Olivia is once again successful with a million albums sold. J\'traine les pieds and La femme chocolat resonate in everyone\'s ears. In 2007, she won two Victoires de la Musique as female artist and show of the year.'),
(12, 'SonReal', '/img/artists/picture/sonreal.jpg', 'Artiste hip-hop canadien primé connu pour ses albums et mixtapes en ligne gratuits The Stroll, One Long Day et For the Town. Il a ensuite été nominé pour l\'enregistrement rap de l\'année des Juno Awards pour son single de 2014 «Everywhere We Go». SonReal est un rappeur bien connu. SonReal est né le 16 août 1985 à Vernon, au Canada.', 'Pop', 'Dimanche', '20:45', 'Scène RAP', '/img/artists/background/sonreal.jpg', 'Award-winning Canadian hip hop artist known for his free online albums and mixtapes The Stroll, One Long Day, and For the Town. He went on to be nominated for the Juno Awards’ Rap Recording of the Year for his 2014 single “Everywhere We Go.” SonReal is a well known Rapper. SonReal was born on August 16, 1985 in Vernon, Canada..'),
(13, 'Brigitte', '/img/artists/picture/brigitte.jpg', 'Après quelques albums solo, Aurélie Saada et Sylvie Hoarau, respectivement connues pour leurs anciens projets musicaux du nom de Mayane Delem et Vendetta, décident de former un nouveau duo de musique. Leur nom rend hommage notamment à Brigitte Bardot, Brigitte Fontaine et Brigitte Lahaie.', 'Pop', 'Vendredi', '16:50', 'Scène Jazz', '/img/artists/background/brigitte.jpg', 'After a few solo albums, Aurélie Saada and Sylvie Hoarau, respectively known for their old musical projects called Mayane Delem and Vendetta, decide to form a new music duo. Their name pays homage in particular to Brigitte Bardot, Brigitte Fontaine and Brigitte Lahaie.'),
(14, 'Vianney', '/img/artists/picture/vianney.jpg', 'Vianney Bureau, dit Vianney, né le 13 février 1991 à Pau, est un auteur-compositeur-interprète français. Il remporte le trophée d\'artiste interprète de l\'année aux Victoires de la musique 2016, un an après avoir été nommé dans les Révélations des mêmes cérémonies.', 'Pop', 'Vendredi', '19:00', 'Scène Pop Folk', '/img/artists/background/vianney.jpg', 'Vianney Bureau, known as Vianney, born February 13, 1991 in Pau, is a French singer-songwriter. He won the performer of the year trophy at the Victoires de la musique 2016, a year after being named in the Revelations of the same ceremonies.'),
(15, 'Billie Eilish', '/img/artists/picture/billie-eilish.jpg', 'Billie Eilish Pirate Baird O\'Connell, mieux connue sous son nom de scène Billie Eilish, née le 18 décembre 2001 à Los Angeles, en Californie, est une auteure-compositrice-interprète américaine.', 'Pop', 'Vendredi', '23:30', 'Scène Electro DJ', '/img/artists/background/billie-eilish.jpg', 'Billie Eilish Pirate Baird O\'Connell, better known by her stage name Billie Eilish, born December 18, 2001 in Los Angeles, California, is an American singer-songwriter.'),
(16, 'Shaka Ponk', '/img/artists/picture/shaka-ponk.jpg', 'Shaka Ponk, parfois orthographié SHK PNK, est un groupe de rock alternatif et rock électronique français utilisant des éléments de différents courants musicaux tels que le rock alternatif, l’heavy metal, l\'électro, le hard rock, le punk rock, le hip-hop et le funk formé en août 2002.', 'Rock Metal', 'Dimanche', '23h55', 'Scène Rock', '/img/artists/background/shaka-ponk.jpg', 'Shaka Ponk, sometimes spelled SHK PNK, is a French alternative rock and electronic rock band using elements from different musical currents such as alternative rock, heavy metal, electro, hard rock, punk rock, hip -hop and funk formed in August 2002.'),
(17, 'Bring Me the Horizon', '/img/artists/picture/bring-me-the-horizon.jpg', 'Bring Me the Horizon, parfois abrégé BMTH, est un groupe de metal alternatif britannique, originaire de Sheffield, dans le Yorkshire. Bring Me the Horizon est devenu au fil des années une figure emblématique de la scène post-hardcore et rock en général.', 'Rock', 'Vendredi', '22:15', 'Scène Rock', '/img/artists/background/bring-me-the-horizon.jpg', 'Bring Me the Horizon, sometimes abbreviated BMTH, is a British alternative metal band from Sheffield, Yorkshire. Bring Me the Horizon has become over the years an iconic figure in the post-hardcore and rock scene in general.'),
(18, 'Zoe Wees', '/img/artists/picture/zoe-wees.jpg', 'Zoe Wees, née le 13 mai 2002 à Hambourg1, est une auteure-compositrice-interprète allemande.\r\n\r\nElle est connue en Allemagne dès 2017 pour sa participation à The Voice Kids puis à l\'international en 2020 avec la sortie de son premier single, Control où l\'artiste aborde son combat contre l\'épilepsie dont elle a souffert dans son enfance. « Quand je souffrais d’épilepsie rolandique, je me réveillais le matin et je savais qu’il y aurait une crise dans la journée. J’étais très anxieuse, j’essayais de la contrôler mais c’était impossible. Aujourd’hui, je suis guérie, mais cette anxiété est profondément ancrée dans ma tête. C’est ce que je raconte dans la chanson. » dit-elle.', 'Pop', 'Vendredi', '18:00', 'Scène Pop Folk', '/img/artists/background/zoe-wees.jpg', 'Zoe Wees, born May 13, 2002 in Hamburg1, is a German singer-songwriter.\r\n\r\nShe was known in Germany in 2017 for her participation in The Voice Kids and then internationally in 2020 with the release of her first single, Control, where the artist discusses her fight against epilepsy from which she suffered in her childhood. “When I had Rolandic Epilepsy, I would wake up in the morning and know there would be a seizure during the day. I was very anxious, I was trying to control her but it was impossible. Today I am healed, but this anxiety runs deep in my head. That\'s what I say in the song. \" she says.'),
(19, 'IAM', '/img/artists/picture/iam.jpg', 'IAM est un groupe de hip-hop français originaire de Marseille. Formé en 1988, il se compose à l\'origine d\'Akhenaton et Shurik\'n au chant, de Kheops, Imhotep, Kephren aux platines, et anciennement de Freeman. En 1990, IAM publie Concept, son premier album, sous forme d\'une cassette enregistrée en autoproduction.', 'Rap', 'Vendredi', '18:00', 'Scène RAP', '/img/artists/background/iam.jpg', 'IAM is a French hip-hop group from Marseille. Formed in 1988, it originally consists of Akhenaton and Shurik\'n on vocals, Kheops, Imhotep, Kephren on turntables, and formerly Freeman. In 1990, IAM released Concept, its first album, in the form of a self-produced cassette.'),
(20, 'Conkarah', '/img/artists/picture/conkarah.jpg', 'Figure incontournable du reggaeton, Conkarah est parvenu à s’imposer sur la scène musicale grâce à sa reprise du hit \"Hello\" d’Adèle. Le Jamaïcain poursuit depuis son aventure avec succès.', 'Rap', 'Samedi', '18:30', 'Scène RAP', '/img/artists/background/conkarah.jpg', 'A key reggaeton figure, Conkarah has made his mark on the music scene with his cover of Adele\'s hit \"Hello\". The Jamaican has continued his successful adventure since then.'),
(21, 'Kungs', '/img/artists/picture/kungs.jpg\r\n', 'Kungs, de son vrai nom Valentin Brunel, né le 17 décembre 1996 à Toulon, est un disc jockey, auteur-compositeur et musicien français. Sa notoriété décolle en 2016, avec le remix d\'un titre du groupe australien Cookin\' on 3 Burners, This Girl, qui atteint pendant plusieurs semaines le sommet des ventes en France.', 'DJ Electro', 'Dimanche', '21:00', 'Scène Electro DJ', '/img/artists/background/kungs.jpg', 'Kungs, whose real name is Valentin Brunel, born December 17, 1996 in Toulon, is a French disc jockey, songwriter and musician. Its notoriety took off in 2016, with the remix of a track by the Australian group Cookin \'on 3 Burners, This Girl, which for several weeks reached the peak of sales in France.'),
(22, 'Normandie', '/img/artists/picture/normandie.jpg\r\n', 'Normandie a été fondée en septembre 2013 par les chanteurs Philip Strand et Johan Lindström, les deux guitaristes Joel Felix et Håkan Almbladh ainsi que le bassiste Stefan Timmerholm et le batteur Jesper Malmberg dans la ville suédoise d\' Örebro . Quelques jours seulement après la création du groupe, l\'EP de quatre titres portant le nom du groupe est sorti le 11 septembre. Entre-temps, Johan Lindström et Joel Felix ont quitté le groupe pour qu\'il fonctionne comme un quatuor.', 'Rock', 'Samedi', '20:50', 'Scène Rock', '/img/artists/background/normandie.jpg', 'Normandie was founded in September 2013 by singers Philip Strand and Johan Lindström, two guitarists Joel Felix and Håkan Almbladh as well as bassist Stefan Timmerholm and drummer Jesper Malmberg in the Swedish town of Örebro. Just days after the band\'s creation, the four-track EP bearing the band\'s name was released on September 11. In the meantime, Johan Lindström and Joel Felix have left the group to function as a quartet.'),
(23, 'Arlo Parks', '/img/artists/picture/arlo-parks.jpg', 'Anaïs Oluwatoyin Estelle Marinho ou Arlo Parks, née le 9 août 2000, est une chanteuse, compositrice et poétesse britannique.', 'Pop folk', 'Dimanche', '20:00', 'Scène Pop Folk', '/img/artists/background/arlo-parks.jpg', 'Anaïs Oluwatoyin Estelle Marinho or Arlo Parks, born August 9, 2000, is a British singer, songwriter and poet.'),
(24, 'Kaytranada', '/img/artists/picture/kaytranada.jpg\r\n', 'Louis Kevin Celestin, né le 25 août 1992, mieux connu sous son nom de scène Kaytranada, est un musicien électronique canado-haïtien, producteur et DJ.', 'DJ', 'Vendredi', '20:00', 'Scène Electro DJ', '/img/artists/background/kaytranada.jpg', 'Louis Kevin Celestin, born August 25, 1992, better known by his stage name Kaytranada, is a Haitian-Canadian electronic musician, producer and DJ.'),
(25, 'Praa', '/img/artists/picture/praa.jpg', 'Praa impose une soul moderne, aussi ambitieuse que légère. Sous ce nom se dissimule une jeune femme érudite dont la capacité à synthétiser les influences impressionne.', 'Pop', 'Samedi', '20:00', 'Scène Pop Folk', '/img/artists/background/praa.jpg', 'Praa imposes a modern soul, as ambitious as it is light. Under this name hides an erudite young woman whose ability to synthesize influences impresses.'),
(26, 'Kaky', '/img/artists/picture/kaky.jpg', 'Si Kaky se montre friand de jongler entre les atmosphères, il jongle aussi entre les émotions et les types de récits. Les deux premiers titres, La tête pleine et C\'est pas la peine, ont cette particularité de mêler la tristesse du texte à des sonorités et une production électro exaltée, voire dansante.', 'Rap Pop', 'Dimanche', '19:45', 'Scène RAP', '/img/artists/background/kaky.jpg', 'If Kaky is fond of juggling between atmospheres, he also juggles between emotions and types of stories. The first two titles, La tête plein and C\'est pas la sentence, have the particularity of mixing the sadness of the text with sounds and an elated, even dancing, electro production.'),
(27, 'ALI', '/img/artists/picture/ali.jpg', 'ALI est un groupe multinational de hip hop / funk formé en 2016 dans le quartier de Shibuya, à Tokyo. L\'une des particularités du groupe est la variété d\'origines de ses membres : en effet, le groupe mélange racines japonaise, européenne, américaine, asiatique ou africaine.', 'Pop Funk', 'Samedi', '22:00', 'Scène Pop Folk', '/img/artists/background/ali.jpg', 'ALI is a multinational hip hop / funk group formed in 2016 in the Shibuya district of Tokyo. One of the peculiarities of the group is the variety of origins of its members: indeed, the group mixes Japanese, European, American, Asian or African roots.'),
(28, 'Cécile Corbel', '/img/artists/picture/cecile-corbel.jpg', 'Cécile Corbel, née le 28 mars 1980 à Pont-Croix, est une harpiste, auteure-compositrice-interprète et chanteuse française d\'expression bretonne et japonaise. Avec sa harpe celtique, elle a commencé par interpréter le répertoire traditionnel celtique, avant de composer ses propres mélodies.', 'Jazz', 'Samedi', '16:50', 'Scène Jazz', '/img/artists/background/cecile-corbel.jpg', 'Cécile Corbel, born March 28, 1980 in Pont-Croix, is a French harpist, singer-songwriter and Breton-speaking Breton and Japanese singer. With her Celtic harp, she began by performing the traditional Celtic repertoire, before composing her own melodies.'),
(29, 'Pomme', '/img/artists/picture/pomme.jpg', 'Claire Pommet, dite Pomme, née le 2 août 1996 à Décines-Charpieu, est une auteure-compositrice-interprète et musicienne française. Elle sort un premier EP de 4 titres En Cavale en 2016 puis son premier album, intitulé À peu près, un an après en 2017. ', 'Pop', 'Samedi', '21:00', 'Scène Pop Folk', '/img/artists/background/pomme.jpg', 'Claire Pommet, known as Pomme, born August 2, 1996 in Décines-Charpieu, is a French singer-songwriter and musician. She released her first 4-track EP En Cavale in 2016 and then her first album, entitled À propos, a year later in 2017.'),
(30, 'Silvàn Areg', '/img/artists/picture/silvan-areg.jpg\r\n', 'Sylvain Hagopian, alias Silvàn Areg, né le 18 mai 1979 à Clermont-Ferrand est un auteur-compositeur-interprète français. Il est notamment parolier de Claudio Capéo.', 'Pop Rap', 'Dimanche', '19:00', 'Scène Pop Folk', '/img/artists/background/silvan-areg.jpg', 'Sylvain Hagopian, alias Silvàn Areg, born May 18, 1979 in Clermont-Ferrand is a French singer-songwriter. He is notably lyricist of Claudio Capéo.'),
(31, 'Skip the Use', '/img/artists/picture/skip-the-use.jpg', 'Skip The Use est un groupe de rock français chantant en anglais créé en 2008 et originaire de Ronchin, dans le département du Nord. Il se dissout une première fois en 2016, avant de se reformer en 2018.', 'Rock', 'Dimanche', '20:30', 'Scène Rock', '/img/artists/background/skip-the-use.jpg', 'Skip The Use is a French rock band singing in English created in 2008 and from Ronchin, in the Nord department. It dissolved for the first time in 2016, before reforming in 2018.'),
(32, 'Jain', '/img/artists/picture/jain.jpg', 'Jeanne Galice, dite Jain, est une auteure-compositrice-interprète française chantant en anglais, née le 7 février 1992 à Toulouse. Son style de musique mélange la pop avec de nombreux autres genres dont la musique électronique, le reggae et diverses musiques du monde, inspiré par ses nombreux séjours à l\'étranger.', 'Pop Folk', 'Vendredi', '21:00', 'Scène Pop Folk', '/img/artists/background/jain.jpg', 'Jeanne Galice, known as Jain, is a French singer-songwriter singing in English, born February 7, 1992 in Toulouse. His style of music mixes pop with many other genres including electronic music, reggae and various world music, inspired by his many stays abroad.'),
(33, 'Emmanuel Moire', '/img/artists/picture/emmanuel-moire.jpg', 'Emmanuel Moire, né le 16 juin 1979 au Mans dans la Sarthe, est un auteur-compositeur-interprète et comédien français. De 2004 à 2007, il incarne le roi Louis XIV dans la comédie musicale Le Roi Soleil, qui le fait connaître du grand public. Il incarne ensuite Emcee dans la comédie musicale Cabaret de 2011 à 2012.', 'Pop', 'Vendredi', '20:00', 'Scène Pop Folk', '/img/artists/background/emmanuel-moire.jpg', 'Emmanuel Moire, born June 16, 1979 in Le Mans, Sarthe, is a French singer-songwriter and actor. From 2004 to 2007, he played King Louis XIV in the musical Le Roi Soleil, which made him known to the general public. He then played Emcee in the musical Cabaret from 2011 to 2012.'),
(34, 'BB Brunes', '/img/artists/picture/bb-brunes.jpg', 'BB Brunes ou BBB est un groupe de pop rock français. Il appartient à la nouvelle scène rock française et est actif depuis 2006.', 'Rock', 'Vendredi', '20:30', 'Scène Rock', '/img/artists/background/bb-brunes.jpg', 'BB Brunes or BBB is a French pop rock group. He belongs to the new French rock scene and has been active since 2006.'),
(35, 'Maddy', '/img/artists/picture/maddy.jpg\r\n', 'Maddy est une artiste danoise de 21 ans et elle est originaire d’une petite ville de 3000 habitants.\r\nElle vient de dévoiler son premier single « Island », un titre qui parle de l’audace d’être soi-même et de rester debout face à la tempête.\r\nMaddy a écrit « Island » et on retrouve Nexus Music à la production. La chanson se classe déjà en haut des charts au Danemark (#10 airplay, #12 iTunes, #12 Shazam et #34 Apple Music) !', 'Pop', 'Dimanche', '21:00', 'Scène Pop Folk', '/img/artists/background/maddy.jpg', 'Maddy is a 21-year-old Danish artist from a small town of 3000 inhabitants.\r\nShe has just released her first single \"Island\", a track that talks about daring to be yourself and stand up to the storm.\r\nMaddy wrote \"Island\" and we find Nexus Music in the production. The song is already at the top of the charts in Denmark (# 10 airplay, # 12 iTunes, # 12 Shazam and # 34 Apple Music)!');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210320234247', '2021-03-20 23:42:55', 88),
('DoctrineMigrations\\Version20210322124112', '2021-03-22 12:41:18', 550),
('DoctrineMigrations\\Version20210323182010', '2021-03-23 18:20:18', 340),
('DoctrineMigrations\\Version20210323214906', '2021-03-23 21:54:08', 72),
('DoctrineMigrations\\Version20210323215402', '2021-03-23 21:54:08', 8),
('DoctrineMigrations\\Version20210323215858', '2021-03-23 21:59:05', 74),
('DoctrineMigrations\\Version20210323222844', '2021-03-23 22:28:54', 58),
('DoctrineMigrations\\Version20210324231040', '2021-03-24 23:10:47', 502),
('DoctrineMigrations\\Version20210324231200', '2021-03-24 23:12:06', 68),
('DoctrineMigrations\\Version20210324231629', '2021-03-24 23:16:34', 76),
('DoctrineMigrations\\Version20210324231711', '2021-03-24 23:17:16', 77),
('DoctrineMigrations\\Version20210324232035', '2021-03-24 23:20:41', 114),
('DoctrineMigrations\\Version20210324232356', '2021-03-24 23:24:01', 78),
('DoctrineMigrations\\Version20210325135132', '2021-03-25 13:51:42', 258),
('DoctrineMigrations\\Version20210325140319', '2021-03-25 14:03:26', 131),
('DoctrineMigrations\\Version20210325185746', '2021-03-25 18:57:53', 863);

-- --------------------------------------------------------

--
-- Structure de la table `partner`
--

DROP TABLE IF EXISTS `partner`;
CREATE TABLE IF NOT EXISTS `partner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `partner`
--

INSERT INTO `partner` (`id`, `name`, `picture`, `theme`) VALUES
(1, 'Radio France', '/img/partners/radios/virgin-radio.jpg', 'Radio'),
(2, 'NRJ Radio', '/img/partners/radios/nrj-radio.png', 'Radio'),
(3, 'Fun Radio', '/img/partners/radios/fun-radio.png', 'Radio'),
(4, 'Voix du Nord', '/img/partners/journaux/voix-du-nord.png', 'Journal'),
(5, 'Le Soir', '/img/partners/journaux/le-soir.png', 'Journal'),
(6, 'Musique Journal', '/img/partners/journaux/musique-journal.png', 'Journal'),
(7, 'La Voix du Nord', '/img/partners/journaux/voix-du-nord.png', 'Journal'),
(8, 'Heineken', '/img/partners/boissons/heineken.jpg', 'Boisson'),
(9, 'Coca Cola', '/img/partners/boissons/coca.png', 'Boisson'),
(10, 'Schweppes', '/img/partners/boissons/schweppes.jpg', 'Boisson'),
(11, 'La Deux', '/img/partners/chaines/la-deux.png', 'Chaîne'),
(12, 'France 3', '/img/partners/chaines/france-3.jpg', 'Chaîne'),
(13, 'Culture Box', '/img/partners/chaines/culture-box.jpg', 'Chaîne');

-- --------------------------------------------------------

--
-- Structure de la table `scene`
--

DROP TABLE IF EXISTS `scene`;
CREATE TABLE IF NOT EXISTS `scene` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `background` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `nameeng` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `descriptioneng` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `scene`
--

INSERT INTO `scene` (`id`, `name`, `picture`, `background`, `description`, `nameeng`, `descriptioneng`) VALUES
(1, 'Scène Rock', '/img/scenes/rock.jpg\r\n', '/img/scenes/rock.jpg', 'Bienvenue dans notre scène Rock\r\nRetrouver tous les artistes, groupes qui sont là pour rocker partout dans le festival', 'Rock Scene', 'Welcome to our Rock scene\r\nFind all the artists, groups who are there to rock all over the festival'),
(2, 'Scène Jazz', '/img/scenes/jazz.jpg', '/img/scenes/jazz.jpg', 'Qui veut de la détente ?\r\nLa scène Jazz est là pour vous\r\nAvec ces artistes ayant pour but de divertir dans la tendresse et la beauté de la musique.', 'Jazz Scene', 'Who wants relaxation?\r\nThe Jazz scene is here for you\r\nWith these artists aiming to entertain in the tenderness and beauty of music'),
(3, 'Scène RAP', '/img/scenes/rap.jpg', '/img/scenes/rap.jpg', 'Rhythm And Poetry, tel est la definition du RAP.\r\nDécouvrez une ambiance jeune et rebelle avec cette scène.', 'RAP Scene', 'Rhythm And Poetry, that is the definition of RAP.\r\nDiscover a young and rebellious atmosphere with this scene.'),
(4, 'Scène Pop Folk', '/img/scenes/pop.jpg', '/img/scenes/pop.jpg', 'Un peu de POP ?\r\nVoici la scène Pop Folk dont son seul objectif est de divertir dans une ambiance attractive.', 'Pop Folk Scene', 'A little POP?\r\nHere is the Pop Folk scene whose only objective is to entertain in an attractive atmosphere.'),
(5, 'Scène Electro DJ', '/img/scenes/electro.jpg', '/img/scenes/electro.jpg', 'Vous êtes plutôt nouvelles technologies ?\r\nVoici la scène DJ Electro, tout pour une ambiance technologique et electronique', 'Electro DJ Scene', 'Are you rather new technologies?\r\nHere is the Electro DJ scene, everything for a technological and electronic atmosphere');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `nom` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`),
  UNIQUE KEY `UNIQ_8D93D6496C6E55B5` (`nom`),
  UNIQUE KEY `UNIQ_8D93D649A625945B` (`prenom`),
  UNIQUE KEY `UNIQ_8D93D649A13010B2` (`age`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `is_verified`, `nom`, `prenom`, `age`) VALUES
(1, 'louisdeprez1@gmail.com', '[\"ROLE_ADMIN\"]', '$argon2i$v=19$m=65536,t=4,p=1$UHh2cXZ5ODEvbURzdjVZQw$/CqQRAoVK8L+0C0yellKLpYJcSzu7VTBXDoXBKhuo+A', 0, 'Déprez', 'Louis', 20);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
