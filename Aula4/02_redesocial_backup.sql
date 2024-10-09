DROP DATABASE redesocial;

CREATE DATABASE redesocial;
USE redesocial;

-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2022 at 08:41 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `redesocial`
--

-- --------------------------------------------------------

--
-- Table structure for table `comentario`
--

CREATE TABLE `comentario` (
  `DataHora` datetime DEFAULT NULL,
  `TextoComentario` text COLLATE latin1_bin DEFAULT NULL,
  `ComentarioID` int(11) NOT NULL,
  `UtilizadorComent` int(11) NOT NULL,
  `PostComent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `comentario`
--

INSERT INTO `comentario` (`DataHora`, `TextoComentario`, `ComentarioID`, `UtilizadorComent`, `PostComent`) VALUES
('2021-09-10 15:52:00', 'Estamos todos lá!', 1, 10, 1),
('2021-09-12 10:00:00', 'Estou a perder alguma coisa?!', 2, 7, 1),
('2021-09-13 08:00:00', 'Se não tiveres oportunidade de vir, pelo menos vem ao sunset!', 3, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `grupo`
--

CREATE TABLE `grupo` (
  `DesignacaoGrupo` varchar(100) COLLATE latin1_bin NOT NULL,
  `Data` date DEFAULT NULL,
  `DescricaoGrupo` text COLLATE latin1_bin NOT NULL,
  `GrupoID` int(11) NOT NULL,
  `Dono` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `grupo`
--

INSERT INTO `grupo` (`DesignacaoGrupo`, `Data`, `DescricaoGrupo`, `GrupoID`, `Dono`) VALUES
('Alunos 2º Ano ISTA', '2021-08-02', 'Grupo de alunos que frequentam as ...........', 1, 1),
('Fustsal ISCTE', '2021-08-02', 'Grupo de jogadores da equipe ...........', 2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `UtilizadorLike` int(11) NOT NULL,
  `PostLike` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`UtilizadorLike`, `PostLike`) VALUES
(1, 1),
(2, 1),
(1, 2),
(3, 2),
(4, 2),
(1, 3),
(2, 3),
(2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `membrosgrupo`
--

CREATE TABLE `membrosgrupo` (
  `GrupoMembro` int(11) NOT NULL,
  `UtilizadorMembro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `membrosgrupo`
--

INSERT INTO `membrosgrupo` (`GrupoMembro`, `UtilizadorMembro`) VALUES
(1, 2),
(1, 10),
(2, 2),
(2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `pais`
--

CREATE TABLE `pais` (
  `CodigoPais` char(2) COLLATE latin1_bin NOT NULL,
  `NomePais` varchar(50) COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `pais`
--

INSERT INTO `pais` (`CodigoPais`, `NomePais`) VALUES
('AD', 'Andorra'),
('AE', 'United Arab Emirates (the)'),
('AR', 'Argentina'),
('BE', 'Belgium'),
('ES', 'Spain'),
('FR', 'France'),
('GB', 'United Kingdom'),
('PT', 'Portugal'),
('RO', 'Romania'),
('SC', 'Seychelles');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `DataHora` datetime NOT NULL,
  `TextoPost` text COLLATE latin1_bin DEFAULT NULL,
  `PostID` int(11) NOT NULL,
  `PostAutor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`DataHora`, `TextoPost`, `PostID`, `PostAutor`) VALUES
('2021-09-10 15:50:00', 'Não podemos faltar à semana IULCOME! Quem vem?\r\n', 1, 1),
('2021-09-10 18:00:00', 'As praxes estão aí!\r\n', 2, 2),
('2021-09-11 10:00:00', 'Viram as notícias na comunicação social sobre a semana IULCOME?\r\n', 3, 8),
('2021-09-12 10:00:00', NULL, 4, 9),
('2021-09-13 08:00:00', 'Começaram as aulas de BD!!!\r\n', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `utilizador`
--

CREATE TABLE `utilizador` (
  `EmailUtilizador` varchar(100) COLLATE latin1_bin NOT NULL,
  `NomeUtilizador` varchar(100) COLLATE latin1_bin NOT NULL,
  `PaisResidencia` char(2) COLLATE latin1_bin DEFAULT NULL,
  `UtilizadorID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `utilizador`
--

INSERT INTO `utilizador` (`EmailUtilizador`, `NomeUtilizador`, `PaisResidencia`, `UtilizadorID`) VALUES
('luis@iscte.pt', 'Luís António Castro', 'PT', 1),
('ana@iscte.pt', 'Ana Martins', 'PT', 2),
('marie@gmail.com\r\n', 'Marie da Silva', 'FR', 3),
('jeanPierre@gmail.com\r\n', 'Jean Pierre', 'FR', 4),
('francisco@sapo.pt\r\n', 'Francisco Melo', NULL, 5),
('antonio_ferraz@mm.pt\r\n', 'António Ferraz', 'PT', 6),
('luis_pedro@iscte.pt\r\n', 'Luis Pedro', 'PT', 7),
('marcThomas@iscte.pt\r\n', 'Marc Thomas', 'GB', 8),
('zeMaria@rk.co.uk\r\n', 'José Maria', 'GB', 9),
('pedrito@mail.pt\r\n', 'Pedrito', 'PT', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`ComentarioID`),
  ADD KEY `FK_COMENTAR_COLOCACOM_UTILIZAD` (`UtilizadorComent`),
  ADD KEY `FK_COMENTAR_COMENTARI_POST` (`PostComent`);

--
-- Indexes for table `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`GrupoID`),
  ADD UNIQUE KEY `AK_DESIGNACAO_GRUPO` (`DesignacaoGrupo`),
  ADD KEY `Dono` (`Dono`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`PostLike`,`UtilizadorLike`),
  ADD KEY `FK_LIKE_LIKE_UTIL_UTILIZAD` (`UtilizadorLike`);

--
-- Indexes for table `membrosgrupo`
--
ALTER TABLE `membrosgrupo`
  ADD PRIMARY KEY (`GrupoMembro`,`UtilizadorMembro`),
  ADD KEY `FK_MEMBROSG_GRUPO_MEM_UTILIZAD` (`UtilizadorMembro`);

--
-- Indexes for table `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`CodigoPais`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`PostID`),
  ADD KEY `PostAutor` (`PostAutor`);

--
-- Indexes for table `utilizador`
--
ALTER TABLE `utilizador`
  ADD PRIMARY KEY (`UtilizadorID`),
  ADD UNIQUE KEY `AK_KEY_EMAIL_UTILIZAD` (`EmailUtilizador`),
  ADD KEY `PaisResidencia` (`PaisResidencia`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `FK_COMENTAR_COLOCACOM_UTILIZAD` FOREIGN KEY (`UtilizadorComent`) REFERENCES `utilizador` (`UtilizadorID`),
  ADD CONSTRAINT `FK_COMENTAR_COMENTARI_POST` FOREIGN KEY (`PostComent`) REFERENCES `post` (`PostID`);

--
-- Constraints for table `grupo`
--
ALTER TABLE `grupo`
  ADD CONSTRAINT `grupo_ibfk_1` FOREIGN KEY (`Dono`) REFERENCES `utilizador` (`UtilizadorID`);

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `FK_LIKE_LIKE_POST_POST` FOREIGN KEY (`PostLike`) REFERENCES `post` (`PostID`),
  ADD CONSTRAINT `FK_LIKE_LIKE_UTIL_UTILIZAD` FOREIGN KEY (`UtilizadorLike`) REFERENCES `utilizador` (`UtilizadorID`);

--
-- Constraints for table `membrosgrupo`
--
ALTER TABLE `membrosgrupo`
  ADD CONSTRAINT `FK_MEMBROSG_GRUPO_MEM_UTILIZAD` FOREIGN KEY (`UtilizadorMembro`) REFERENCES `utilizador` (`UtilizadorID`),
  ADD CONSTRAINT `FK_MEMBROSG_MEMBROS_G_GRUPO` FOREIGN KEY (`GrupoMembro`) REFERENCES `grupo` (`GrupoID`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`PostAutor`) REFERENCES `utilizador` (`UtilizadorID`);

--
-- Constraints for table `utilizador`
--
ALTER TABLE `utilizador`
  ADD CONSTRAINT `utilizador_ibfk_1` FOREIGN KEY (`PaisResidencia`) REFERENCES `pais` (`CodigoPais`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
