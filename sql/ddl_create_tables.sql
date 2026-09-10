SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- Criar a base de dados
CREATE DATABASE IF NOT EXISTS `gestao_funcionarios` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gestao_funcionarios`;

-- --------------------------------------------------------
-- Estrutura das Tabelas
-- --------------------------------------------------------

-- Tabela: cargo
CREATE TABLE `cargo` (
  `codigo_cargo` varchar(10) NOT NULL,
  `nome_cargo` varchar(100) NOT NULL,
  `posto_trabalho` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codigo_cargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Tabela: pais
CREATE TABLE `pais` (
  `id_pais` int(11) NOT NULL AUTO_INCREMENT,
  `nome_pais` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pais`),
  UNIQUE KEY `nome_pais` (`nome_pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Tabela: provincia
CREATE TABLE `provincia` (
  `id_provincia` int(11) NOT NULL AUTO_INCREMENT,
  `nome_provincia` varchar(100) NOT NULL,
  `id_pais` int(11) NOT NULL,
  PRIMARY KEY (`id_provincia`),
  KEY `id_pais` (`id_pais`),
  CONSTRAINT `provincia_ibfk_1` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id_pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Tabela: cidade
CREATE TABLE `cidade` (
  `id_cidade` int(11) NOT NULL AUTO_INCREMENT,
  `nome_cidade` varchar(100) NOT NULL,
  `id_provincia` int(11) NOT NULL,
  PRIMARY KEY (`id_cidade`),
  KEY `id_provincia` (`id_provincia`),
  CONSTRAINT `cidade_ibfk_1` FOREIGN KEY (`id_provincia`) REFERENCES `provincia` (`id_provincia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Tabela: funcao
CREATE TABLE `funcao` (
  `codigo_funcao` varchar(10) NOT NULL,
  `nome_funcao` varchar(100) NOT NULL,
  PRIMARY KEY (`codigo_funcao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Tabela: funcionario
CREATE TABLE `funcionario` (
  `NUIT` varchar(20) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `data_nasc` date NOT NULL,
  `BI` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `data_admissao` date NOT NULL,
  PRIMARY KEY (`NUIT`),
  UNIQUE KEY `BI` (`BI`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Tabela: endereco
CREATE TABLE `endereco` (
  `id_endereco` int(11) NOT NULL AUTO_INCREMENT,
  `NUIT` varchar(20) NOT NULL,
  `avenida_rua` varchar(150) NOT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `id_cidade` int(11) NOT NULL,
  PRIMARY KEY (`id_endereco`),
  UNIQUE KEY `NUIT` (`NUIT`),
  KEY `id_cidade` (`id_cidade`),
  CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`NUIT`) REFERENCES `funcionario` (`NUIT`) ON DELETE CASCADE,
  CONSTRAINT `endereco_ibfk_2` FOREIGN KEY (`id_cidade`) REFERENCES `cidade` (`id_cidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Tabela: filho
CREATE TABLE `filho` (
  `id_filho` int(11) NOT NULL AUTO_INCREMENT,
  `NUIT` varchar(20) NOT NULL,
  `nome_filho` varchar(150) NOT NULL,
  PRIMARY KEY (`id_filho`),
  KEY `NUIT` (`NUIT`),
  CONSTRAINT `filho_ibfk_1` FOREIGN KEY (`NUIT`) REFERENCES `funcionario` (`NUIT`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Tabela: funcionario_cargo_funcao
CREATE TABLE `funcionario_cargo_funcao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NUIT` varchar(20) NOT NULL,
  `codigo_cargo` varchar(10) NOT NULL,
  `codigo_funcao` varchar(10) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_fim` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `NUIT` (`NUIT`),
  KEY `codigo_cargo` (`codigo_cargo`),
  KEY `codigo_funcao` (`codigo_funcao`),
  CONSTRAINT `funcionario_cargo_funcao_ibfk_1` FOREIGN KEY (`NUIT`) REFERENCES `funcionario` (`NUIT`) ON DELETE CASCADE,
  CONSTRAINT `funcionario_cargo_funcao_ibfk_2` FOREIGN KEY (`codigo_cargo`) REFERENCES `cargo` (`codigo_cargo`),
  CONSTRAINT `funcionario_cargo_funcao_ibfk_3` FOREIGN KEY (`codigo_funcao`) REFERENCES `funcao` (`codigo_funcao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Tabela: telefone
CREATE TABLE `telefone` (
  `id_telefone` int(11) NOT NULL AUTO_INCREMENT,
  `NUIT` varchar(20) NOT NULL,
  `numero_telefone` varchar(20) NOT NULL,
  PRIMARY KEY (`id_telefone`),
  KEY `NUIT` (`NUIT`),
  CONSTRAINT `telefone_ibfk_1` FOREIGN KEY (`NUIT`) REFERENCES `funcionario` (`NUIT`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

COMMIT;
