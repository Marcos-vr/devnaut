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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adm`
--

/*!40000 ALTER TABLE `adm` DISABLE KEYS */;
INSERT INTO `adm` (`idadm`,`nome`,`email`,`senha`,`alteracao`) VALUES 
 (1,'marcos','marcosvra82@gmail.com','$2y$12$WjDhaKVv41N9u/XxY/vWCeIymKrynAgR5UtV4k5t7crLg9wDkHCsq','2024-05-13 15:13:37'),
 (4,'gago','gabriel1020@gmail.com','$2y$12$ELKGD/4HJDy6Bu/QXbOy2.443S3fCQjtxWjgJwNc0ebqUAXs8rimm','2024-05-13 15:30:17'),
 (5,'Guilherme Augusto','gui@gmail.com','$2y$12$HSy8KNBA8C562LDSp3ma6uv4kfZhk2l6dkfxrrf99gZE6/EtvAZIy','2024-05-14 13:46:48'),
 (24,'gabriel','gabriel-bass@hotmail.com','$2y$12$BkiQL./H3sHE.tYSYeKKk.tB.Tufz7O5B3f3CnRMGsrVUM6hHQ1oq','2024-05-16 13:17:34'),
 (26,'manobrown','mano@gmail.com','$2y$12$W07jlt.vIZyuLD.us8Ozku9r5gGbalYa3odmbIVJOnlZt9ZtLRVyO','2024-05-16 14:52:48'),
 (27,'gabriel','gabriel@gmail.com','$2y$12$Ck1yDOKWrFTypBFYBNJdQelMaZag5LiSsTiEsG3eOvTgYoE1lQ6ue','2024-05-20 14:15:41');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banner`
--

/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` (`idbanner`,`foto`,`nome`,`alteracao`) VALUES 
 (3,'minecraft.jpeg','minecraft','2024-05-16 14:45:09'),
 (4,'destiny2.jpg','destiny2','2024-05-16 16:27:13'),
 (7,'664b7c17a59b7_callof.png','call','2024-05-20 13:36:39');
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;


--
-- Definition of table `contanto`
--

DROP TABLE IF EXISTS `contanto`;
CREATE TABLE `contanto` (
  `idcontanto` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(245) NOT NULL,
  `numero` varchar(15) NOT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idcontanto`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contanto`
--

/*!40000 ALTER TABLE `contanto` DISABLE KEYS */;
INSERT INTO `contanto` (`idcontanto`,`nome`,`numero`,`alteracao`) VALUES 
 (1,'Ricardo','5533983125456','2024-05-16 16:14:50'),
 (2,'Pedro','33984237534','2024-05-17 13:14:47');
/*!40000 ALTER TABLE `contanto` ENABLE KEYS */;


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
  `tipo` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`idjogos`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jogos`
--

/*!40000 ALTER TABLE `jogos` DISABLE KEYS */;
INSERT INTO `jogos` (`idjogos`,`nome`,`detalhes`,`lancamento`,`ativo`,`alteracao`,`foto`,`tipo`) VALUES 
 (1,'Senua Saga: Hellblade II','Determinada a salvar as vítimas da tirania, Senua tem de lutar para vencer a escuridão do mundo, mas também a sua própria escuridão','2024-05-21','a','2024-05-20 16:21:55','664ba2d397e57_hellblade2.jpg','l');
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
