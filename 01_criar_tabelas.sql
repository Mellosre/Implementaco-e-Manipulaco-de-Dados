-- Criação do Banco de Dados
CREATE DATABASE db_pet_amigao;
USE db_pet_amigao;

-- Tabela Cliente
CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL
);

-- Tabela Veterinário
CREATE TABLE veterinario (
    id_veterinario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    crmv VARCHAR(20) UNIQUE NOT NULL
);

-- Tabela Medicamento
CREATE TABLE medicamento (
    id_medicamento INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    quantidade INT NOT NULL,
    data_de_vencimento DATE NOT NULL
);

-- Tabela Pet (Depende de Cliente)
CREATE TABLE pet (
    id_pet INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    especie VARCHAR(30) NOT NULL,
    idade VARCHAR(20),
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

-- Tabela Consulta (Depende de Pet e Veterinário)
CREATE TABLE consulta (
    id_consulta INT AUTO_INCREMENT PRIMARY KEY,
    data_consulta DATETIME NOT NULL,
    tipo_servico VARCHAR(50) NOT NULL,
    id_pet INT,
    id_veterinario INT,
    FOREIGN KEY (id_pet) REFERENCES pet(id_pet),
    FOREIGN KEY (id_veterinario) REFERENCES veterinario(id_veterinario)
);

-- Tabela Prescrição (Depende de Consulta e Medicamento)
CREATE TABLE prescricao (
    id_prescricao INT AUTO_INCREMENT PRIMARY KEY,
    dose VARCHAR(50) NOT NULL,
    forma_aplicacao VARCHAR(50),
    id_consulta INT,
    id_medicamento INT,
    FOREIGN KEY (id_consulta) REFERENCES consulta(id_consulta),
    FOREIGN KEY (id_medicamento) REFERENCES medicamento(id_medicamento)
);