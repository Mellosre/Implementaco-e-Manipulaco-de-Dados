-- 1. Listar todos os Pets e seus respectivos donos
SELECT p.nome AS Nome_Pet, p.especie, c.nome AS Nome_Dono, c.telefone
FROM pet p
JOIN cliente c ON p.id_cliente = c.id_cliente
ORDER BY c.nome;

-- 2. Consultar os atendimentos realizados pela "Dra. Ana Costa"
SELECT c.data_consulta, p.nome AS Nome_Pet, c.tipo_servico
FROM consulta c
JOIN veterinario v ON c.id_veterinario = v.id_veterinario
JOIN pet p ON c.id_pet = p.id_pet
WHERE v.nome LIKE '%Ana Costa%';

-- 3. Mostrar quais medicamentos foram prescritos na consulta da gata "Mimi"
SELECT m.nome AS Medicamento, pr.dose, pr.forma_aplicacao
FROM prescricao pr
JOIN medicamento m ON pr.id_medicamento = m.id_medicamento
JOIN consulta c ON pr.id_consulta = c.id_consulta
JOIN pet p ON c.id_pet = p.id_pet
WHERE p.nome = 'Mimi';