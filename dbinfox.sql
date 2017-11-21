-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 21-Nov-2017 às 23:47
-- Versão do servidor: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbinfox`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbclientes`
--

CREATE TABLE IF NOT EXISTS `tbclientes` (
  `idCli` int(11) NOT NULL AUTO_INCREMENT,
  `nomeCli` varchar(50) NOT NULL,
  `endCli` varchar(100) DEFAULT NULL,
  `telCli` varchar(50) NOT NULL,
  `emailCli` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idCli`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Extraindo dados da tabela `tbclientes`
--

INSERT INTO `tbclientes` (`idCli`, `nomeCli`, `endCli`, `telCli`, `emailCli`) VALUES
(1, 'Linus Torvalds', 'Rua Tux, 2015', '9999-9999', 'linus@linux.com'),
(2, 'José de Assis', 'Rua da Gasômetro, 1234', '9000-0003', 'professorjoseassis@gmail.com'),
(3, 'João da Silva', 'Rua Vitória, 56', '5678-9009', 'joao@hotmail.com'),
(4, 'Ilka de Carvalho Rocha', 'Alameda Pádua, 137', '3011-2498', 'ilkarocha1@hotmail.com'),
(5, 'Juliana Paes', 'Rua Santa Luzia, 456', '7890-0987', 'ju@globo.com'),
(6, 'Joaquim Jorge', 'Avenida Sumaré, 2009, Casa 2', '2908-0987', 'joaquim@yahoo.com'),
(7, 'Leonardo Braga', 'Rua Tuituti, 1234', '9800-0989', 'leo@uol.com.br'),
(8, 'Antônio da Silva', 'Rua Tuiuti, 1000', '9999-9999', 'antonio@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbos`
--

CREATE TABLE IF NOT EXISTS `tbos` (
  `os` int(11) NOT NULL AUTO_INCREMENT,
  `dataOs` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tipo` varchar(15) NOT NULL,
  `situacao` varchar(20) NOT NULL,
  `equipamento` varchar(150) NOT NULL,
  `defeito` varchar(150) NOT NULL,
  `servico` varchar(150) DEFAULT NULL,
  `tecnico` varchar(30) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `idCli` int(11) NOT NULL,
  PRIMARY KEY (`os`),
  KEY `idCli` (`idCli`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `tbos`
--

INSERT INTO `tbos` (`os`, `dataOs`, `tipo`, `situacao`, `equipamento`, `defeito`, `servico`, `tecnico`, `valor`, `idCli`) VALUES
(2, '2016-10-19 20:58:40', '', '', 'Notebook', 'Não liga', 'Troca da fonte', 'Zé', '87.50', 1),
(3, '2016-12-21 17:46:02', 'Os', 'Entrega OK', 'Notebook modelo xyz', 'Não liga', 'Troca da fonte', 'Leandro', '230.00', 3),
(4, '2016-12-21 19:02:19', 'Os', 'Aguardando peças', 'Impressora deskjet modelo z', 'não puxa papel', 'Troca dos sensor de papel', 'Leandro', '85.00', 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbusuarios`
--

CREATE TABLE IF NOT EXISTS `tbusuarios` (
  `idUser` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `login` varchar(15) NOT NULL,
  `senha` varchar(15) NOT NULL,
  `perfil` varchar(20) NOT NULL,
  PRIMARY KEY (`idUser`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbusuarios`
--

INSERT INTO `tbusuarios` (`idUser`, `usuario`, `telefone`, `login`, `senha`, `perfil`) VALUES
(1, 'José de Assis', '9999-9999', 'joseassis', '123456', 'admin'),
(2, 'Administrador', '2222-2222', 'admin', 'admin', 'admin'),
(3, 'Leandro Ramos', '9999-9999', 'leandro', '123', 'user'),
(4, 'Bill Gates', '4444-4444', 'bill', '123', 'user'),
(5, 'Jefferson Costa', '5555-5555', 'jefferson', '123456', 'user'),
(6, 'Linus Torvalds', '9999-9999', 'linus', '123', 'admin'),
(7, 'Robson Vaamonde', '7777-7777', 'robson', '123', 'admin'),
(8, 'Bruce Dickinson', '6666-6666', 'iron', 'maiden', 'admin'),
(9, 'Angelina Jolie', '9999-9999', 'lara', 'croft', 'user'),
(10, 'Elton Riva Moura Lima', '30112498', 'notleamil', '123', 'user');

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tbos`
--
ALTER TABLE `tbos`
  ADD CONSTRAINT `tbos_ibfk_1` FOREIGN KEY (`idCli`) REFERENCES `tbclientes` (`idCli`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
