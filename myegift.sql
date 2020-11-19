-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Nov-2020 às 23:35
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdegift`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbagendamento`
--

CREATE TABLE `tbagendamento` (
  `idagendamento` int(11) NOT NULL,
  `data_agendamento` date DEFAULT NULL,
  `hora_agendamento` datetime DEFAULT NULL,
  `estadoUsuario` varchar(3) DEFAULT NULL,
  `cidadeUsuario` varchar(35) DEFAULT NULL,
  `bairroUsuario` varchar(32) DEFAULT NULL,
  `logradouroUsuario` varchar(100) DEFAULT NULL,
  `cepUsuario` varchar(10) DEFAULT NULL,
  `nmrCasaUsuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbeletrodomestico`
--

CREATE TABLE `tbeletrodomestico` (
  `idEletrodomestico` int(11) NOT NULL,
  `descr_Eletrodomestico` varchar(255) DEFAULT NULL,
  `preco_Eletrodomestico` decimal(10,5) DEFAULT NULL,
  `tamanho_Eletrodomestico` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbeletronico`
--

CREATE TABLE `tbeletronico` (
  `idEletronico` int(11) NOT NULL,
  `descr_Eletronico` varchar(255) DEFAULT NULL,
  `preco_Eletronico` decimal(10,5) DEFAULT NULL,
  `tamanho_Eletronico` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbformapagamento`
--

CREATE TABLE `tbformapagamento` (
  `idformapagamento` int(11) NOT NULL,
  `formapagaemento` varchar(35) DEFAULT NULL,
  `fk_idUsuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbfornecedor`
--

CREATE TABLE `tbfornecedor` (
  `idFornecedor` int(11) NOT NULL,
  `nomeFornecedor` varchar(18) DEFAULT NULL,
  `sobrenomeFornecedor` varchar(25) DEFAULT NULL,
  `emailFornecedor` varchar(30) DEFAULT NULL,
  `senhaFornecedor` varchar(35) DEFAULT NULL,
  `datanascimentoFornecedor` int(11) DEFAULT NULL,
  `cpfFornecedor` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbimagemeletrodomestico`
--

CREATE TABLE `tbimagemeletrodomestico` (
  `idimagemEletrodomestico` int(11) NOT NULL,
  `nome_imagem` varchar(25) DEFAULT NULL,
  `tamanho_imagem` varchar(25) DEFAULT NULL,
  `imagem` blob DEFAULT NULL,
  `fk_idEletrodomestico` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbimagemeletronico`
--

CREATE TABLE `tbimagemeletronico` (
  `idimagemEletronico` int(11) NOT NULL,
  `nome_imagem` varchar(25) DEFAULT NULL,
  `tamanho_imagem` varchar(25) DEFAULT NULL,
  `imagem` blob DEFAULT NULL,
  `fk_idEletronico` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbimagemfornecedor`
--

CREATE TABLE `tbimagemfornecedor` (
  `idimagemFornecedor` int(11) NOT NULL,
  `nome_imagem` varchar(25) NOT NULL,
  `tamanho_imagem` varchar(25) NOT NULL,
  `imagem` blob NOT NULL,
  `fk_idFornecedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbimagemroupa`
--

CREATE TABLE `tbimagemroupa` (
  `idimagemRoupa` int(11) NOT NULL,
  `nome_imagem` varchar(25) DEFAULT NULL,
  `tamanho_imagem` varchar(25) DEFAULT NULL,
  `imagem` blob DEFAULT NULL,
  `fk_idRoupa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbitens`
--

CREATE TABLE `tbitens` (
  `iditens` int(11) NOT NULL,
  `quant_items_total` int(11) DEFAULT NULL,
  `idEletrodomestico` int(11) DEFAULT NULL,
  `fk_idRoupa` int(11) DEFAULT NULL,
  `fk_idEletronico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbpedido`
--

CREATE TABLE `tbpedido` (
  `idpedido` int(11) NOT NULL,
  `hora_entrega` datetime DEFAULT NULL,
  `data_entrega` date DEFAULT NULL,
  `carta_cor` varchar(25) DEFAULT NULL,
  `carta_desc` varchar(255) DEFAULT NULL,
  `embalagem_produto` varchar(35) DEFAULT NULL,
  `fk_idAgendamento` int(11) NOT NULL,
  `fk_idFornecedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbroupa`
--

CREATE TABLE `tbroupa` (
  `idRoupa` int(11) NOT NULL,
  `marca_Roupa` varchar(35) DEFAULT NULL,
  `descr_Roupa` varchar(255) DEFAULT NULL,
  `preco_Roupa` decimal(10,5) DEFAULT NULL,
  `tamanho_Roupa` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbtelefonefornecedor`
--

CREATE TABLE `tbtelefonefornecedor` (
  `idtelefoneFornecedor` int(11) NOT NULL,
  `NumeroTelefone` varchar(19) DEFAULT NULL,
  `fk_idFornecedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbtelefoneusuario`
--

CREATE TABLE `tbtelefoneusuario` (
  `idtelefoneUsuario` int(11) NOT NULL,
  `NumeroTelefoneUsuario` varchar(25) DEFAULT NULL,
  `fk_idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbusuario`
--

CREATE TABLE `tbusuario` (
  `idUsuario` int(11) NOT NULL,
  `nomeUsuario` varchar(18) DEFAULT NULL,
  `sobrenomeUsuario` varchar(25) DEFAULT NULL,
  `emailUsuario` varchar(30) DEFAULT NULL,
  `datanascimentoUsuario` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbvenda`
--

CREATE TABLE `tbvenda` (
  `idVenda` int(11) NOT NULL,
  `valor_total_Venda` decimal(10,5) DEFAULT NULL,
  `quant_items_Venda` int(11) DEFAULT NULL,
  `data_Venda` date DEFAULT NULL,
  `valor_frete` decimal(10,5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbagendamento`
--
ALTER TABLE `tbagendamento`
  ADD PRIMARY KEY (`idagendamento`);

--
-- Índices para tabela `tbeletrodomestico`
--
ALTER TABLE `tbeletrodomestico`
  ADD PRIMARY KEY (`idEletrodomestico`);

--
-- Índices para tabela `tbeletronico`
--
ALTER TABLE `tbeletronico`
  ADD PRIMARY KEY (`idEletronico`);

--
-- Índices para tabela `tbformapagamento`
--
ALTER TABLE `tbformapagamento`
  ADD PRIMARY KEY (`idformapagamento`),
  ADD KEY `fk_idUsuario` (`fk_idUsuario`);

--
-- Índices para tabela `tbfornecedor`
--
ALTER TABLE `tbfornecedor`
  ADD PRIMARY KEY (`idFornecedor`);

--
-- Índices para tabela `tbimagemeletrodomestico`
--
ALTER TABLE `tbimagemeletrodomestico`
  ADD PRIMARY KEY (`idimagemEletrodomestico`),
  ADD KEY `fk_ideletrodomestico` (`fk_idEletrodomestico`);

--
-- Índices para tabela `tbimagemeletronico`
--
ALTER TABLE `tbimagemeletronico`
  ADD PRIMARY KEY (`idimagemEletronico`),
  ADD KEY `fk_idEletronico` (`fk_idEletronico`);

--
-- Índices para tabela `tbimagemfornecedor`
--
ALTER TABLE `tbimagemfornecedor`
  ADD PRIMARY KEY (`idimagemFornecedor`),
  ADD KEY `fkFornecedor` (`fk_idFornecedor`);

--
-- Índices para tabela `tbimagemroupa`
--
ALTER TABLE `tbimagemroupa`
  ADD PRIMARY KEY (`idimagemRoupa`),
  ADD KEY `fk_idRoupa` (`fk_idRoupa`);

--
-- Índices para tabela `tbitens`
--
ALTER TABLE `tbitens`
  ADD PRIMARY KEY (`iditens`),
  ADD KEY `fk_eletronico` (`fk_idEletronico`),
  ADD KEY `idEletrodomestico` (`idEletrodomestico`),
  ADD KEY `idRoupa` (`fk_idRoupa`);

--
-- Índices para tabela `tbpedido`
--
ALTER TABLE `tbpedido`
  ADD PRIMARY KEY (`idpedido`),
  ADD KEY `fk_idAgendamento` (`fk_idAgendamento`),
  ADD KEY `idFornecedor` (`fk_idFornecedor`);

--
-- Índices para tabela `tbroupa`
--
ALTER TABLE `tbroupa`
  ADD PRIMARY KEY (`idRoupa`);

--
-- Índices para tabela `tbtelefonefornecedor`
--
ALTER TABLE `tbtelefonefornecedor`
  ADD PRIMARY KEY (`idtelefoneFornecedor`),
  ADD KEY `fk_idFornecedor` (`fk_idFornecedor`);

--
-- Índices para tabela `tbtelefoneusuario`
--
ALTER TABLE `tbtelefoneusuario`
  ADD PRIMARY KEY (`idtelefoneUsuario`);

--
-- Índices para tabela `tbusuario`
--
ALTER TABLE `tbusuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Índices para tabela `tbvenda`
--
ALTER TABLE `tbvenda`
  ADD PRIMARY KEY (`idVenda`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbagendamento`
--
ALTER TABLE `tbagendamento`
  MODIFY `idagendamento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbeletrodomestico`
--
ALTER TABLE `tbeletrodomestico`
  MODIFY `idEletrodomestico` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbeletronico`
--
ALTER TABLE `tbeletronico`
  MODIFY `idEletronico` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbformapagamento`
--
ALTER TABLE `tbformapagamento`
  MODIFY `idformapagamento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbfornecedor`
--
ALTER TABLE `tbfornecedor`
  MODIFY `idFornecedor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbimagemeletrodomestico`
--
ALTER TABLE `tbimagemeletrodomestico`
  MODIFY `idimagemEletrodomestico` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbimagemeletronico`
--
ALTER TABLE `tbimagemeletronico`
  MODIFY `idimagemEletronico` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbimagemfornecedor`
--
ALTER TABLE `tbimagemfornecedor`
  MODIFY `idimagemFornecedor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbimagemroupa`
--
ALTER TABLE `tbimagemroupa`
  MODIFY `idimagemRoupa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbitens`
--
ALTER TABLE `tbitens`
  MODIFY `iditens` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbpedido`
--
ALTER TABLE `tbpedido`
  MODIFY `idpedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbroupa`
--
ALTER TABLE `tbroupa`
  MODIFY `idRoupa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbtelefonefornecedor`
--
ALTER TABLE `tbtelefonefornecedor`
  MODIFY `idtelefoneFornecedor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbtelefoneusuario`
--
ALTER TABLE `tbtelefoneusuario`
  MODIFY `idtelefoneUsuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbusuario`
--
ALTER TABLE `tbusuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbvenda`
--
ALTER TABLE `tbvenda`
  MODIFY `idVenda` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tbformapagamento`
--
ALTER TABLE `tbformapagamento`
  ADD CONSTRAINT `fk_idUsuario` FOREIGN KEY (`fk_idUsuario`) REFERENCES `tbusuario` (`idUsuario`);

--
-- Limitadores para a tabela `tbimagemeletrodomestico`
--
ALTER TABLE `tbimagemeletrodomestico`
  ADD CONSTRAINT `fk_ideletrodomestico` FOREIGN KEY (`fk_idEletrodomestico`) REFERENCES `tbeletrodomestico` (`idEletrodomestico`),
  ADD CONSTRAINT `fk_idimagemeletrodomestico` FOREIGN KEY (`fk_idEletrodomestico`) REFERENCES `tbeletrodomestico` (`idEletrodomestico`);

--
-- Limitadores para a tabela `tbimagemeletronico`
--
ALTER TABLE `tbimagemeletronico`
  ADD CONSTRAINT `fk_idEletronico` FOREIGN KEY (`fk_idEletronico`) REFERENCES `tbeletronico` (`idEletronico`);

--
-- Limitadores para a tabela `tbimagemfornecedor`
--
ALTER TABLE `tbimagemfornecedor`
  ADD CONSTRAINT `fkFornecedor` FOREIGN KEY (`fk_idFornecedor`) REFERENCES `tbfornecedor` (`idFornecedor`);

--
-- Limitadores para a tabela `tbimagemroupa`
--
ALTER TABLE `tbimagemroupa`
  ADD CONSTRAINT `fk_idRoupa` FOREIGN KEY (`fk_idRoupa`) REFERENCES `tbroupa` (`idRoupa`);

--
-- Limitadores para a tabela `tbitens`
--
ALTER TABLE `tbitens`
  ADD CONSTRAINT `fk_eletronico` FOREIGN KEY (`fk_idEletronico`) REFERENCES `tbeletronico` (`idEletronico`),
  ADD CONSTRAINT `idEletrodomestico` FOREIGN KEY (`idEletrodomestico`) REFERENCES `tbeletrodomestico` (`idEletrodomestico`),
  ADD CONSTRAINT `idRoupa` FOREIGN KEY (`fk_idRoupa`) REFERENCES `tbroupa` (`idRoupa`);

--
-- Limitadores para a tabela `tbpedido`
--
ALTER TABLE `tbpedido`
  ADD CONSTRAINT `fk_idAgendamento` FOREIGN KEY (`fk_idAgendamento`) REFERENCES `tbagendamento` (`idagendamento`),
  ADD CONSTRAINT `idFornecedor` FOREIGN KEY (`fk_idFornecedor`) REFERENCES `tbfornecedor` (`idFornecedor`);

--
-- Limitadores para a tabela `tbtelefonefornecedor`
--
ALTER TABLE `tbtelefonefornecedor`
  ADD CONSTRAINT `fk_idFornecedor` FOREIGN KEY (`fk_idFornecedor`) REFERENCES `tbfornecedor` (`idFornecedor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
