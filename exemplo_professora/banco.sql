-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 26-Ago-2020 às 14:46
-- Versão do servidor: 10.3.16-MariaDB
-- versão do PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Banco de dados: `webserver_php`
--
CREATE DATABASE IF NOT EXISTS `webserver_php` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `webserver_php`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidades`
--

CREATE TABLE `cidades` (
  `cod` int(11) NOT NULL,
  `descricao` text COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `cidades`
--

INSERT INTO `cidades` (`cod`, `descricao`, `foto`) VALUES
(1, 'O Rio de Janeiro é uma grande cidade brasileira à beira-mar, famosa pelas praias de Copacabana e Ipanema, pela estátua de 38 metros de altura do Cristo Redentor, no topo do Corcovado, e pelo Pão de Açúcar, um pico de granito com teleféricos até seu cume. A cidade também é conhecida pelas grandes favelas. O empolgante Carnaval, com carros alegóricos, fantasias extravagantes e sambistas, é considerado o maior do mundo.', 'rio.jpg'),
(2, 'O Japão, país insular no Oceano Pacífico, tem cidades densas, palácios imperiais, parques nacionais montanhosos e milhares de santuários e templos. Os trens-bala Shinkansen conectam as principais ilhas: Kyushu (com as praias subtropicais de Okinawa), Honshu (onde ficam Tóquio e a sede do memorial da bomba atômica de Hiroshima) e Hokkaido (famosa como destino para a prática de esqui). Tóquio, a capital, é conhecida por seus arranha-céus e lojas e pela cultura pop.', 'japao.jpg'),
(3, 'Londres, capital da Inglaterra e do Reino Unido, é uma cidade do século 21 com uma história que remonta à era romana. Seu centro abriga as sedes imponentes do Parlamento, a famosa torre do relógio do Big Ben e a Abadia de Westminster, local de coroação dos monarcas britânicos. Do outro lado do rio Tâmisa, a roda gigante London Eye tem vista panorâmica do complexo cultural da margem sul e de toda a cidade.', 'londres.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `db_images`
--

CREATE TABLE `db_images` (
  `id` int(11) NOT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `db_images`
--

INSERT INTO `db_images` (`id`, `url`, `name`) VALUES
(1, 'r', 'r');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `cod` int(11) NOT NULL,
  `nome` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `preco` double NOT NULL,
  `foto` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`cod`, `nome`, `preco`, `foto`) VALUES
(1, 'celular samsung', 1200, 'samsung.jpg'),
(2, 'TV 60POLEGADAS', 5000, 'tv_samsung.jpg'),
(3, 'monitor', 250, 'monitor_samsung.jpg'),
(56, 'NOTEBOOK DELL', 3000, 'dell.jpg'),
(345, 'CELULAR GALAXY 51', 4000, 'GALAXY 51'),
(589, 'armario de inox', 445, 'armario.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `login` varchar(20) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `foto` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`login`, `senha`, `foto`) VALUES
('jose', '123', 'jose.jpg'),
('rosa maria', '123', 'rosinha.jpg'),
('rosa', '123', 'rosinha.jpg'),
('felipe', '123', 'felipe.jpg'),
('marcos', '123', 'marcos.jpg'),
('mauricio', '4562', 'ma.jpg'),
('luis carlos', '456', 'lc.jpg'),
('gabriel', '653028', 'gabriel.jpg'),
('celso', '123', 'celso.jpg'),
('FERNANDO', '456', 'fernando.jpg'),
('rodrigo', '12345', 'rodrigo.jpg'),
('julio', '123', 'julio.jpg'),
('paula', '456', 'paula.jpg'),
('marcelo d', '123', 'marcelo.jpg'),
('luciano', '123', 'luciano.jpg'),
('ednolucio', 'palmeira', 'edno.jpg'),
('jjj', '123', 'jjj.jpg'),
('ppp', '123', 'ppp.jpg'),
('', '', ''),
('fabio', '123', 'fabio.jpg'),
('heleno', '123', 'heleno.jpg'),
('rubens', '123', 'rubens.jpg'),
('ggg', '123', 'heleno.jpg'),
('rubens', '123', 'rubens.jpg'),
('fabricio', '123', 'rubens.jpg'),
('celso', '123', 'celso.jpg'),
('mauricio', '456', 'mauricio.jpg'),
('celso da silva', 'dsd', 'dsd');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab2`
--
-- --------------------------------------------------------

--
-- Estrutura da tabela `tbpedido`
--

CREATE TABLE `tbpedido` (
  `login` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `codprod` int(11) NOT NULL,
  `coditem` int(11) NOT NULL,
  `codvendedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tbpedido`
--

INSERT INTO `tbpedido` (`login`, `codprod`, `coditem`, `codvendedor`) VALUES
('Vini', 1, 5, 1),
('Vini', 2, 6, 2),
('Vini', 2, 11, 1),
('Vini', 2, 12, 2),
('José', 3, 13, 1),
('José', 2, 14, 3),
('Vini', 1, 15, 1),
('Vini', 1, 16, 1),
('Vini', 1, 17, 1),
('Vini', 2, 18, 1),
('Vini', 2, 19, 2),
('Vini', 2, 20, 2),
('Vini', 2, 21, 2),
('Vini', 2, 22, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `te`
--
-- --------------------------------------------------------

--
-- Estrutura da tabela `vendedor`
--

CREATE TABLE `vendedor` (
  `codvendedor` int(11) NOT NULL,
  `nome` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `endereco` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `vendedor`
--

INSERT INTO `vendedor` (`codvendedor`, `nome`, `endereco`) VALUES
(1, 'PAULO', 'RUA JABAQUARA'),
(2, 'MARCOS', 'RUA ANA TERRA'),
(3, 'joao', 'rua 3');

--
-- Índices para tabelas despejadas
--

-- Índices para tabela `cidades`
--
ALTER TABLE `cidades`
  ADD PRIMARY KEY (`cod`);

--
-- Índices para tabela `db_images`
--
ALTER TABLE `db_images`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`cod`);

--
-- Índices para tabela `tbpedido`
--
ALTER TABLE `tbpedido`
  ADD PRIMARY KEY (`coditem`);

--
-- Índices para tabela `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`codvendedor`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `db_images`
--
ALTER TABLE `db_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=590;

--
-- AUTO_INCREMENT de tabela `tbpedido`
--
ALTER TABLE `tbpedido`
  MODIFY `coditem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `vendedor`
--
ALTER TABLE `vendedor`
  MODIFY `codvendedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
