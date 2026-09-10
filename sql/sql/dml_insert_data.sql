USE `gestao_funcionarios`;

START TRANSACTION;

-- Inserir dados na tabela: pais
INSERT INTO `pais` (`id_pais`, `nome_pais`) VALUES
(1, 'Moçambique');

-- Inserir dados na tabela: provincia
INSERT INTO `provincia` (`id_provincia`, `nome_provincia`, `id_pais`) VALUES
(1, 'Maputo Cidade', 1),
(2, 'Maputo Província', 1),
(3, 'Gaza', 1),
(4, 'Inhambane', 1),
(5, 'Sofala', 1),
(6, 'Nampula', 1),
(7, 'Manica', 1),
(8, 'Tete', 1),
(9, 'Zambézia', 1),
(10, 'Cabo Delgado', 1);

-- Inserir dados na tabela: cidade
INSERT INTO `cidade` (`id_cidade`, `nome_cidade`, `id_provincia`) VALUES
(1, 'Maputo', 1),
(2, 'Matola', 2),
(3, 'Chókwè', 3),
(4, 'Maxixe', 4),
(5, 'Beira', 5),
(6, 'Nampula', 6),
(7, 'Chimoio', 7),
(8, 'Tete', 8),
(9, 'Quelimane', 9),
(10, 'Pemba', 10);

-- Inserir dados na tabela: cargo
INSERT INTO `cargo` (`codigo_cargo`, `nome_cargo`, `posto_trabalho`) VALUES
('C001', 'Director', 'Escritório Central'),
('C002', 'Analista', 'Escritório Regional'),
('C003', 'Técnico', 'Escritório Local'),
('C004', 'Gestor', 'Escritório Central'),
('C005', 'Assistente', 'Escritório Local');

-- Inserir dados na tabela: funcao
INSERT INTO `funcao` (`codigo_funcao`, `nome_funcao`) VALUES
('F001', 'Gestor de Projectos'),
('F002', 'Analista de Sistemas'),
('F003', 'Programador'),
('F004', 'Administrador'),
('F005', 'Assistente Administrativo');

-- Inserir dados na tabela: funcionario
INSERT INTO `funcionario` (`NUIT`, `nome`, `data_nasc`, `BI`, `email`, `data_admissao`) VALUES
('100234567', 'Amélia Fernanda Cossa', '1985-03-12', '110100123456A', 'amelia.cossa@empresa.co.mz', '2010-01-15'),
('100345678', 'Bernardo Alfredo Machava', '1979-07-22', '110100234567B', 'bernardo.machava@empresa.co.mz', '2011-03-20'),
('100456789', 'Celina Armando Sitoe', '1990-11-03', '110200345678C', 'celina.sitoe@empresa.co.mz', '2012-05-10'),
('100567890', 'Domingos Paulo Nhantumbo', '1982-01-30', '110300456789D', 'domingos.nhantumbo@empresa.co.mz', '2009-08-01'),
('100678901', 'Eugénia Marta Muchanga', '1988-05-18', '110400567890E', 'eugenia.muchanga@empresa.co.mz', '2013-02-15'),
('100789012', 'Fernando José Macuácu', '1975-09-25', '110500678901F', 'fernando.macuacu@empresa.co.mz', '2008-06-10'),
('100890123', 'Graça Isabel Zunguze', '1992-12-07', '110600789012G', 'graca.zunguze@empresa.co.mz', '2014-09-01'),
('100901234', 'Hélder António Cuamba', '1980-04-14', '110700890123H', 'helder.cuamba@empresa.co.mz', '2011-11-20'),
('101012345', 'Ivete Sara Chirindza', '1995-06-29', '110800901234I', 'ivete.chirindza@empresa.co.mz', '2015-03-15'),
('101123456', 'João Baptista Nhaca', '1978-08-09', '110900012345J', 'joao.nhaca@empresa.co.mz', '2007-07-01'),
('101234567', 'Lúcia Ermelinda Bila', '1991-02-16', '111000123456K', 'lucia.bila@empresa.co.mz', '2012-10-10'),
('101345678', 'Marcelino Inácio Tembe', '1983-10-21', '111100234567L', 'marcelino.tembe@empresa.co.mz', '2010-04-05'),
('101456789', 'Noémia Alzira Massingue', '1987-03-04', '111200345678M', 'noemia.massingue@empresa.co.mz', '2013-08-20'),
('101567890', 'Osvaldo Simião Ubisse', '1976-07-27', '111300456789N', 'osvaldo.ubisse@empresa.co.mz', '2009-12-01'),
('101678901', 'Paulina Fátima Uache', '1993-01-15', '111400567890O', 'paulina.uache@empresa.co.mz', '2016-06-15'),
('101789012', 'Ricardo Manuel Come', '1981-06-02', '111500678901P', 'ricardo.come@empresa.co.mz', '2011-09-10');

-- Inserir dados na tabela: endereco
INSERT INTO `endereco` (`id_endereco`, `NUIT`, `avenida_rua`, `numero`, `bairro`, `id_cidade`) VALUES
(1, '100234567', 'Av. Julius Nyerere', '245', 'Sommerschield', 1),
(2, '100345678', 'Rua da Resistência', '8', 'Polana Caniço', 1),
(3, '100456789', 'Av. Samora Machel', '12', 'Fomento', 2),
(4, '100567890', 'Rua 3', '56', 'Chókwè-Sede', 3),
(5, '100678901', 'Av. Eduardo Mondlane', '301', 'Maxixe-Sede', 4),
(6, '100789012', 'Av. Poder Popular', '77', 'Macuti', 5),
(7, '100890123', 'Rua da Frescura', '19', 'Ponta Gêa', 5),
(8, '100901234', 'Av. 25 de Setembro', '150', 'Alto Maé', 1),
(9, '101012345', 'Rua do Bagamoyo', '5', 'Muhipiti', 6),
(10, '101123456', 'Av. Josina Machel', '200', 'Namalhera', 6),
(11, '101234567', 'Rua da Base', '33', 'Chaimite', 5),
(12, '101345678', 'Av. Kwame Nkrumah', '410', 'Coop', 1),
(13, '101456789', 'Rua de Chimoio', '67', 'Chingussura', 7),
(14, '101567890', 'Av. 7 de Setembro', '90', 'Matundo', 8),
(15, '101678901', 'Rua da Missão', '24', 'Chalaua', 9),
(16, '101789012', 'Av. Franqueza', '18', 'Chuwaula', 10);

-- Inserir dados na tabela: filho
INSERT INTO `filho` (`id_filho`, `NUIT`, `nome_filho`) VALUES
(1, '100234567', 'Cátia Cossa'),
(2, '100234567', 'Nelson Machava'),
(3, '100345678', 'Ivete Machava'),
(4, '100345678', 'Suzana Machava'),
(5, '100456789', 'Paulo Nhantumbo Jr'),
(6, '100456789', 'Alzira Nhantumbo'),
(7, '100678901', 'Marta Muchanga'),
(8, '100789012', 'José Macuácu'),
(9, '100789012', 'Beatriz Macuácu'),
(10, '100789012', 'Adriano Macuácu'),
(11, '100901234', 'António Cuamba Jr'),
(12, '100901234', 'Filomena Cuamba'),
(13, '101123456', 'Baptista Nhaca Jr'),
(14, '101234567', 'Ermelinda Bila'),
(15, '101345678', 'Inácio Tembe Jr'),
(16, '101345678', 'Rosa Tembe'),
(17, '101567890', 'Simião Ubisse Jr'),
(18, '101567890', 'Alcinda Ubisse'),
(19, '101567890', 'Custódio Ubisse'),
(20, '101789012', 'Manuel Come Jr');

-- Inserir dados na tabela: funcionario_cargo_funcao
INSERT INTO `funcionario_cargo_funcao` (`id`, `NUIT`, `codigo_cargo`, `codigo_funcao`, `data_inicio`, `data_fim`) VALUES
(1, '100234567', 'C001', 'F001', '2010-01-15', NULL),
(2, '100345678', 'C002', 'F002', '2011-03-20', NULL),
(3, '100456789', 'C002', 'F002', '2012-05-10', NULL),
(4, '100567890', 'C003', 'F003', '2009-08-01', NULL),
(5, '100678901', 'C003', 'F003', '2013-02-15', NULL),
(6, '100789012', 'C004', 'F001', '2008-06-10', NULL),
(7, '100890123', 'C005', 'F005', '2014-09-01', NULL),
(8, '100901234', 'C003', 'F003', '2011-11-20', NULL),
(9, '101012345', 'C005', 'F005', '2015-03-15', NULL),
(10, '101123456', 'C004', 'F001', '2007-07-01', NULL),
(11, '101234567', 'C002', 'F002', '2012-10-10', NULL),
(12, '101345678', 'C003', 'F003', '2010-04-05', NULL),
(13, '101456789', 'C005', 'F005', '2013-08-20', NULL),
(14, '101567890', 'C001', 'F004', '2009-12-01', NULL),
(15, '101678901', 'C005', 'F005', '2016-06-15', NULL),
(16, '101789012', 'C002', 'F002', '2011-09-10', NULL);

-- Inserir dados na tabela: telefone
INSERT INTO `telefone` (`id_telefone`, `NUIT`, `numero_telefone`) VALUES
(1, '100234567', '841234567'),
(2, '100234567', '821234567'),
(3, '100345678', '845678901'),
(4, '100345678', '861122334'),
(5, '100456789', '847890123'),
(6, '100456789', '878901234'),
(7, '100678901', '849012345'),
(8, '100789012', '823456789'),
(9, '100789012', '843456789'),
(10, '100789012', '863456789'),
(11, '100890123', '844567890'),
(12, '100890123', '824567890'),
(13, '100901234', '825678901'),
(14, '100901234', '846789012'),
(15, '101123456', '827890123'),
(16, '101123456', '847890124'),
(17, '101234567', '848901234'),
(18, '101345678', '829012345'),
(19, '101345678', '849012346'),
(20, '101345678', '869012347'),
(21, '101456789', '841122334'),
(22, '101567890', '822233445'),
(23, '101567890', '842233445'),
(24, '101567890', '843344556'),
(25, '101789012', '824455667'),
(26, '101789012', '844455667');

COMMIT;
