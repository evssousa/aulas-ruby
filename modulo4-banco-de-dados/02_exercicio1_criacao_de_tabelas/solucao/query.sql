CREATE TABLE IF NOT EXISTS Clientes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    telefone TEXT,
    endereco TEXT,
    data_cadastro TEXT NOT NULL DEFAULT CURRENT_DATE
);

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

CREATE TABLE IF NOT EXISTS Pedidos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    mesa INTEGER NOT NULL,
    data_hora_pedido TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    situacao TEXT
);

CREATE TABLE IF NOT EXISTS Ingredientes_estoque (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    categoria TEXT,
    quantidade INTEGER NOT NULL DEFAULT 0
);

-- SOBRE OS DEFAULTS
/*
DEFAULTS são valores padrões, nesse caso:
- CURRENT_DATE: usa automaticamente a data atual do sistema
- CURRENT_TIMESTAMP: usa automaticamente a data e tempo do sistema atual
- DEFAULT 0: usa como padrão o valor 0 inicial
*/