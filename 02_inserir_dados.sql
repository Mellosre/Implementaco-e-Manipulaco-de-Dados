-- Inserindo Clientes
INSERT INTO cliente (nome, telefone) VALUES 
('João Silva', '(11) 99999-1234'),
('Maria Oliveira', '(11) 98888-5678'),
('Carlos Souza', '(21) 97777-4321');

-- Inserindo Veterinários
INSERT INTO veterinario (nome, crmv) VALUES 
('Dra. Ana Costa', 'SP-12345'),
('Dr. Pedro Santos', 'SP-67890');

-- Inserindo Medicamentos
INSERT INTO medicamento (nome, quantidade, data_de_vencimento) VALUES 
('Antibiótico Pet', 50, '2026-12-01'),
('Anti-inflamatório Z', 30, '2025-06-15'),
('Vacina Antirrábica', 100, '2025-10-20');

-- Inserindo Pets (Associando aos donos criados acima)
INSERT INTO pet (nome, especie, idade, id_cliente) VALUES 
('Rex', 'Cachorro', '5 anos', 1), -- Dono: João
('Mimi', 'Gato', '2 anos', 2),    -- Dona: Maria
('Thor', 'Cachorro', '3 anos', 1); -- Dono: João

-- Inserindo Consultas
INSERT INTO consulta (data_consulta, tipo_servico, id_pet, id_veterinario) VALUES 
('2024-03-10 14:00:00', 'Vacinação', 1, 1), -- Rex com Dra. Ana
('2024-03-12 09:30:00', 'Consulta Geral', 2, 2), -- Mimi com Dr. Pedro
('2024-03-15 16:00:00', 'Exame de Rotina', 3, 1); -- Thor com Dra. Ana

-- Inserindo Prescrições (Medicamentos usados nas consultas)
INSERT INTO prescricao (dose, forma_aplicacao, id_consulta, id_medicamento) VALUES 
('1 dose', 'Injetável', 1, 3), -- Vacina para o Rex
('5ml', 'Oral - 2x ao dia', 2, 2), -- Anti-inflamatório para a Mimi
('1 comprimido', 'Oral - A cada 12h', 2, 1); -- Antibiótico para a Mimi