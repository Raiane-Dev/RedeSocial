-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07-Nov-2021 às 23:50
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistema`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `from` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `chat`
--

INSERT INTO `chat` (`id`, `message`, `from`, `created`) VALUES
(1, 'a', 'ola', '2021-09-04 15:08:15'),
(2, 'Ola raissa', 'ola', '2021-09-04 15:09:28'),
(3, 'Tudo bem?', 'Raissa', '2021-09-04 15:09:37'),
(4, 'ola\n', 'oal', '2021-09-04 15:19:45'),
(5, 'a\n', 'a', '2021-09-04 15:20:32');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.agenda`
--

CREATE TABLE `tb_admin.agenda` (
  `id` int(11) NOT NULL,
  `tarefa` varchar(255) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.agenda`
--

INSERT INTO `tb_admin.agenda` (`id`, `tarefa`, `data`) VALUES
(1, 'Dar comida para o Nico', '2021-09-05'),
(2, 'Ir para a Academia', '2021-09-06'),
(3, 'Fazer curso', '2021-09-04'),
(4, 'Tarefa', '2017-09-01'),
(5, '', '2017-09-01'),
(6, 'Tarefa', '2021-09-06'),
(7, 'Ir para academia novamente', '2021-09-06'),
(8, '', '2021-09-06'),
(9, 'Ola', '2021-09-01'),
(10, 'Tarefa dia 8', '2021-09-08'),
(11, 'tAREFA DOIS', '2021-09-06'),
(12, 'Ir para academia novamente', '2021-09-27'),
(13, 'Aula', '2021-09-30'),
(14, 'Ir para academia novamente', '2021-09-11'),
(15, 'Register', '2021-11-16'),
(16, 'Register', '2021-11-16'),
(17, 'rEGISTRAR NOVO USUÁRIO.', '2021-11-07'),
(18, 'rEGISTRAR NOVO USUÁRIO.', '2021-11-07'),
(19, 'LEVAR O DOG PARA PASSEAR', '2021-11-07');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.alunos`
--

CREATE TABLE `tb_admin.alunos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.alunos`
--

INSERT INTO `tb_admin.alunos` (`id`, `nome`, `email`, `senha`) VALUES
(1, 'Aluno', 'aluno@gmail.com', 'aluno');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.aulas`
--

CREATE TABLE `tb_admin.aulas` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `modulo_id` int(11) NOT NULL,
  `link_aula` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.aulas`
--

INSERT INTO `tb_admin.aulas` (`id`, `nome`, `modulo_id`, `link_aula`) VALUES
(2, 'Introdução', 2, 'https://www.youtube.com/embed/oKYW5gKeOWc'),
(3, 'Instalando e Desenvolvendo Softwares', 2, 'https://www.youtube.com/embed/19bn17jNjbs'),
(4, 'Hello Word nos projetos', 2, 'https://www.youtube.com/embed/lun_lTE30E8'),
(5, 'Criando Website Simples', 2, 'https://www.youtube.com/embed/0k23DVv_xsA'),
(6, 'Adicionando código javascript na web', 3, 'https://www.youtube.com/embed/n9v-2xF54HM');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.chat`
--

CREATE TABLE `tb_admin.chat` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `mensagem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.chat`
--

INSERT INTO `tb_admin.chat` (`id`, `id_user`, `mensagem`) VALUES
(1, 1, 'Olá pessoal, tudo certo?'),
(2, 1, 'ola\r\n'),
(3, 1, 'Olá'),
(4, 1, 'Olá'),
(5, 1, 'Olá'),
(6, 1, 'Olá\r\n'),
(7, 1, 'Enviar'),
(8, 1, 'ola'),
(9, 1, 'Olá\r\n'),
(10, 1, ''),
(11, 1, ''),
(12, 1, ''),
(13, 1, ''),
(14, 1, ''),
(15, 1, 'a\r\n'),
(16, 1, 'ola\r\n'),
(17, 1, 'Hello\r\n'),
(18, 1, 'Olá\r\n'),
(19, 1, 'Olá'),
(20, 1, 'Olá'),
(21, 1, 'Olá'),
(22, 1, 'Olá'),
(23, 1, 'Olá\r\n'),
(24, 1, 'C\r\n'),
(25, 1, 'C\r\n'),
(26, 1, 'C\r\n'),
(27, 1, 'C\r\n'),
(28, 1, 'C\r\n'),
(29, 1, 's\r\n'),
(30, 1, 's\r\n'),
(31, 1, 's\r\n'),
(32, 1, 's\r\n'),
(33, 1, 'e'),
(34, 1, 'Ol´´a\r\n'),
(35, 1, 'Ol´´a\r\n'),
(36, 1, 'ola\r\n'),
(37, 1, 'ola\r\n'),
(38, 1, 'ola\r\n'),
(39, 1, 'ola\r\n'),
(40, 1, 'Raiane\r\n'),
(41, 1, 'Raiane\r\n'),
(42, 1, 'Raiane\r\n'),
(43, 1, 'r\r\n'),
(44, 1, 'O'),
(45, 1, 'O\r\n'),
(46, 1, 'A\r\n'),
(47, 1, 'A\r\n'),
(48, 1, 'AAAA'),
(49, 1, 'AAAA'),
(50, 1, 'AA'),
(51, 1, 'oLA'),
(52, 1, 'oLA'),
(53, 1, 'oLA'),
(54, 1, 'AA\r\n'),
(55, 1, 'Ola'),
(56, 1, 'ta\r\n'),
(57, 1, 'o\r\n'),
(58, 1, 'ola'),
(59, 1, 'ta\r\n'),
(60, 1, 'oal'),
(61, 1, 'oal'),
(62, 1, 'a'),
(63, 1, 'o\r\n'),
(64, 1, 'a\r\n'),
(65, 1, 'hey\r\n'),
(66, 1, 'hho\r\n\r\n'),
(67, 1, 'ola\r\n'),
(68, 1, 'ola\r\n'),
(69, 1, 'ola\r\n'),
(70, 1, 'ola\r\n'),
(71, 1, 'ola\r\n'),
(72, 1, 'ola\r\n'),
(73, 1, 'ola\r\n'),
(74, 1, 'ola'),
(75, 1, 'aaaa'),
(76, 1, 'aaaa'),
(77, 1, 'aaaa'),
(78, 1, 'ola\r\n'),
(79, 1, 'ola\r\n'),
(80, 1, 'a'),
(81, 1, 'a'),
(82, 1, 'ola'),
(83, 1, 'ola\r\n'),
(84, 1, 'o\r\n'),
(85, 1, 'ola'),
(86, 1, 'oal'),
(87, 1, 'ola'),
(88, 1, 'ola'),
(89, 1, 'TA\r\n'),
(90, 1, 'ok'),
(91, 1, 'aa'),
(92, 1, 'o'),
(93, 1, 'aha'),
(94, 1, 'oi\r\n'),
(95, 1, 'oi\r\n'),
(96, 1, 'oi\r\n'),
(97, 1, 'oi\r\n'),
(98, 1, 'oi\r\n'),
(99, 1, 'a\r\n'),
(100, 1, 'a\r\n'),
(101, 1, 'ola\r\n'),
(102, 1, 'ola\r\n'),
(103, 1, 'ok'),
(104, 1, 'ok'),
(105, 1, 'pç\r\n'),
(106, 1, 'pç\r\n'),
(107, 1, 'ola\r\n'),
(108, 1, 'ola\r\n'),
(109, 1, 'ola\r\na'),
(110, 1, 'ola\r\na');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.clientes`
--

CREATE TABLE `tb_admin.clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `cpf_cnpj` varchar(255) NOT NULL,
  `imagem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.clientes`
--

INSERT INTO `tb_admin.clientes` (`id`, `nome`, `email`, `tipo`, `cpf_cnpj`, `imagem`) VALUES
(1, 'Fatima', 'fatima.arcaro@gmail.com', 'fisico', '000.000.000-24', ''),
(2, 'Raissa', 'raissa.chata@gmail.com', 'juridico', '99.999.999/9999-99', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.contatos`
--

CREATE TABLE `tb_admin.contatos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `lista_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.contatos`
--

INSERT INTO `tb_admin.contatos` (`id`, `nome`, `email`, `lista_id`) VALUES
(1, 'Usuario', 'usuario@gmail.com', 1),
(2, 'Raiane', 'raiane.dev@gmail.com', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.cursos`
--

CREATE TABLE `tb_admin.cursos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `horas` int(11) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `imagem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.cursos`
--

INSERT INTO `tb_admin.cursos` (`id`, `nome`, `descricao`, `horas`, `preco`, `imagem`) VALUES
(1, 'Ballet School Web Design Concept', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', 90, '120.00', 'BalletCourse.png'),
(2, 'Royal Opera House – redesign concept', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n', 50, '500.00', 'BalletCouse1.jpg'),
(3, 'ANNA KARENINA ballet', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\n', 1000, '300.00', 'BalletCouse2.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.curso_controle`
--

CREATE TABLE `tb_admin.curso_controle` (
  `id` int(11) NOT NULL,
  `aluno_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.curso_controle`
--

INSERT INTO `tb_admin.curso_controle` (`id`, `aluno_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.delivery`
--

CREATE TABLE `tb_admin.delivery` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `preco` varchar(255) NOT NULL,
  `ingredientes` varchar(255) NOT NULL,
  `peso` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `tempo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.delivery`
--

INSERT INTO `tb_admin.delivery` (`id`, `nome`, `preco`, `ingredientes`, `peso`, `descricao`, `imagem`, `tempo`) VALUES
(1, 'Barco de Sushi', '29,50', 'arroz, sal, tomate, sushi', '1kg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\r\n', 'https://www.shizencuritiba.com.br/wp-content/uploads/2021/05/Combinado-Shizen-Comida-Japonesa-em-Curitiba.png', '15-20 min'),
(2, 'Sushi Temaki', '14,95', 'couve, salmao, manjericão, chia', '350g', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\'', 'https://static.wixstatic.com/media/26d38e_148627816e794188817335aa913afd99~mv2.png/v1/crop/x_86,y_0,w_777,h_574/fill/w_558,h_412,al_c,q_85,usm_0.66_1.00_0.01/temaki-sem-arroz.webp', '30-50min');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.empreendimentos`
--

CREATE TABLE `tb_admin.empreendimentos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `preco` varchar(255) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.empreendimentos`
--

INSERT INTO `tb_admin.empreendimentos` (`id`, `nome`, `tipo`, `preco`, `imagem`, `slug`, `order_id`) VALUES
(5, 'Casa de Madeira', 'residencial', '450.000,00', '612d1edc2904f.jpg', '', 5),
(7, 'Casa de Tijolos', 'residencial', '100.000,00', '612d1fc95edff.jpg', '', 7),
(8, 'Casa de Tijolos', 'residencial', '100.000,00', '612d1fdfe5a0e.jpg', '', 8),
(9, 'Hotel', 'comercial', '100.000.000,00', '612d285e64cfa.jpg', '', 9),
(10, 'Centro Empresarial', 'comercial', '100.000,00', '612eccdf957fc.png', 'centro-empresarial', 10),
(11, 'Sala imobiliada 505', 'residencial', '9.000,00', '613249e550149.jpg', 'sala-imobiliada-505', 11);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.estoque`
--

CREATE TABLE `tb_admin.estoque` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `largura` int(11) NOT NULL,
  `altura` int(11) NOT NULL,
  `comprimento` int(11) NOT NULL,
  `peso` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `preco` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.estoque`
--

INSERT INTO `tb_admin.estoque` (`id`, `nome`, `descricao`, `largura`, `altura`, `comprimento`, `peso`, `quantidade`, `preco`) VALUES
(8, 'Sticker Baby Yoda', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 10, 10, 20, 40, 20, '500.00'),
(9, 'Sticker Miney Rock', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 15, 20, 30, 45, 10, '150.00'),
(10, 'Sticker Patrick', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 5, 10, 15, 20, 30, '250.00'),
(11, 'Sticker Te-Rex', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 10, 20, 30, 40, 50, '600.00'),
(12, 'Sticker Lhama', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 5, 10, 60, 70, 80, '9000.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.estoque_imagens`
--

CREATE TABLE `tb_admin.estoque_imagens` (
  `id` int(11) NOT NULL,
  `produto_id` int(11) NOT NULL,
  `imagem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.estoque_imagens`
--

INSERT INTO `tb_admin.estoque_imagens` (`id`, `produto_id`, `imagem`) VALUES
(1, 1, 'produto-1'),
(7, 5, '612989273b458.jpg'),
(8, 6, '61298abe2af32.png'),
(9, 7, '613249c48d727.jpg'),
(10, 8, '6138f5747c497.jpg'),
(11, 9, '6138f5adc0571.jpg'),
(12, 10, '6138f5dd3f482.jpg'),
(13, 11, '6138f5fae4adc.jpg'),
(14, 12, '6138f614938c7.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.financeiro`
--

CREATE TABLE `tb_admin.financeiro` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `valor` varchar(255) NOT NULL,
  `vencimento` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.financeiro`
--

INSERT INTO `tb_admin.financeiro` (`id`, `client_id`, `nome`, `valor`, `vencimento`, `status`) VALUES
(1, 2, 'Ola', '10,00', '2021-08-18', 1),
(2, 2, 'Ola', '10,00', '2021-10-12', 1),
(3, 2, 'Ola', '10,00', '2021-12-06', 0),
(4, 2, 'Ola', '10,00', '2022-01-30', 1),
(5, 2, 'Ola', '10,00', '2022-03-26', 0),
(6, 2, 'Ola', '10,00', '2022-05-20', 0),
(7, 2, 'Ola', '10,00', '2022-07-14', 0),
(8, 2, 'Ola', '10,00', '2022-09-07', 0),
(9, 2, 'Ola', '10,00', '2022-11-01', 0),
(10, 2, 'Ola', '10,00', '2022-12-26', 0),
(11, 2, 'Ola', '10,00', '2023-02-19', 0),
(12, 2, 'Ola', '10,00', '2023-04-15', 0),
(13, 2, 'Ola numero 2', '1.000,00', '2021-08-06', 1),
(14, 2, 'Raissa', '100,00', '2021-08-29', 0),
(15, 2, 'Raissa', '100,00', '2021-10-23', 0),
(16, 1, 'Almoço', '100,20', '2021-08-24', 0),
(17, 2, 'Almoço', '100,20', '0000-00-00', 1),
(18, 1, 'Almoço', '100,20', '2021-08-24', 0),
(19, 1, 'Almoço', '100,20', '2021-08-24', 1),
(20, 1, 'Almoço', '100,20', '2021-08-24', 1),
(21, 2, 'Jantar', '20,00', '2021-08-26', 1),
(22, 2, 'Jantar', '20,00', '2021-08-26', 0),
(23, 2, 'Jantar', '20,00', '2021-08-26', 0),
(24, 1, '1', '900,00', '2021-08-16', 1),
(25, 1, 'Raissa', '9,00', '2021-10-03', 0),
(26, 1, 'Raissa', '9,00', '2021-11-02', 0),
(27, 1, 'Raissa', '9,00', '2021-10-03', 0),
(28, 1, 'Raissa', '9,00', '2021-11-02', 0),
(29, 1, 'Raissa', '9,00', '2021-10-03', 0),
(30, 1, 'Raissa', '9,00', '2021-11-02', 0),
(31, 1, 'Raissa', '9,00', '2021-10-03', 0),
(32, 1, 'Raissa', '9,00', '2021-11-02', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.imagens_imoveis`
--

CREATE TABLE `tb_admin.imagens_imoveis` (
  `id` int(11) NOT NULL,
  `imovel_id` int(11) NOT NULL,
  `imagem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.imagens_imoveis`
--

INSERT INTO `tb_admin.imagens_imoveis` (`id`, `imovel_id`, `imagem`) VALUES
(2, 2, '61311b6705870.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.imoveis`
--

CREATE TABLE `tb_admin.imoveis` (
  `id` int(11) NOT NULL,
  `empreend_id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `area` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.imoveis`
--

INSERT INTO `tb_admin.imoveis` (`id`, `empreend_id`, `nome`, `preco`, `area`, `order_id`) VALUES
(2, 10, 'Imóvel de Campo', '99999999.99', 300, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.listas_email`
--

CREATE TABLE `tb_admin.listas_email` (
  `id` int(11) NOT NULL,
  `nome_lista` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.listas_email`
--

INSERT INTO `tb_admin.listas_email` (`id`, `nome_lista`) VALUES
(1, 'Carrinho Abandonado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.modulos`
--

CREATE TABLE `tb_admin.modulos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.modulos`
--

INSERT INTO `tb_admin.modulos` (`id`, `nome`) VALUES
(2, 'Introdução ao Javascript'),
(3, 'JavaScript Beginning'),
(4, 'Variáveis e Constantes'),
(5, 'Tipos e Operadores');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.online`
--

CREATE TABLE `tb_admin.online` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `ultima_acao` datetime NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.online`
--

INSERT INTO `tb_admin.online` (`id`, `ip`, `ultima_acao`, `token`) VALUES
(124, '127.0.0.1', '2021-11-07 19:31:27', '61883b118c12c'),
(126, '127.0.0.1', '2021-11-07 19:44:09', '618853d19ba34'),
(127, '127.0.0.1', '2021-11-07 19:47:49', '618856ed3a4f0'),
(128, '127.0.0.1', '2021-11-07 19:49:42', '618857c154259');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.pedidos`
--

CREATE TABLE `tb_admin.pedidos` (
  `id` int(11) NOT NULL,
  `reference_id` int(11) NOT NULL,
  `produto_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.pedidos`
--

INSERT INTO `tb_admin.pedidos` (`id`, `reference_id`, `produto_id`, `amount`, `status`) VALUES
(1, 2, 3, 5000, '1'),
(2, 2, 3, 10000, '3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.usuarios`
--

CREATE TABLE `tb_admin.usuarios` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cargo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.usuarios`
--

INSERT INTO `tb_admin.usuarios` (`id`, `user`, `password`, `img`, `nome`, `cargo`) VALUES
(1, 'raiane', 'gaivabeach', 'code.png', 'Raiane Arcaro Daros', '2'),
(3, 'user', 'gaivabeach', '6126dcfd9b676.png', 'user', '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.visitas`
--

CREATE TABLE `tb_admin.visitas` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `dia` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.visitas`
--

INSERT INTO `tb_admin.visitas` (`id`, `ip`, `dia`) VALUES
(1, '::1', '2021-07-17'),
(2, '::1', '2021-07-22'),
(3, '::1', '2021-07-26'),
(4, '::1', '2021-08-09'),
(5, '::1', '2021-08-18'),
(6, '::1', '2021-08-21'),
(7, '::1', '2021-08-21'),
(8, '::1', '2021-08-21'),
(9, '::1', '2021-08-21'),
(10, '::1', '2021-08-26'),
(11, '::1', '2021-08-26'),
(12, '::1', '2021-08-29'),
(13, '192.168.0.101', '2021-08-29'),
(14, '127.0.0.1', '2021-08-30'),
(15, '127.0.0.1', '2021-08-30'),
(16, '127.0.0.1', '2021-09-03'),
(17, '127.0.0.1', '2021-09-04'),
(18, '127.0.0.1', '2021-09-04'),
(19, '127.0.0.1', '2021-09-04'),
(20, '127.0.0.1', '2021-09-04'),
(21, '127.0.0.1', '2021-09-06'),
(22, '127.0.0.1', '2021-09-06'),
(23, '127.0.0.1', '2021-09-06'),
(24, '127.0.0.1', '2021-09-06'),
(25, '127.0.0.1', '2021-09-06'),
(26, '127.0.0.1', '2021-09-08'),
(27, '127.0.0.1', '2021-09-11'),
(28, '127.0.0.1', '2021-09-14'),
(29, '127.0.0.1', '2021-09-14'),
(30, '127.0.0.1', '2021-09-16'),
(31, '127.0.0.1', '2021-09-18'),
(32, '127.0.0.1', '2021-09-20'),
(33, '192.168.0.100', '2021-09-24'),
(34, '127.0.0.1', '2021-09-25'),
(35, '127.0.0.1', '2021-10-01'),
(36, '127.0.0.1', '2021-11-07'),
(37, '127.0.0.1', '2021-11-07'),
(38, '192.168.0.110', '2021-11-07'),
(39, '127.0.0.1', '2021-11-07'),
(40, '127.0.0.1', '2021-11-07'),
(41, '127.0.0.1', '2021-11-07');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.categorias`
--

CREATE TABLE `tb_site.categorias` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_site.categorias`
--

INSERT INTO `tb_site.categorias` (`id`, `nome`, `slug`, `order_id`) VALUES
(1, 'Categoria 10000000000', 'categoria-10000000000', 1),
(3, 'Categoria 1', 'categoria-1', 3),
(4, 'Categoria 1', 'categoria-1', 4),
(5, 'Categoria 10000000000', 'categoria-10000000000', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.comentarios`
--

CREATE TABLE `tb_site.comentarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `comentario` text NOT NULL,
  `criado` timestamp NOT NULL DEFAULT current_timestamp(),
  `noticia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_site.comentarios`
--

INSERT INTO `tb_site.comentarios` (`id`, `nome`, `comentario`, `criado`, `noticia_id`) VALUES
(1, 'Raiane Arcaro Daros', 'co', '2021-09-06 23:56:49', 2),
(2, 'Raiane Arcaro Daros', 'Comentário de teste', '2021-09-06 23:56:49', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.config`
--

CREATE TABLE `tb_site.config` (
  `titulo` varchar(255) NOT NULL,
  `nome_autor` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `icone1` varchar(255) NOT NULL,
  `descricao1` text NOT NULL,
  `icone2` varchar(255) NOT NULL,
  `descricao2` text NOT NULL,
  `icone3` varchar(255) NOT NULL,
  `descricao3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_site.config`
--

INSERT INTO `tb_site.config` (`titulo`, `nome_autor`, `descricao`, `icone1`, `descricao1`, `icone2`, `descricao2`, `icone3`, `descricao3`) VALUES
('Projeto01', 'Raiane Arcaro Daros', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', 'fa fa-css3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', 'fa fa-gg-circle', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', 'fa fa-html5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.depoimentos`
--

CREATE TABLE `tb_site.depoimentos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `depoimento` text NOT NULL,
  `data` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_site.depoimentos`
--

INSERT INTO `tb_site.depoimentos` (`id`, `nome`, `depoimento`, `data`, `order_id`) VALUES
(1, 'Lorem ipsum depoiment', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\n', '25/08/2021', 1),
(2, 'Depoiment lorem ipsum 2', 'Lorem ipsum dolor amet', '26/08/2021', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.feed`
--

CREATE TABLE `tb_site.feed` (
  `id` int(11) NOT NULL,
  `membro_id` int(11) NOT NULL,
  `post` text NOT NULL,
  `imagem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_site.feed`
--

INSERT INTO `tb_site.feed` (`id`, `membro_id`, `post`, `imagem`) VALUES
(1, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'art-5.jpg'),
(2, 1, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content her', 'art-4.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.membros`
--

CREATE TABLE `tb_site.membros` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `imagem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_site.membros`
--

INSERT INTO `tb_site.membros` (`id`, `nome`, `email`, `senha`, `imagem`) VALUES
(1, 'Membro', 'membro@gmail.com', 'membro', 'art-1.jpg'),
(2, 'Lhama', 'lhama@gmail.com', 'lhama', 'art-2.jpg'),
(3, 'Patrick', 'patrick@gmail.com', 'patrick', 'art-3.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.noticias`
--

CREATE TABLE `tb_site.noticias` (
  `id` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `data` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `conteudo` text NOT NULL,
  `capa` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_site.noticias`
--

INSERT INTO `tb_site.noticias` (`id`, `categoria_id`, `data`, `titulo`, `conteudo`, `capa`, `slug`, `order_id`) VALUES
(1, 2, '', 'Minha Noticia', 'Criado a partir do servidor MySql.', 'banner-1.jpg', 'slug-da-minha-noticia', 0),
(2, 1, '10/08/2019', 'Lorem Ipsum dolor amet', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', 'banner-2.jpg', 'lorem-ipsum', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.resposta_comentario`
--

CREATE TABLE `tb_site.resposta_comentario` (
  `id` int(11) NOT NULL,
  `comentario_id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `resposta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.servicos`
--

CREATE TABLE `tb_site.servicos` (
  `id` int(11) NOT NULL,
  `servico` text NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_site.servicos`
--

INSERT INTO `tb_site.servicos` (`id`, `servico`, `imagem`, `order_id`) VALUES
(1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', 'Servicos.jpg', 3),
(2, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n', 'Servicos2.jpg', 0),
(3, 'Bomby provides creatives of all levels and backgrounds, experiences that can help propel their ideas forward. We’re here to connect them with world changing thinkers and leaders in the creative industry, and help reignite their passion for the visual.', 'Servicos3.jpg', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.slides`
--

CREATE TABLE `tb_site.slides` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `slide` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.solicitacoes`
--

CREATE TABLE `tb_site.solicitacoes` (
  `id` int(11) NOT NULL,
  `id_from` int(11) NOT NULL,
  `id_to` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_site.solicitacoes`
--

INSERT INTO `tb_site.solicitacoes` (`id`, `id_from`, `id_to`, `status`) VALUES
(8, 1, 3, 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.agenda`
--
ALTER TABLE `tb_admin.agenda`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.alunos`
--
ALTER TABLE `tb_admin.alunos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.aulas`
--
ALTER TABLE `tb_admin.aulas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.chat`
--
ALTER TABLE `tb_admin.chat`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.clientes`
--
ALTER TABLE `tb_admin.clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.contatos`
--
ALTER TABLE `tb_admin.contatos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.cursos`
--
ALTER TABLE `tb_admin.cursos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.curso_controle`
--
ALTER TABLE `tb_admin.curso_controle`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.delivery`
--
ALTER TABLE `tb_admin.delivery`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.empreendimentos`
--
ALTER TABLE `tb_admin.empreendimentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.estoque`
--
ALTER TABLE `tb_admin.estoque`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.estoque_imagens`
--
ALTER TABLE `tb_admin.estoque_imagens`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.financeiro`
--
ALTER TABLE `tb_admin.financeiro`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.imagens_imoveis`
--
ALTER TABLE `tb_admin.imagens_imoveis`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.imoveis`
--
ALTER TABLE `tb_admin.imoveis`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.listas_email`
--
ALTER TABLE `tb_admin.listas_email`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.modulos`
--
ALTER TABLE `tb_admin.modulos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.online`
--
ALTER TABLE `tb_admin.online`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.pedidos`
--
ALTER TABLE `tb_admin.pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.usuarios`
--
ALTER TABLE `tb_admin.usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.visitas`
--
ALTER TABLE `tb_admin.visitas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.categorias`
--
ALTER TABLE `tb_site.categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.comentarios`
--
ALTER TABLE `tb_site.comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.depoimentos`
--
ALTER TABLE `tb_site.depoimentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.feed`
--
ALTER TABLE `tb_site.feed`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.membros`
--
ALTER TABLE `tb_site.membros`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.noticias`
--
ALTER TABLE `tb_site.noticias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.resposta_comentario`
--
ALTER TABLE `tb_site.resposta_comentario`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.servicos`
--
ALTER TABLE `tb_site.servicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.slides`
--
ALTER TABLE `tb_site.slides`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.solicitacoes`
--
ALTER TABLE `tb_site.solicitacoes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tb_admin.agenda`
--
ALTER TABLE `tb_admin.agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `tb_admin.alunos`
--
ALTER TABLE `tb_admin.alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tb_admin.aulas`
--
ALTER TABLE `tb_admin.aulas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tb_admin.chat`
--
ALTER TABLE `tb_admin.chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT de tabela `tb_admin.clientes`
--
ALTER TABLE `tb_admin.clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_admin.contatos`
--
ALTER TABLE `tb_admin.contatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_admin.cursos`
--
ALTER TABLE `tb_admin.cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tb_admin.curso_controle`
--
ALTER TABLE `tb_admin.curso_controle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tb_admin.delivery`
--
ALTER TABLE `tb_admin.delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_admin.empreendimentos`
--
ALTER TABLE `tb_admin.empreendimentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `tb_admin.estoque`
--
ALTER TABLE `tb_admin.estoque`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `tb_admin.estoque_imagens`
--
ALTER TABLE `tb_admin.estoque_imagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `tb_admin.financeiro`
--
ALTER TABLE `tb_admin.financeiro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `tb_admin.imagens_imoveis`
--
ALTER TABLE `tb_admin.imagens_imoveis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_admin.imoveis`
--
ALTER TABLE `tb_admin.imoveis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_admin.listas_email`
--
ALTER TABLE `tb_admin.listas_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tb_admin.modulos`
--
ALTER TABLE `tb_admin.modulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tb_admin.online`
--
ALTER TABLE `tb_admin.online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT de tabela `tb_admin.pedidos`
--
ALTER TABLE `tb_admin.pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_admin.usuarios`
--
ALTER TABLE `tb_admin.usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tb_admin.visitas`
--
ALTER TABLE `tb_admin.visitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de tabela `tb_site.categorias`
--
ALTER TABLE `tb_site.categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tb_site.comentarios`
--
ALTER TABLE `tb_site.comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_site.depoimentos`
--
ALTER TABLE `tb_site.depoimentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_site.feed`
--
ALTER TABLE `tb_site.feed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tb_site.membros`
--
ALTER TABLE `tb_site.membros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tb_site.noticias`
--
ALTER TABLE `tb_site.noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_site.resposta_comentario`
--
ALTER TABLE `tb_site.resposta_comentario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_site.servicos`
--
ALTER TABLE `tb_site.servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tb_site.slides`
--
ALTER TABLE `tb_site.slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_site.solicitacoes`
--
ALTER TABLE `tb_site.solicitacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
