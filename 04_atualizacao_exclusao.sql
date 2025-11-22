-- --- COMANDOS UPDATE (3 Exemplos) ---

-- 1. Atualizar o telefone do cliente João Silva
UPDATE cliente 
SET telefone = '(11) 90000-0000' 
WHERE nome = 'João Silva';

-- 2. Corrigir a idade do Pet "Rex"
UPDATE pet 
SET idade = '6 anos' 
WHERE nome = 'Rex';

-- 3. Alterar a quantidade de estoque de um medicamento após uso
UPDATE medicamento 
SET quantidade = quantidade - 5 
WHERE nome = 'Antibiótico Pet';


-- --- COMANDOS DELETE (3 Exemplos) ---

-- 1. Excluir uma prescrição específica (Ex: erro de lançamento)
DELETE FROM prescricao 
WHERE id_prescricao = 3;

-- 2. Excluir um Pet que não pertence mais à clínica (Só funciona se não tiver consultas vinculadas, ou deve-se apagar as consultas antes)
-- Neste exemplo, vamos apagar um pet fictício criado agora para teste:
INSERT INTO pet (nome, especie, idade, id_cliente) VALUES ('Teste', 'Peixe', '1 ano', 1);
DELETE FROM pet 
WHERE nome = 'Teste';

-- 3. Excluir consultas antigas (Exemplo: anteriores a 2020)
DELETE FROM consulta 
WHERE data_consulta < '2020-01-01';