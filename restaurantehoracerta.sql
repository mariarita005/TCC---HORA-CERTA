-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28-Mar-2023 às 15:52
-- Versão do servidor: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurantehoracerta`
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

-- --------------------------------------------------------

--
-- Estrutura da tabela `conta`
--

CREATE TABLE `conta` (
  `Nr_Conta` int(11) NOT NULL,
  `Matricula` int(11) DEFAULT NULL,
  `Hora_Abertura` time NOT NULL,
  `Data_Abertura` date NOT NULL,
  `Hora_Fechamento` time DEFAULT NULL,
  `Data_Fechamento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `menu`
--

CREATE TABLE `menu` (
  `MENUID` int(11) NOT NULL,
  `MENUFOTO` blob,
  `DESCRICAO` varchar(50) NOT NULL,
  `PRECO` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `USUID` int(11) NOT NULL,
  `USUNOM` varchar(100) DEFAULT NULL,
  `USULOGIN` varchar(50) DEFAULT NULL,
  `USUSENHA` varchar(50) DEFAULT NULL,
  `USUATIVO` tinyint(1) DEFAULT '1',
  `USULOGADO` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cadastroclientes`
--
ALTER TABLE `cadastroclientes`
  ADD PRIMARY KEY (`CLIID`);

--
-- Indexes for table `conta`
--
ALTER TABLE `conta`
  ADD PRIMARY KEY (`Nr_Conta`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`MENUID`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`USUID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cadastroclientes`
--
ALTER TABLE `cadastroclientes`
  MODIFY `CLIID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `MENUID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `USUID` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
