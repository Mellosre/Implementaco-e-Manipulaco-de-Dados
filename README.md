# Sistema de Gestão de Clínica Veterinária - Pet Amigão 🐾

Este repositório contém os scripts SQL desenvolvidos para a criação e manipulação do banco de dados do projeto **Pet Amigão**, uma clínica veterinária fictícia. O projeto foi desenvolvido como parte da disciplina de Modelagem de Banco de Dados (ADS - 2º Semestre).

## 🎯 Objetivos
- Implementar o modelo lógico em um SGBD Relacional (MySQL).
- Executar comandos de DDL (Criação de tabelas) e DML (Inserção, Consulta, Atualização e Exclusão).
- Garantir a integridade dos dados através de Chaves Primárias e Estrangeiras.

## 🛠️ Tecnologias Utilizadas
- **Linguagem:** SQL (Structured Query Language)
- **Banco de Dados:** MySQL
- **Ferramenta:** MySQL Workbench / DB Fiddle

## 📂 Estrutura do Repositório
1. `01_criar_tabelas.sql`: Script para criação do banco de dados e tabelas (DDL).
2. `02_inserir_dados.sql`: Script para popular as tabelas com dados de teste (INSERT).
3. `03_consultas.sql`: Exemplos de consultas avançadas utilizando JOINS (SELECT).
4. `04_atualizacao_exclusao.sql`: Exemplos de comandos de manipulação de dados (UPDATE e DELETE).

## 🚀 Como Executar
1. Clone este repositório.
2. Abra o seu SGBD (ex: MySQL Workbench).
3. Execute os scripts na ordem numérica (01 a 04).

## 📋 Modelo Lógico (Resumo)
O banco consiste nas seguintes entidades principais:
- **Cliente** (Dono do animal)
- **Pet** (Paciente)
- **Veterinário** (Profissional)
- **Consulta** (Atendimento realizado)
- **Medicamento** (Item prescrito)
- **Prescrição** (Tabela associativa entre Consulta e Medicamento)

---
*Projeto desenvolvido por Renato da Silva Mello.*