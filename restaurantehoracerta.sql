-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Abr-2023 às 14:48
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
-- Estrutura da tabela `cardapio`
--

CREATE TABLE `cardapio` (
  `ID` int(11) NOT NULL,
  `IDCATEGORIA` int(11) DEFAULT NULL,
  `IDPRODUTO` int(11) DEFAULT NULL,
  `DESCRICAO` varchar(200) DEFAULT NULL,
  `PRECO` double DEFAULT NULL,
  `IMAGEMILUS` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `ID` int(11) NOT NULL,
  `NOME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `comanda`
--

CREATE TABLE `comanda` (
  `NUMEROCOMANDA` int(11) NOT NULL,
  `MESA` int(11) DEFAULT NULL,
  `DATAABERTURA` datetime DEFAULT NULL,
  `DATAFECHAMENTO` datetime DEFAULT NULL,
  `IDPEDIDO` int(11) DEFAULT NULL,
  `VALORTOTAL` double DEFAULT NULL,
  `IDFORMAPAG` int(11) DEFAULT NULL,
  `IDATENDENTE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `formas_pag`
--

CREATE TABLE `formas_pag` (
  `ID` int(11) NOT NULL,
  `FORMAPAG` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `ID` int(11) NOT NULL,
  `NOME` varchar(100) DEFAULT NULL,
  `CARGO` varchar(50) DEFAULT NULL,
  `TELEFONE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mesa`
--

CREATE TABLE `mesa` (
  `NUMEROMESA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `ID` int(11) NOT NULL,
  `NOME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cardapio`
--
ALTER TABLE `cardapio`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDPRODUTO` (`IDPRODUTO`),
  ADD KEY `IDCATEGORIA` (`IDCATEGORIA`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `comanda`
--
ALTER TABLE `comanda`
  ADD PRIMARY KEY (`NUMEROCOMANDA`),
  ADD KEY `MESA` (`MESA`),
  ADD KEY `IDFORMAPAG` (`IDFORMAPAG`),
  ADD KEY `IDATENDENTE` (`IDATENDENTE`);

--
-- Índices para tabela `formas_pag`
--
ALTER TABLE `formas_pag`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `mesa`
--
ALTER TABLE `mesa`
  ADD PRIMARY KEY (`NUMEROMESA`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cardapio`
--
ALTER TABLE `cardapio`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cardapio`
--
ALTER TABLE `cardapio`
  ADD CONSTRAINT `cardapio_ibfk_1` FOREIGN KEY (`IDPRODUTO`) REFERENCES `produto` (`ID`),
  ADD CONSTRAINT `cardapio_ibfk_2` FOREIGN KEY (`IDCATEGORIA`) REFERENCES `categoria` (`ID`);

--
-- Limitadores para a tabela `comanda`
--
ALTER TABLE `comanda`
  ADD CONSTRAINT `comanda_ibfk_1` FOREIGN KEY (`MESA`) REFERENCES `mesa` (`NUMEROMESA`),
  ADD CONSTRAINT `comanda_ibfk_2` FOREIGN KEY (`IDFORMAPAG`) REFERENCES `formas_pag` (`ID`),
  ADD CONSTRAINT `comanda_ibfk_3` FOREIGN KEY (`IDATENDENTE`) REFERENCES `funcionario` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
