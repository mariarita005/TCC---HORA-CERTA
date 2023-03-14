-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14-Mar-2023 às 15:04
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `restaurantehoracerta`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastroclientes`
--

CREATE TABLE `cadastroclientes` (
  `CLIID` int(11) NOT NULL,
  `CLINOME` varchar(100) DEFAULT NULL,
  `CLIFONE` varchar(50) DEFAULT NULL,
  `CLIEMAIL` varchar(100) DEFAULT NULL,
  `CLICEP` varchar(50) DEFAULT NULL,
  `CLIRUA` varchar(100) DEFAULT NULL,
  `CLINUMERO` varchar(20) DEFAULT NULL,
  `CLICOMPLEMENTO` varchar(20) DEFAULT NULL,
  `CLIBAIRRO` varchar(100) DEFAULT NULL,
  `CLICIDADE` varchar(50) DEFAULT NULL,
  `CLIESTADO` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cadastroclientes`
--
ALTER TABLE `cadastroclientes`
  ADD PRIMARY KEY (`CLIID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastroclientes`
--
ALTER TABLE `cadastroclientes`
  MODIFY `CLIID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
