-- =========================================================
/*
    Iremos aprender a inserir dados nas tabelas do banco
    utilizando o comando INSERT no SQLite.
*/
-- =========================================================
-- =========================================================
-- === 1-ABRINDO BANCO DE DADOS
-- =========================================================
-- Antes de tudo, abra o banco no terminal com:
-- > sqlite3 db_hamburgeria.db
-- Depois disso poderá executar comandos SQL diretamente
-- no banco.

-- =========================================================
-- === 2-CRIANDO UMA TABELA
-- =========================================================
CREATE TABLE IF NOT EXISTS Clientes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    telefone TEXT,
    endereco TEXT,
    data_cadastro TEXT NOT NULL DEFAULT CURRENT_DATE
);

-- =========================================================
-- === 3-INSERINDO UMA LINHA EM UMA TABELA
-- =========================================================
-- Para adicionar um novo registro em uma tabela, utilizamos
-- o comando INSERT INTO
INSERT INTO Clientes (nome, telefone, endereco, data_cadastro)
VALUES ('John', '(85 99100-0000)', 'Rua A, nº150', '2026-03-15');

-- =========================================================
-- === 4-INSERINDO OUTROS REGISTROS
-- =========================================================
-- (Criando a tabela Fornecedores e Lanches)
CREATE TABLE IF NOT EXISTS Fornecedores (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    telefone TEXT,
    email TEXT,
    data_contratacao TEXT NOT NULL DEFAULT CURRENT_DATE,
    observacoes TEXT
);

CREATE TABLE IF NOT EXISTS Lanches (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    descricao TEXT,
    preco REAL NOT NULL
);

-- Agora vamos inserir um fornecedor e lanches
INSERT INTO Fornecedores (nome, telefone, email, observacoes)
VALUES ('ACME Inc.', '(85) 99123-4567', 'acme@gmail.com', 'N/a');

INSERT INTO Lanches (nome, descricao, preco)
VALUES ('Hamburguer', 'Pão, carne, alface, tomate, molho especial, batata palha', 8);

-- OBS: As colunas podem ser escritas em qualquer ordem,
-- desde que os valores estejam na mesma ordem definida
-- após o VALUES

-- =========================================================
-- === 5-INSERINDO VALIAS LINHAS DE UMA VEZ
-- =========================================================
-- (Criando a tabela ingredientes ao estoque)
CREATE TABLE IF NOT EXISTS Ingredientes_estoque (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    categoria TEXT,
    quantidade INTEGER NOT NULL DEFAULT 0
);

INSERT INTO Ingredientes_estoque (nome, categoria, quantidade)
VALUES
    ('Ovos', 'Diversos', 24),
    ('Tomate', 'Frutas', 14),
    ('Queijo', 'Diversos', 40),
    ('Presunto', 'Carnes', 40);

-- Cada conjunto de valores entre parênteses representa uma
-- nova linha que será inserida na tabela

-- =========================================================
-- === 6-VERIFICANDO OS DADOS INSERIDOS
-- =========================================================
-- Para visualizar os dados de uma tabela utilize
-- o comando SELECT
SELECT * FROM Clientes;

-- Ver fornecedores
SELECT * FROM Fornecedores;

-- Ver ingredientes em estoque
SELECT * FROM Ingredientes_estoque;