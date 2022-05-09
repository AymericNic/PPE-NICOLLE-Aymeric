-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 09 mai 2022 à 12:37
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sucrerie`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(45) NOT NULL,
  `Prenom` varchar(45) NOT NULL,
  `email` varchar(50) NOT NULL,
  `Ville` varchar(100) NOT NULL,
  `residence` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `Nom`, `Prenom`, `email`, `Ville`, `residence`) VALUES
(1, 'TARINAUX', 'Lucien', 'lucien@gmail.com', 'PARIS', '12 rue de la Justice 51100'),
(2, 'MARTUSE', 'Laure', 'laure@gmail.com', 'REIMS', '103 avenue Lear 51100'),
(3, 'RABIN', 'Sandrine', 'M.sandrine@yahoo.fr', 'PARIS', '21 rue de la Méditerranée\n51100'),
(4, 'SILLARD', ' Laurence', 'laurence@yahoo.com', 'FISMES', '15 rue Pasentiers 51100'),
(5, 'COTOY', ' Sylvie', 'C.sylvie@gmail.com', 'REIMS', '12 rue des écus 51100'),
(6, 'HELLOU', 'Bernard', 'H.Bernard@gmail.com', 'BORDEAUX', '21 rue de la Méditerranée \n51100'),
(7, 'HENTION', 'Martine', 'H.Martine@yahoo.fr', 'ROMAIN', '50 allée des bons enfants 51100'),
(8, 'SIBAT', ' Evelyne', 'S.Evelyne@yahoo.com', 'BORDEAUX', '14 rue de la Baltique 51100'),
(9, 'MARIN', 'Dominique', 'M.Dominique@gmail.com', 'LONGUEVAL', '24 rue de la Baltique\n02320'),
(10, 'DURDUX', 'Monique', 'D.Monique@gmail.com', 'VITRY LE FRANCOIS', '15 allée des Béarnais 51150');

-- --------------------------------------------------------

--
-- Structure de la table `participant`
--

DROP TABLE IF EXISTS `participant`;
CREATE TABLE IF NOT EXISTS `participant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `mail` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `participant`
--

INSERT INTO `participant` (`id`, `nom`, `prenom`, `mail`) VALUES
(8, 'Lolita', 'Gonnet', 'lgonnet7@bbc.co.uk'),
(7, 'Talbert', 'Stirland', 'tstirland6@technorati.com'),
(6, 'Blondell', 'Queste', 'bqueste5@twitter.com'),
(5, 'Nancey', 'Bateup', 'nbateup4@deviantart.com'),
(4, 'Debi', 'Mell', 'dmell3@apache.org'),
(3, 'Ermina', 'Oldknowe', 'eoldknowe2@rediff.com'),
(2, 'Chariot', 'MacCard', 'cmaccard1@barnesandnoble.com'),
(1, 'Zacherie', 'Stoakes', 'zstoakes0@com.com'),
(9, 'Toma', 'Poles', 'tpoles8@shop-pro.jp'),
(10, 'Ethelin', 'Lovatt', 'elovatt9@pagesperso-orange.fr'),
(11, 'Min', 'Gimbart', 'mgimbarta@slashdot.org'),
(12, 'Kassey', 'Tineman', 'ktinemanb@163.com'),
(13, 'Cordy', 'Couve', 'ccouvec@intel.com'),
(14, 'Pooh', 'de Pinna', 'pdepinnad@dell.com'),
(15, 'Launce', 'Chotty', 'lchottye@blogger.com'),
(16, 'Janean', 'Spir', 'jspirf@fda.gov'),
(17, 'Virgie', 'Klewi', 'vklewig@studiopress.com'),
(18, 'Lay', 'Rowth', 'lrowthh@yolasite.com'),
(19, 'Karola', 'Blaes', 'kblaesi@prweb.com'),
(20, 'Reba', 'Simioni', 'rsimionij@unc.edu'),
(21, 'Rosina', 'Laurentin', 'rlaurentink@tuttocitta.it'),
(22, 'Lauryn', 'Morton', 'lmortonl@mashable.com'),
(23, 'Frants', 'Brent', 'fbrentm@myspace.com'),
(24, 'Maurizio', 'Antat', 'mantatn@nih.gov'),
(25, 'Farrah', 'Ohms', 'fohmso@toplist.cz'),
(26, 'Rubi', 'Currall', 'rcurrallp@baidu.com'),
(27, 'Cara', 'Park', 'cparkq@nih.gov'),
(28, 'Klarrisa', 'Campany', 'kcampanyr@so-net.ne.jp'),
(29, 'Lynde', 'Niemetz', 'lniemetzs@go.com'),
(30, 'Rockey', 'Godspeede', 'rgodspeedet@shop-pro.jp'),
(31, 'Dugald', 'Shoubridge', 'dshoubridgeu@slashdot.org'),
(32, 'Corny', 'Caverhill', 'ccaverhillv@unblog.fr'),
(33, 'Lida', 'Capner', 'lcapnerw@technorati.com'),
(34, 'Jeniffer', 'Croxley', 'jcroxleyx@barnesandnoble.com'),
(35, 'Krishna', 'Raddish', 'kraddishy@de.vu'),
(36, 'Dulcinea', 'Tommasuzzi', 'dtommasuzziz@wikimedia.org'),
(37, 'Martynne', 'Paffot', 'mpaffot10@bigcartel.com'),
(38, 'Pablo', 'Peeter', 'ppeeter11@goodreads.com'),
(39, 'Jarad', 'Bauduccio', 'jbauduccio12@prlog.org'),
(40, 'Mei', 'Hurdwell', 'mhurdwell13@uol.com.br'),
(41, 'Florenza', 'Mewitt', 'fmewitt14@surveymonkey.com'),
(42, 'Jessalin', 'Ruddock', 'jruddock15@comcast.net'),
(43, 'Zorah', 'Cunnow', 'zcunnow16@ftc.gov'),
(45, 'Malvin', 'Sutlieff', 'msutlieff18@boston.com'),
(46, 'Kassey', 'Grinsdale', 'kgrinsdale19@amazon.com'),
(47, 'Tedi', 'Mogenot', 'tmogenot1a@fda.gov'),
(48, 'Aurea', 'Ellick', 'aellick1b@gizmodo.com'),
(49, 'Florella', 'Vaisey', 'fvaisey1c@mtv.com'),
(50, 'Barb', 'Aubry', 'baubry1d@stumbleupon.com'),
(51, 'Leilah', 'Shackleford', 'lshackleford1e@biglobe.ne.jp'),
(52, 'Georgine', 'Rossant', 'grossant1f@noaa.gov'),
(53, 'Torrie', 'Fellgatt', 'tfellgatt1g@rakuten.co.jp'),
(54, 'Haleigh', 'Clows', 'hclows1h@wp.com'),
(55, 'Louella', 'Skade', 'lskade1i@etsy.com'),
(56, 'Ruy', 'Grabert', 'rgrabert1j@boston.com'),
(57, 'Caron', 'Chartres', 'cchartres1k@ehow.com'),
(58, 'Violante', 'Rhyme', 'vrhyme1l@vkontakte.ru'),
(59, 'Heida', 'Gude', 'hgude1m@behance.net'),
(60, 'Malanie', 'Tomkin', 'mtomkin1n@ihg.com'),
(61, 'Rudolf', 'Segeswoeth', 'rsegeswoeth1o@paginegialle.it'),
(62, 'Drew', 'Schruyer', 'dschruyer1p@indiegogo.com'),
(63, 'Filmer', 'Scoggans', 'fscoggans1q@ca.gov'),
(64, 'Eada', 'Dassindale', 'edassindale1r@goo.gl'),
(65, 'Clifford', 'Phillip', 'cphillip1s@senate.gov'),
(66, 'Broderic', 'Ryder', 'bryder1t@oakley.com'),
(67, 'Karen', 'Goldney', 'kgoldney1u@cloudflare.com'),
(68, 'Shirley', 'Hares', 'shares1v@1und1.de'),
(70, 'Lavinie', 'Stoffer', 'lstoffer1x@blogger.com'),
(71, 'Max', 'Minchella', 'mminchella1y@nhs.uk'),
(72, 'Denis', 'Venes', 'dvenes1z@google.fr'),
(73, 'Carlin', 'Bus', 'cbus20@wordpress.org'),
(74, 'Britni', 'Oldroyd', 'boldroyd21@microsoft.com'),
(75, 'Magdalene', 'Vaud', 'mvaud22@google.pl'),
(76, 'Rochester', 'Dufer', 'rdufer23@amazonaws.com'),
(77, 'Simone', 'McGinney', 'smcginney24@sitemeter.com'),
(78, 'Blondy', 'Glackin', 'bglackin25@themeforest.net'),
(79, 'Claudianus', 'Eadmead', 'ceadmead26@soup.io'),
(80, 'Dugald', 'Oldland', 'doldland27@bandcamp.com'),
(81, 'Joellyn', 'Maggorini', 'jmaggorini28@msu.edu'),
(82, 'Olimpia', 'Boyall', 'oboyall29@tumblr.com'),
(83, 'Ruy', 'Paolino', 'rpaolino2a@columbia.edu'),
(84, 'Buffy', 'Malcher', 'bmalcher2b@usatoday.com'),
(85, 'Gregoire', 'Buxy', 'gbuxy2c@baidu.com'),
(86, 'Lianna', 'Gidney', 'lgidney2d@fema.gov'),
(87, 'Orazio', 'McCloch', 'omccloch2e@dailymail.co.uk'),
(88, 'Arlan', 'Axtonne', 'aaxtonne2f@constantcontact.com'),
(89, 'Nikita', 'Fall', 'nfall2g@google.pl'),
(90, 'Dorotea', 'Simao', 'dsimao2h@miibeian.gov.cn'),
(91, 'Darda', 'Lezemere', 'dlezemere2i@amazon.com'),
(92, 'Chad', 'Viggers', 'cviggers2j@chron.com'),
(93, 'Brianna', 'Kettles', 'bkettles2k@lycos.com'),
(94, 'Roxie', 'Dendon', 'rdendon2l@theatlantic.com'),
(95, 'Mufi', 'Petry', 'mpetry2m@noaa.gov'),
(96, 'Kristin', 'Seabert', 'kseabert2n@elpais.com'),
(97, 'Kandace', 'Cardenoso', 'kcardenoso2o@reference.com'),
(98, 'Daryl', 'Jorin', 'djorin2p@opera.com'),
(99, 'Dwain', 'Alkin', 'dalkin2q@vistaprint.com'),
(100, 'Wallis', 'Tann', 'wtann2r@europa.eu'),
(102, 'RACHI', 'Sonia', 'R.sonia@gmail.com'),
(104, 'Diene', 'Abass', 'D.abass@gmail.com'),
(105, 'Alfreda', 'Blasius', 'ablasius1w@usa.gov');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
