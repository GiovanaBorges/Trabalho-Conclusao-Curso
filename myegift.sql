-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Nov-2020 às 22:10
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
-- Banco de dados: `myegift`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbacessorio`
--

CREATE TABLE `tbacessorio` (
  `idAcessorio` int(11) NOT NULL,
  `fk_idMarcaAcessorio` int(11) NOT NULL,
  `fk_idQuantAcessorio` int(11) NOT NULL,
  `fk_idPrecoAcessorio` int(11) NOT NULL,
  `fk_idObjeto` int(11) NOT NULL,
  `fk_idimagemAcessorio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbaperitivo`
--

CREATE TABLE `tbaperitivo` (
  `idAperitivo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbbebida`
--

CREATE TABLE `tbbebida` (
  `idBebida` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcliente`
--

CREATE TABLE `tbcliente` (
  `idCliente` int(11) NOT NULL,
  `nomeCliente` varchar(35) NOT NULL,
  `rgCliente` varchar(17) NOT NULL,
  `emailCliente` varchar(30) NOT NULL,
  `cpfCliente` varchar(15) NOT NULL,
  `senhaCliente` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbdoce`
--

CREATE TABLE `tbdoce` (
  `idDoce` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbenderecocliente`
--

CREATE TABLE `tbenderecocliente` (
  `idEnderecoCliente` int(11) NOT NULL,
  `estadoCliente` varchar(3) NOT NULL,
  `cidadeCliente` varchar(35) NOT NULL,
  `bairroCliente` varchar(35) NOT NULL,
  `logradouroCliente` varchar(100) NOT NULL,
  `cepCliente` varchar(10) NOT NULL,
  `nmrCasaCliente` int(11) NOT NULL,
  `fk_idCliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbenderecofornecedor`
--

CREATE TABLE `tbenderecofornecedor` (
  `idEnderecoFornecedor` int(11) NOT NULL,
  `estadoFornecedor` varchar(35) NOT NULL,
  `cidadeFornecedor` varchar(35) NOT NULL,
  `bairroFornecedor` varchar(35) NOT NULL,
  `logradouroFornecedor` varchar(120) NOT NULL,
  `cepFornecedor` varchar(25) NOT NULL,
  `nmrFornecedor` varchar(35) NOT NULL,
  `fk_idCliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbentrega`
--

CREATE TABLE `tbentrega` (
  `idEntrega` int(11) NOT NULL,
  `dataEntrega` date NOT NULL,
  `bilhete` varchar(250) NOT NULL,
  `cor_bilhete` varchar(15) NOT NULL,
  `fk_iditens` int(11) NOT NULL,
  `fk_idformapagamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbformapagamentocliente`
--

CREATE TABLE `tbformapagamentocliente` (
  `idformapagamento` int(11) NOT NULL,
  `formapagamento` varchar(35) NOT NULL,
  `fk_idCliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbfornecedor`
--

CREATE TABLE `tbfornecedor` (
  `idFornecedor` int(11) NOT NULL,
  `nomeFornecedor` varchar(35) NOT NULL,
  `emailFornecedor` varchar(35) NOT NULL,
  `senhaFornecedor` varchar(35) NOT NULL,
  `cpfFornecedor` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbimagemacessorio`
--

CREATE TABLE `tbimagemacessorio` (
  `idimagemAcessorio` int(11) NOT NULL,
  `nome_imagem` varchar(25) NOT NULL,
  `tamanho_imagem` varchar(25) NOT NULL,
  `tipo_imagem` varchar(25) NOT NULL,
  `imagem` varbinary(280) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbimagemdoce`
--

CREATE TABLE `tbimagemdoce` (
  `idimagemDoce` int(11) NOT NULL,
  `nome_imagem` varchar(25) NOT NULL,
  `tamanho_imagem` varchar(25) NOT NULL,
  `tipo_imagem` varchar(25) NOT NULL,
  `imagem` varbinary(280) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbimagemrefri`
--

CREATE TABLE `tbimagemrefri` (
  `idimagemRefri` int(11) NOT NULL,
  `nome_imagem` varchar(25) NOT NULL,
  `tamanho_imagem` varchar(25) NOT NULL,
  `tipo_imagem` varchar(25) NOT NULL,
  `imagem` varbinary(280) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbimagemsalgado`
--

CREATE TABLE `tbimagemsalgado` (
  `idimagemSalgado` int(11) NOT NULL,
  `nome_imagem` varchar(25) NOT NULL,
  `tamanho_imagem` varchar(25) NOT NULL,
  `tipo_imagem` varchar(25) NOT NULL,
  `imagem` varbinary(280) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbitens`
--

CREATE TABLE `tbitens` (
  `iditens` int(11) NOT NULL,
  `valorTotal` decimal(10,0) NOT NULL,
  `quant_Produto` int(11) NOT NULL,
  `fk_idProduto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbmarcaacessorio`
--

CREATE TABLE `tbmarcaacessorio` (
  `idMarcaAcessorio` int(11) NOT NULL,
  `nomeMarcaAcessorio` varchar(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbmarcadoce`
--

CREATE TABLE `tbmarcadoce` (
  `idMarcaDoce` int(11) NOT NULL,
  `nomeMarcaDoce` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbmarcarefri`
--

CREATE TABLE `tbmarcarefri` (
  `idMarcaRefri` int(11) NOT NULL,
  `nomeMarcaRefri` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbmarcasalgado`
--

CREATE TABLE `tbmarcasalgado` (
  `idMarcaSalgado` int(11) NOT NULL,
  `nomeMarcaSalgado` varchar(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbmarcasuco`
--

CREATE TABLE `tbmarcasuco` (
  `idMarcaSuco` int(11) NOT NULL,
  `nomeMarcaSuco` varchar(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbobjeto`
--

CREATE TABLE `tbobjeto` (
  `idObjeto` int(11) NOT NULL,
  `fk_idAcessorio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbpedido`
--

CREATE TABLE `tbpedido` (
  `idPedido` int(11) NOT NULL,
  `dataEntrega` date NOT NULL,
  `Quantidade_pedidos` int(11) NOT NULL,
  `media_pedidos` int(11) NOT NULL,
  `fk_idVenda` int(11) NOT NULL,
  `fk_idFornecedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbprecoacessorio`
--

CREATE TABLE `tbprecoacessorio` (
  `idPrecoAcessorio` int(11) NOT NULL,
  `precoAcessorio` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbprecodoce`
--

CREATE TABLE `tbprecodoce` (
  `idPrecoDoce` int(11) NOT NULL,
  `PrecoDoce` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbprecorefri`
--

CREATE TABLE `tbprecorefri` (
  `idPrecoRefri` int(11) NOT NULL,
  `PrecoRefri` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbprecosalgado`
--

CREATE TABLE `tbprecosalgado` (
  `idPrecoSalgado` int(11) NOT NULL,
  `PrecoSalgado` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbprecosuco`
--

CREATE TABLE `tbprecosuco` (
  `idPrecoSuco` int(11) NOT NULL,
  `PrecoSuco` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbproduto`
--

CREATE TABLE `tbproduto` (
  `idProduto` int(11) NOT NULL,
  `fk_idBebida` int(11) NOT NULL,
  `fk_idAperitivo` int(11) NOT NULL,
  `fk_idObjeto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbquantacessorio`
--

CREATE TABLE `tbquantacessorio` (
  `idQuantAcessorio` int(11) NOT NULL,
  `QuantAcessorio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbquantdoce`
--

CREATE TABLE `tbquantdoce` (
  `idQuantDoce` int(11) NOT NULL,
  `QuantDoce` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbquantrefri`
--

CREATE TABLE `tbquantrefri` (
  `idQuantRefri` int(11) NOT NULL,
  `QuantRefri` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbquantsalgado`
--

CREATE TABLE `tbquantsalgado` (
  `idQuantSalgado` int(11) NOT NULL,
  `QuantSalgado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbquantsuco`
--

CREATE TABLE `tbquantsuco` (
  `idQuantSuco` int(11) NOT NULL,
  `QuantSuco` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbrefri`
--

CREATE TABLE `tbrefri` (
  `idRefri` int(11) NOT NULL,
  `fk_idPrecoRefri` int(11) NOT NULL,
  `fk_idQuantRefri` int(11) NOT NULL,
  `fk_idMarcaRefri` int(11) NOT NULL,
  `fk_idimagemRefri` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbsalgado`
--

CREATE TABLE `tbsalgado` (
  `idSalgado` int(11) NOT NULL,
  `fk_idMarcaSalgado` int(11) NOT NULL,
  `fk_idPrecoSalgado` int(11) NOT NULL,
  `fk_idQuantSalgado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbsuco`
--

CREATE TABLE `tbsuco` (
  `idSuco` int(11) NOT NULL,
  `fk_idPrecoSuco` int(11) NOT NULL,
  `fk_idQuantSuco` int(11) NOT NULL,
  `fk_idMarcaSuco` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbtelefonecliente`
--

CREATE TABLE `tbtelefonecliente` (
  `idTelefoneCliente` int(11) NOT NULL,
  `numeroTelefone` varchar(25) NOT NULL,
  `fk_idCliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbtelefonefornecedor`
--

CREATE TABLE `tbtelefonefornecedor` (
  `idTelefoneFornecedor` int(11) NOT NULL,
  `numeroTelefoneFornecedor` varchar(25) NOT NULL,
  `fk_idFornecedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbvenda`
--

CREATE TABLE `tbvenda` (
  `idVenda` int(11) NOT NULL,
  `dataVenda` date NOT NULL,
  `valorTotalVenda` decimal(10,0) NOT NULL,
  `fk_idEntrega` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbacessorio`
--
ALTER TABLE `tbacessorio`
  ADD PRIMARY KEY (`idAcessorio`),
  ADD KEY `fk_idPrecoAcessorio` (`fk_idPrecoAcessorio`),
  ADD KEY `fk_idQuantAcessorio` (`fk_idQuantAcessorio`),
  ADD KEY `fk_idMarcaAcessorio` (`fk_idMarcaAcessorio`),
  ADD KEY `fk_idimagemAcessorio` (`fk_idimagemAcessorio`);

--
-- Índices para tabela `tbaperitivo`
--
ALTER TABLE `tbaperitivo`
  ADD PRIMARY KEY (`idAperitivo`);

--
-- Índices para tabela `tbbebida`
--
ALTER TABLE `tbbebida`
  ADD PRIMARY KEY (`idBebida`);

--
-- Índices para tabela `tbcliente`
--
ALTER TABLE `tbcliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Índices para tabela `tbdoce`
--
ALTER TABLE `tbdoce`
  ADD PRIMARY KEY (`idDoce`);

--
-- Índices para tabela `tbenderecocliente`
--
ALTER TABLE `tbenderecocliente`
  ADD PRIMARY KEY (`idEnderecoCliente`),
  ADD KEY `idCliente_fk` (`fk_idCliente`);

--
-- Índices para tabela `tbenderecofornecedor`
--
ALTER TABLE `tbenderecofornecedor`
  ADD PRIMARY KEY (`idEnderecoFornecedor`),
  ADD KEY `fk_Fornecedor` (`fk_idCliente`);

--
-- Índices para tabela `tbentrega`
--
ALTER TABLE `tbentrega`
  ADD PRIMARY KEY (`idEntrega`),
  ADD KEY `fk_iditens` (`fk_iditens`);

--
-- Índices para tabela `tbformapagamentocliente`
--
ALTER TABLE `tbformapagamentocliente`
  ADD PRIMARY KEY (`idformapagamento`);

--
-- Índices para tabela `tbfornecedor`
--
ALTER TABLE `tbfornecedor`
  ADD PRIMARY KEY (`idFornecedor`);

--
-- Índices para tabela `tbimagemacessorio`
--
ALTER TABLE `tbimagemacessorio`
  ADD PRIMARY KEY (`idimagemAcessorio`);

--
-- Índices para tabela `tbimagemdoce`
--
ALTER TABLE `tbimagemdoce`
  ADD PRIMARY KEY (`idimagemDoce`);

--
-- Índices para tabela `tbimagemrefri`
--
ALTER TABLE `tbimagemrefri`
  ADD PRIMARY KEY (`idimagemRefri`);

--
-- Índices para tabela `tbimagemsalgado`
--
ALTER TABLE `tbimagemsalgado`
  ADD PRIMARY KEY (`idimagemSalgado`);

--
-- Índices para tabela `tbitens`
--
ALTER TABLE `tbitens`
  ADD PRIMARY KEY (`iditens`),
  ADD KEY `fk_idProduto` (`fk_idProduto`);

--
-- Índices para tabela `tbmarcaacessorio`
--
ALTER TABLE `tbmarcaacessorio`
  ADD PRIMARY KEY (`idMarcaAcessorio`);

--
-- Índices para tabela `tbmarcadoce`
--
ALTER TABLE `tbmarcadoce`
  ADD PRIMARY KEY (`idMarcaDoce`);

--
-- Índices para tabela `tbmarcarefri`
--
ALTER TABLE `tbmarcarefri`
  ADD PRIMARY KEY (`idMarcaRefri`);

--
-- Índices para tabela `tbmarcasalgado`
--
ALTER TABLE `tbmarcasalgado`
  ADD PRIMARY KEY (`idMarcaSalgado`);

--
-- Índices para tabela `tbmarcasuco`
--
ALTER TABLE `tbmarcasuco`
  ADD PRIMARY KEY (`idMarcaSuco`);

--
-- Índices para tabela `tbobjeto`
--
ALTER TABLE `tbobjeto`
  ADD PRIMARY KEY (`idObjeto`),
  ADD KEY `fk_Acessorio` (`fk_idAcessorio`);

--
-- Índices para tabela `tbpedido`
--
ALTER TABLE `tbpedido`
  ADD PRIMARY KEY (`idPedido`),
  ADD KEY `fk_idFornecedor` (`fk_idFornecedor`),
  ADD KEY `fk_idVenda` (`fk_idVenda`);

--
-- Índices para tabela `tbprecoacessorio`
--
ALTER TABLE `tbprecoacessorio`
  ADD PRIMARY KEY (`idPrecoAcessorio`);

--
-- Índices para tabela `tbprecodoce`
--
ALTER TABLE `tbprecodoce`
  ADD PRIMARY KEY (`idPrecoDoce`);

--
-- Índices para tabela `tbprecorefri`
--
ALTER TABLE `tbprecorefri`
  ADD PRIMARY KEY (`idPrecoRefri`);

--
-- Índices para tabela `tbprecosalgado`
--
ALTER TABLE `tbprecosalgado`
  ADD PRIMARY KEY (`idPrecoSalgado`);

--
-- Índices para tabela `tbprecosuco`
--
ALTER TABLE `tbprecosuco`
  ADD PRIMARY KEY (`idPrecoSuco`);

--
-- Índices para tabela `tbproduto`
--
ALTER TABLE `tbproduto`
  ADD PRIMARY KEY (`idProduto`),
  ADD KEY `fk_idBebida` (`fk_idBebida`),
  ADD KEY `fk_idAperitivo` (`fk_idAperitivo`),
  ADD KEY `fk_idObjeto` (`fk_idObjeto`);

--
-- Índices para tabela `tbquantacessorio`
--
ALTER TABLE `tbquantacessorio`
  ADD PRIMARY KEY (`idQuantAcessorio`);

--
-- Índices para tabela `tbquantdoce`
--
ALTER TABLE `tbquantdoce`
  ADD PRIMARY KEY (`idQuantDoce`);

--
-- Índices para tabela `tbquantrefri`
--
ALTER TABLE `tbquantrefri`
  ADD PRIMARY KEY (`idQuantRefri`);

--
-- Índices para tabela `tbquantsalgado`
--
ALTER TABLE `tbquantsalgado`
  ADD PRIMARY KEY (`idQuantSalgado`);

--
-- Índices para tabela `tbquantsuco`
--
ALTER TABLE `tbquantsuco`
  ADD PRIMARY KEY (`idQuantSuco`);

--
-- Índices para tabela `tbrefri`
--
ALTER TABLE `tbrefri`
  ADD PRIMARY KEY (`idRefri`),
  ADD KEY `fk_idPrecoRefri` (`fk_idPrecoRefri`),
  ADD KEY `fk_idQuantRefri` (`fk_idQuantRefri`),
  ADD KEY `fk_idMarcaRefri` (`fk_idMarcaRefri`),
  ADD KEY `fk_idimagemRefri` (`fk_idimagemRefri`);

--
-- Índices para tabela `tbsalgado`
--
ALTER TABLE `tbsalgado`
  ADD PRIMARY KEY (`idSalgado`),
  ADD KEY `fk_idMarcaSalgado` (`fk_idMarcaSalgado`),
  ADD KEY `fk_idQuantSalgado` (`fk_idQuantSalgado`),
  ADD KEY `fk_idPrecoSalgado` (`fk_idPrecoSalgado`);

--
-- Índices para tabela `tbsuco`
--
ALTER TABLE `tbsuco`
  ADD PRIMARY KEY (`idSuco`),
  ADD KEY `fk_idMarcaSuco` (`fk_idMarcaSuco`),
  ADD KEY `fk_idPrecoSuco` (`fk_idPrecoSuco`),
  ADD KEY `fk_idQuantSuco` (`fk_idQuantSuco`);

--
-- Índices para tabela `tbtelefonecliente`
--
ALTER TABLE `tbtelefonecliente`
  ADD PRIMARY KEY (`idTelefoneCliente`),
  ADD KEY `fk_idCliente` (`fk_idCliente`);

--
-- Índices para tabela `tbtelefonefornecedor`
--
ALTER TABLE `tbtelefonefornecedor`
  ADD PRIMARY KEY (`idTelefoneFornecedor`),
  ADD KEY `fornecedor_fk` (`fk_idFornecedor`);

--
-- Índices para tabela `tbvenda`
--
ALTER TABLE `tbvenda`
  ADD PRIMARY KEY (`idVenda`),
  ADD KEY `fk_idEntrega` (`fk_idEntrega`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbacessorio`
--
ALTER TABLE `tbacessorio`
  MODIFY `idAcessorio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbaperitivo`
--
ALTER TABLE `tbaperitivo`
  MODIFY `idAperitivo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbbebida`
--
ALTER TABLE `tbbebida`
  MODIFY `idBebida` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbcliente`
--
ALTER TABLE `tbcliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbdoce`
--
ALTER TABLE `tbdoce`
  MODIFY `idDoce` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbenderecocliente`
--
ALTER TABLE `tbenderecocliente`
  MODIFY `idEnderecoCliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbenderecofornecedor`
--
ALTER TABLE `tbenderecofornecedor`
  MODIFY `idEnderecoFornecedor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbentrega`
--
ALTER TABLE `tbentrega`
  MODIFY `idEntrega` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbformapagamentocliente`
--
ALTER TABLE `tbformapagamentocliente`
  MODIFY `idformapagamento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbfornecedor`
--
ALTER TABLE `tbfornecedor`
  MODIFY `idFornecedor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbimagemacessorio`
--
ALTER TABLE `tbimagemacessorio`
  MODIFY `idimagemAcessorio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbimagemdoce`
--
ALTER TABLE `tbimagemdoce`
  MODIFY `idimagemDoce` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbimagemrefri`
--
ALTER TABLE `tbimagemrefri`
  MODIFY `idimagemRefri` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbimagemsalgado`
--
ALTER TABLE `tbimagemsalgado`
  MODIFY `idimagemSalgado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbitens`
--
ALTER TABLE `tbitens`
  MODIFY `iditens` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbmarcaacessorio`
--
ALTER TABLE `tbmarcaacessorio`
  MODIFY `idMarcaAcessorio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbmarcadoce`
--
ALTER TABLE `tbmarcadoce`
  MODIFY `idMarcaDoce` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbmarcarefri`
--
ALTER TABLE `tbmarcarefri`
  MODIFY `idMarcaRefri` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbmarcasalgado`
--
ALTER TABLE `tbmarcasalgado`
  MODIFY `idMarcaSalgado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbmarcasuco`
--
ALTER TABLE `tbmarcasuco`
  MODIFY `idMarcaSuco` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbobjeto`
--
ALTER TABLE `tbobjeto`
  MODIFY `idObjeto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbpedido`
--
ALTER TABLE `tbpedido`
  MODIFY `idPedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbprecoacessorio`
--
ALTER TABLE `tbprecoacessorio`
  MODIFY `idPrecoAcessorio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbprecodoce`
--
ALTER TABLE `tbprecodoce`
  MODIFY `idPrecoDoce` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbprecorefri`
--
ALTER TABLE `tbprecorefri`
  MODIFY `idPrecoRefri` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbprecosalgado`
--
ALTER TABLE `tbprecosalgado`
  MODIFY `idPrecoSalgado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbprecosuco`
--
ALTER TABLE `tbprecosuco`
  MODIFY `idPrecoSuco` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbproduto`
--
ALTER TABLE `tbproduto`
  MODIFY `idProduto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbquantacessorio`
--
ALTER TABLE `tbquantacessorio`
  MODIFY `idQuantAcessorio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbquantdoce`
--
ALTER TABLE `tbquantdoce`
  MODIFY `idQuantDoce` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbquantrefri`
--
ALTER TABLE `tbquantrefri`
  MODIFY `idQuantRefri` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbquantsalgado`
--
ALTER TABLE `tbquantsalgado`
  MODIFY `idQuantSalgado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbquantsuco`
--
ALTER TABLE `tbquantsuco`
  MODIFY `idQuantSuco` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbrefri`
--
ALTER TABLE `tbrefri`
  MODIFY `idRefri` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbsalgado`
--
ALTER TABLE `tbsalgado`
  MODIFY `idSalgado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbsuco`
--
ALTER TABLE `tbsuco`
  MODIFY `idSuco` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbtelefonecliente`
--
ALTER TABLE `tbtelefonecliente`
  MODIFY `idTelefoneCliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbtelefonefornecedor`
--
ALTER TABLE `tbtelefonefornecedor`
  MODIFY `idTelefoneFornecedor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbvenda`
--
ALTER TABLE `tbvenda`
  MODIFY `idVenda` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tbacessorio`
--
ALTER TABLE `tbacessorio`
  ADD CONSTRAINT `fk_idMarcaAcessorio` FOREIGN KEY (`fk_idMarcaAcessorio`) REFERENCES `tbmarcaacessorio` (`idMarcaAcessorio`),
  ADD CONSTRAINT `fk_idPrecoAcessorio` FOREIGN KEY (`fk_idPrecoAcessorio`) REFERENCES `tbprecoacessorio` (`idPrecoAcessorio`),
  ADD CONSTRAINT `fk_idQuantAcessorio` FOREIGN KEY (`fk_idQuantAcessorio`) REFERENCES `tbquantacessorio` (`idQuantAcessorio`),
  ADD CONSTRAINT `fk_idimagemAcessorio` FOREIGN KEY (`fk_idimagemAcessorio`) REFERENCES `tbimagemacessorio` (`idimagemAcessorio`);

--
-- Limitadores para a tabela `tbenderecocliente`
--
ALTER TABLE `tbenderecocliente`
  ADD CONSTRAINT `idCliente_fk` FOREIGN KEY (`fk_idCliente`) REFERENCES `tbcliente` (`idCliente`);

--
-- Limitadores para a tabela `tbenderecofornecedor`
--
ALTER TABLE `tbenderecofornecedor`
  ADD CONSTRAINT `fk_Fornecedor` FOREIGN KEY (`fk_idCliente`) REFERENCES `tbfornecedor` (`idFornecedor`);

--
-- Limitadores para a tabela `tbentrega`
--
ALTER TABLE `tbentrega`
  ADD CONSTRAINT `fk_iditens` FOREIGN KEY (`fk_iditens`) REFERENCES `tbitens` (`iditens`);

--
-- Limitadores para a tabela `tbitens`
--
ALTER TABLE `tbitens`
  ADD CONSTRAINT `fk_idProduto` FOREIGN KEY (`fk_idProduto`) REFERENCES `tbproduto` (`idProduto`);

--
-- Limitadores para a tabela `tbobjeto`
--
ALTER TABLE `tbobjeto`
  ADD CONSTRAINT `fk_Acessorio` FOREIGN KEY (`fk_idAcessorio`) REFERENCES `tbacessorio` (`idAcessorio`);

--
-- Limitadores para a tabela `tbpedido`
--
ALTER TABLE `tbpedido`
  ADD CONSTRAINT `fk_idFornecedor` FOREIGN KEY (`fk_idFornecedor`) REFERENCES `tbfornecedor` (`idFornecedor`),
  ADD CONSTRAINT `fk_idVenda` FOREIGN KEY (`fk_idVenda`) REFERENCES `tbvenda` (`idVenda`);

--
-- Limitadores para a tabela `tbproduto`
--
ALTER TABLE `tbproduto`
  ADD CONSTRAINT `fk_idAperitivo` FOREIGN KEY (`fk_idAperitivo`) REFERENCES `tbaperitivo` (`idAperitivo`),
  ADD CONSTRAINT `fk_idBebida` FOREIGN KEY (`fk_idBebida`) REFERENCES `tbbebida` (`idBebida`),
  ADD CONSTRAINT `fk_idObjeto` FOREIGN KEY (`fk_idObjeto`) REFERENCES `tbobjeto` (`idObjeto`);

--
-- Limitadores para a tabela `tbrefri`
--
ALTER TABLE `tbrefri`
  ADD CONSTRAINT `fk_idMarcaRefri` FOREIGN KEY (`fk_idMarcaRefri`) REFERENCES `tbmarcarefri` (`idMarcaRefri`),
  ADD CONSTRAINT `fk_idPrecoRefri` FOREIGN KEY (`fk_idPrecoRefri`) REFERENCES `tbprecorefri` (`idPrecoRefri`),
  ADD CONSTRAINT `fk_idQuantRefri` FOREIGN KEY (`fk_idQuantRefri`) REFERENCES `tbquantrefri` (`idQuantRefri`),
  ADD CONSTRAINT `fk_idimagemRefri` FOREIGN KEY (`fk_idimagemRefri`) REFERENCES `tbimagemrefri` (`idimagemRefri`);

--
-- Limitadores para a tabela `tbsalgado`
--
ALTER TABLE `tbsalgado`
  ADD CONSTRAINT `fk_idMarcaSalgado` FOREIGN KEY (`fk_idMarcaSalgado`) REFERENCES `tbmarcasalgado` (`idMarcaSalgado`),
  ADD CONSTRAINT `fk_idPrecoSalgado` FOREIGN KEY (`fk_idPrecoSalgado`) REFERENCES `tbprecosalgado` (`idPrecoSalgado`),
  ADD CONSTRAINT `fk_idQuantSalgado` FOREIGN KEY (`fk_idQuantSalgado`) REFERENCES `tbquantsalgado` (`idQuantSalgado`);

--
-- Limitadores para a tabela `tbsuco`
--
ALTER TABLE `tbsuco`
  ADD CONSTRAINT `fk_idMarcaSuco` FOREIGN KEY (`fk_idMarcaSuco`) REFERENCES `tbmarcasuco` (`idMarcaSuco`),
  ADD CONSTRAINT `fk_idPrecoSuco` FOREIGN KEY (`fk_idPrecoSuco`) REFERENCES `tbprecosuco` (`idPrecoSuco`),
  ADD CONSTRAINT `fk_idQuantSuco` FOREIGN KEY (`fk_idQuantSuco`) REFERENCES `tbquantsuco` (`idQuantSuco`);

--
-- Limitadores para a tabela `tbtelefonecliente`
--
ALTER TABLE `tbtelefonecliente`
  ADD CONSTRAINT `fk_idCliente` FOREIGN KEY (`fk_idCliente`) REFERENCES `tbcliente` (`idCliente`);

--
-- Limitadores para a tabela `tbtelefonefornecedor`
--
ALTER TABLE `tbtelefonefornecedor`
  ADD CONSTRAINT `fornecedor_fk` FOREIGN KEY (`fk_idFornecedor`) REFERENCES `tbfornecedor` (`idFornecedor`);

--
-- Limitadores para a tabela `tbvenda`
--
ALTER TABLE `tbvenda`
  ADD CONSTRAINT `fk_idEntrega` FOREIGN KEY (`fk_idEntrega`) REFERENCES `tbentrega` (`idEntrega`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
