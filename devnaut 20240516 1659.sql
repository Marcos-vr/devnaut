-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema devnaut
--

CREATE DATABASE IF NOT EXISTS devnaut;
USE devnaut;

--
-- Definition of table `adm`
--

DROP TABLE IF EXISTS `adm`;
CREATE TABLE `adm` (
  `idadm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(245) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(245) NOT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idadm`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adm`
--

/*!40000 ALTER TABLE `adm` DISABLE KEYS */;
INSERT INTO `adm` (`idadm`,`nome`,`email`,`senha`,`alteracao`) VALUES 
 (1,'marcos','marcosvra82@gmail.com','$2y$12$WjDhaKVv41N9u/XxY/vWCeIymKrynAgR5UtV4k5t7crLg9wDkHCsq','2024-05-13 15:13:37'),
 (4,'gago','gabriel1020@gmail.com','$2y$12$ELKGD/4HJDy6Bu/QXbOy2.443S3fCQjtxWjgJwNc0ebqUAXs8rimm','2024-05-13 15:30:17'),
 (5,'Guilherme Augusto','gui@gmail.com','$2y$12$HSy8KNBA8C562LDSp3ma6uv4kfZhk2l6dkfxrrf99gZE6/EtvAZIy','2024-05-14 13:46:48'),
 (24,'gabriel','gabriel-bass@hotmail.com','$2y$12$BkiQL./H3sHE.tYSYeKKk.tB.Tufz7O5B3f3CnRMGsrVUM6hHQ1oq','2024-05-16 13:17:34'),
 (26,'manobrown','mano@gmail.com','$2y$12$W07jlt.vIZyuLD.us8Ozku9r5gGbalYa3odmbIVJOnlZt9ZtLRVyO','2024-05-16 14:52:48');
/*!40000 ALTER TABLE `adm` ENABLE KEYS */;


--
-- Definition of table `banner`
--

DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `idbanner` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `foto` varchar(245) NOT NULL,
  `nome` varchar(245) NOT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idbanner`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banner`
--

/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` (`idbanner`,`foto`,`nome`,`alteracao`) VALUES 
 (2,'callof.png','callof','2024-05-16 14:45:09'),
 (3,'minecraft.jpeg','minecraft','2024-05-16 14:45:09'),
 (4,'destiny2.jpg','destiny2','2024-05-16 16:27:13');
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;


--
-- Definition of table `contato`
--

DROP TABLE IF EXISTS `contato`;
CREATE TABLE `contato` (
  `idcontato` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(245) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idcontato`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contato`
--

/*!40000 ALTER TABLE `contato` DISABLE KEYS */;
INSERT INTO `contato` (`idcontato`,`nome`,`telefone`,`alteracao`) VALUES 
 (1,'Ricardo','5533983125456','2024-05-16 16:14:50');
/*!40000 ALTER TABLE `contato` ENABLE KEYS */;


--
-- Definition of table `jogos`
--

DROP TABLE IF EXISTS `jogos`;
CREATE TABLE `jogos` (
  `idjogos` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(245) NOT NULL,
  `detalhes` varchar(245) NOT NULL,
  `lancamento` date NOT NULL,
  `ativo` char(1) NOT NULL DEFAULT 'a',
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `foto` varchar(245) NOT NULL,
  `compra` varchar(255) NOT NULL,
  `tipo` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`idjogos`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jogos`
--

/*!40000 ALTER TABLE `jogos` DISABLE KEYS */;
INSERT INTO `jogos` (`idjogos`,`nome`,`detalhes`,`lancamento`,`ativo`,`alteracao`,`foto`,`compra`,`tipo`) VALUES 
 (1,'like a dragon infinite wealth','Like A Dragon: Infinite Wealth, o próximo título da série Yakuza, reúne dois \"dragões\" heroicos num novo RPG expansivo que leva a franquia para um local totalmente nova no coração do Oceano Pacífico.','2024-01-24','a','2024-05-15 13:39:35','like.jpg','https://www.xbox.com/pt-BR/games/store/like-a-dragon-infinite-wealth-deluxe-edition/9PFQFHCJQPT0','l'),
 (2,'Dragon\'s Dogma II','','0000-00-00','a','2024-05-15 13:39:35','like2.jpg','','l'),
 (6,'asdasd','asdasd','0000-00-00','a','2024-05-16 14:32:19','66464323c8532_Design sem nome.png','','n'),
 (10,'asdasd','ola aps?','2024-05-30','a','2024-05-16 16:05:19','664658ef692a8_minecraft.jpeg','','l'),
 (11,'tASDA','SASDA','2024-05-01','a','2024-05-16 16:46:05','6646627d16afd_Design sem nome.png','','n');
/*!40000 ALTER TABLE `jogos` ENABLE KEYS */;


--
-- Definition of table `texto`
--

DROP TABLE IF EXISTS `texto`;
CREATE TABLE `texto` (
  `idtexto` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tipo` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`idtexto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `texto`
--

/*!40000 ALTER TABLE `texto` DISABLE KEYS */;
INSERT INTO `texto` (`idtexto`,`nome`,`alteracao`,`tipo`) VALUES 
 (1,'Lançamentos','2024-05-14 16:37:04','l'),
 (2,'Mais Jogados','2024-05-14 16:37:04','m');
/*!40000 ALTER TABLE `texto` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
