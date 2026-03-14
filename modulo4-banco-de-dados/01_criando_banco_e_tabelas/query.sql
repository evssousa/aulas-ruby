-- =========================================================
/*
    Iremos aprender a criar e modificar estruturas de banco
    de dados utilizando SQLite.
*/
-- =========================================================
-- =========================================================
-- === 1-CRIANDO UMA TABELA
-- =========================================================
-- Para criar uma tabela para clientes armazenando id único,
-- nome e telefone obrigatórios e email opcional
CREATE TABLE Clientes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    telefone TEXT NOT NULL,
    email TEXT
);
-- INTEGER: tipo número
-- TEXT: tipo texto
-- PRIMARY KEY: chave primária, normalmente adicionada em id
-- AUTOINCREMENT: sempre adiciona o próximo id automaticamente
-- NOT NULL: não pode ficar vazio

-- =========================================================
-- === 2-ALTERANDO UMA TABELA
-- =========================================================
-- Podemos alterar/adicionar tabelas usando o comando ALTER TABLE
ALTER TABLE Clientes
ADD COLUMN aniversario TEXT;

-- =========================================================
-- === 3-RENOMEANDO UMA COLUNA
-- =========================================================
-- Renomeando a coluna "nome" para "nome_completo"
ALTER TABLE Clientes
RENAME COLUMN nome TO nome_completo;

-- =========================================================
-- === 4-EXCLUINDO UMA TABELA
-- =========================================================
-- DROP TABLE Clientes;
-- OBS: Essa query foi comentada para que ela não seja apagada
-- ao executar

-- =========================================================
-- === 5-CRIANDO TABELA APENAS SE NÃO EXISTIR
-- =========================================================
-- Podemos evitar erros utilizando IF NOT EXISTS
CREATE TABLE IF NOT EXISTS Clientes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    telefone TEXT NOT NULL,
    email TEXT
);
-- Se a tabela já existir, o comando será ignorado.

-- =========================================================
-- === 6-EXECUTANDO O SCRIPT NO SQLITE
-- =========================================================
-- Primeiro abra o banco com: > sqlite3 db_concessionaria.db
-- Depois no SQLite execute: > .read query.sql
-- Isso executará todos os comando presentes no arquivo.

-- =========================================================
-- === 7-VERIFICANDO SE A TABELA FOI CRIADA
-- =========================================================
-- Listando tabelas existentes no banco: > .tables
-- Visualizar a estrutura da tabela: > .schema Clientes
-- Sair do SQLite: > .quit