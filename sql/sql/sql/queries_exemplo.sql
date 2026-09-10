USE `gestao_funcionarios`;

-- 1. Listar todos os funcionários com os respetivos cargos, funções e localização do posto de trabalho[cite: 5]
SELECT 
    f.NUIT,
    f.nome AS Nome_Funcionario,
    c.nome_cargo AS Cargo,
    c.posto_trabalho AS Posto_Trabalho,
    fn.nome_funcao AS Funcao,
    fcf.data_inicio
FROM funcionario f
INNER JOIN funcionario_cargo_funcao fcf ON f.NUIT = fcf.NUIT
INNER JOIN cargo c ON fcf.codigo_cargo = c.codigo_cargo
INNER JOIN funcao fn ON fcf.codigo_funcao = fn.codigo_funcao;

-- 2. Obter o endereço completo dos funcionários (incluindo cidade e província)[cite: 5]
SELECT 
    f.nome AS Funcionario,
    e.avenida_rua,
    e.numero,
    e.bairro,
    cid.nome_cidade AS Cidade,
    p.nome_provincia AS Provincia
FROM funcionario f
INNER JOIN endereco e ON f.NUIT = e.NUIT
INNER JOIN cidade cid ON e.id_cidade = cid.id_cidade
INNER JOIN provincia p ON cid.id_provincia = p.id_provincia;

-- 3. Listar todos os dependentes (filhos) por funcionário[cite: 5]
SELECT 
    f.nome AS Nome_Pai_Mae,
    fl.nome_filho AS Nome_Dependente
FROM funcionario f
INNER JOIN filho fl ON f.NUIT = fl.NUIT
ORDER BY f.nome;

-- 4. Listar contactos telefónicos por funcionário[cite: 5]
SELECT 
    f.nome AS Funcionario,
    t.numero_telefone AS Telefone
FROM funcionario f
INNER JOIN telefone t ON f.NUIT = t.NUIT;
