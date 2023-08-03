-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Mar-2023 às 22:55
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `lojas1`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastrar`
--

CREATE TABLE `cadastrar` (
  `cadid` int(11) NOT NULL,
  `cadnom` varchar(100) DEFAULT NULL,
  `cadcpf` varchar(100) DEFAULT NULL,
  `cadtel` varchar(50) DEFAULT NULL,
  `cademail` varchar(50) DEFAULT NULL,
  `cadsenha` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contatos`
--

CREATE TABLE `contatos` (
  `conid` int(11) NOT NULL,
  `connome` varchar(100) DEFAULT NULL,
  `conemail` varchar(100) DEFAULT NULL,
  `conassunto` varchar(50) DEFAULT NULL,
  `conmensagem` varchar(1024) DEFAULT NULL,
  `condata` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `contatos`
--

INSERT INTO `contatos` (`conid`, `connome`, `conemail`, `conassunto`, `conmensagem`, `condata`) VALUES
(13, 'FELIPE RIQUELME', 'feliperiquelme3@gmail.com', 'PEDIDO ERRADO ', 'PEDIDO INCOMPLETO', '2023-03-25 23:14:38');

-- --------------------------------------------------------

--
-- Estrutura da tabela `entrar`
--

CREATE TABLE `entrar` (
  `entid` int(11) NOT NULL,
  `entcpf` varchar(100) DEFAULT NULL,
  `entsenha` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotosprodutos`
--

CREATE TABLE `fotosprodutos` (
  `fotid` int(11) NOT NULL,
  `fotcaminho` varchar(100) DEFAULT NULL,
  `fotproid` int(11) DEFAULT NULL,
  `fotativo` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `fotosprodutos`
--

INSERT INTO `fotosprodutos` (`fotid`, `fotcaminho`, `fotproid`, `fotativo`) VALUES
(1, 'upload/produto-20840987945.jpg', 3, 1),
(2, 'upload/produto-1668167414229.jpg', 1, 1),
(3, 'upload/produto-20840987945.jpn', 2, 1),
(4, 'upload/4.png', 3, 1),
(5, 'upload/produto-25082022-135613.jpg', 3, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoas`
--

CREATE TABLE `pessoas` (
  `pesid` int(11) NOT NULL,
  `pesnome` varchar(100) DEFAULT NULL,
  `pesemail` varchar(100) DEFAULT NULL,
  `pessenha` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `proid` int(11) NOT NULL,
  `pronome` varchar(50) DEFAULT NULL,
  `prodescricao` varchar(1024) DEFAULT NULL,
  `provalor` decimal(18,2) DEFAULT NULL,
  `proparcelamento` decimal(4,0) DEFAULT NULL,
  `profoto` varchar(100) DEFAULT NULL,
  `proativo` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`proid`, `pronome`, `prodescricao`, `provalor`, `proparcelamento`, `profoto`, `proativo`) VALUES
(1, 'Bloco Cerâmico de Vedação 11,5x14x24cm Bloquinho', 'Este bloco possui furos na horizontal e sua aplicação é destinada para alvenarias externas e internas que não possuem a função de resistir a outras cargas verticais, além do peso da própria alvenaria da qual faz parte, ou seja, este bloco não possui função estrutural', '1.00', '10', 'upload/produto-1668167414229.jpg', 1),
(2, 'Calha Ganvanizada 10cm', '-Fácil instalação, pois não necessita a fabricação de formas de madeira para sua instalação, agilizando a obra;\r\n-Superfície lisa de fácil limpeza e manutenção;\r\n-Tampas e emenda de fácil encaixa.\r\n- Ótima Resistência;\r\n- Antimofo;\r\n- Conteúdo: 3,6 Litros', '63.00', '10', 'upload/produto-25742209528.jpg', 1),
(3, 'Tinta Acrilica Coralar Coral - Azul Arpoador Fosco', '\r\nEspecificações Técnicas: - Fabricante: Coral; - Cor: Azul Arpoador Fosco; - Acabamento: Fosco; - Para Áreas Internas em Alvenaria; - Baixa Emissão de CO²; - Rendimento por demão: 50m²; - Ótima Resistência; - Antimofo; - Conteúdo: 3,6 Litros', '50.00', '10', 'upload/produto-20840987945.jpg', 1),
(4, 'Argamassa ACIII Interno e Externo Cinza 20kg Axton', 'A Argamassa ACIII Axton é multiuso e possui alta aderência. Indicada para assentamento de pisos e revestimentos cerâmicos, porcelanatos, pedras naturais, pastilhas em fachadas, piscinas, saunas em áreas internas e externas com alto ou baixo tráfego.', '50.00', '10', 'upload/produto-123454321.jpg', 1),
(5, 'Martelo de Unha 29mm', 'Martelo Unha 29mm\', \'Martelo de unha\r\nCabeça forjada e temperada em aço carbono especial\r\nAcabamento jateado e cabeça envernizada\r\nCabo em madeira envernizada fixado com epóxi\r\nMedida: 29mm', '56.00', '10', 'upload\\produto-234854322.jpg', 1),
(6, 'Prego Ganvanizado', 'Modelo de prego com ou sem cabeça em acabamento galvanizado. Ideal para utilização em móveis especiais e fixações externas. Possui alta resistência à corrosão, maior durabilidade e segurança na fixação e proporciona melhor acabamento estético.', '54.00', '10', 'upload\\produto-237459867.jpg', 1),
(7, 'Barra de Ferro', 'MEDIDA: 15,8 X 1.000 MM\r\n\r\nAnuncio referente a 1 metro de barra de aço com diametro de 15,8 mm ou 5/8 de polegada.', '150.00', '10', 'upload\\produto-457324568.jpg', 1),
(8, ' Vaso Sanitário ', 'Kit com Caixa Acoplada 3/6L Saída Vertical Fast Branco Deca', '550.00', '10', 'upload\\produto-348569733.jpg', 1),
(9, 'Chuveiro Eletrônico Optima 7700w 220v Hydra', '- Potencia: 7700w\r\n- Voltagem: 220v\r\n- Cor: Branca\r\n- Temperatura: Gradual\r\n- Material: Termoplastico (Isolante termico e eletrico)\r\n- Marca: Hydra-Corona', '156.00', '10', 'upload\\produto-238654311.jpg', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cadastrar`
--
ALTER TABLE `cadastrar`
  ADD PRIMARY KEY (`cadid`);

--
-- Índices para tabela `contatos`
--
ALTER TABLE `contatos`
  ADD PRIMARY KEY (`conid`);

--
-- Índices para tabela `entrar`
--
ALTER TABLE `entrar`
  ADD PRIMARY KEY (`entid`);

--
-- Índices para tabela `fotosprodutos`
--
ALTER TABLE `fotosprodutos`
  ADD PRIMARY KEY (`fotid`),
  ADD KEY `fkfotproid` (`fotproid`);

--
-- Índices para tabela `pessoas`
--
ALTER TABLE `pessoas`
  ADD PRIMARY KEY (`pesid`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`proid`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastrar`
--
ALTER TABLE `cadastrar`
  MODIFY `cadid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `contatos`
--
ALTER TABLE `contatos`
  MODIFY `conid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `entrar`
--
ALTER TABLE `entrar`
  MODIFY `entid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `fotosprodutos`
--
ALTER TABLE `fotosprodutos`
  MODIFY `fotid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `pessoas`
--
ALTER TABLE `pessoas`
  MODIFY `pesid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `proid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `entrar`
--
ALTER TABLE `entrar`
  ADD CONSTRAINT `entrar_ibfk_1` FOREIGN KEY (`entid`) REFERENCES `cadastrar` (`cadid`);

--
-- Limitadores para a tabela `fotosprodutos`
--
ALTER TABLE `fotosprodutos`
  ADD CONSTRAINT `fkfotproid` FOREIGN KEY (`fotproid`) REFERENCES `produtos` (`proid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
