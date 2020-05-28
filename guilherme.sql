-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 23-Jun-2019 às 16:44
-- Versão do servidor: 10.1.37-MariaDB-0+deb9u1
-- PHP Version: 7.0.33-0+deb9u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `guilherme`
--
CREATE DATABASE IF NOT EXISTS `guilherme` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `guilherme`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `cod` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `mensagem` varchar(500) NOT NULL,
  `email` varchar(50) NOT NULL,
  `deuspref` varchar(10) NOT NULL,
  `lido` tinyint(1) NOT NULL,
  `span` varchar(10) NOT NULL,
  `grau` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`cod`, `nome`, `mensagem`, `email`, `deuspref`, `lido`, `span`, `grau`) VALUES
(14, 'guilherme', 'Olá queridos professores!', 'guilhermedicasil@gmail.com', 'Thor', 1, 'on', 10),
(15, 'guilherme', 'Como vão nesse incrível dia?', 'guilhermedicasil@gmail.com', 'Odin', 0, 'on', 5),
(16, 'guilherme', 'Desejo muita paz, saúde, e bondade no coração!', 'guilhermedicasil@gmail.com', 'Loki', 0, 'on', 1),
(17, 'guilherme', 'A educação é a arma mais poderosa que você pode usar para mudar o mundo.!!!', 'guilhermedicasil@gmail.com', 'Freya', 0, 'on', 9),
(18, 'guilherme', 'Fiquem com Deus.!', 'guilhermedicasil@gmail.com', 'Tyr', 0, 'on', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `cod` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`cod`, `usuario`, `senha`) VALUES
(1, 'guilherme', 'senha');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cod`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`cod`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
