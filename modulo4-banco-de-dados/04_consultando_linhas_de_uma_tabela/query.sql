-- =========================================================
/*
    Iremos aprender a consultar dados armazenados nas tabelas
    utilizando o comando SELECT no SQLite.
*/
-- =========================================================
-- =========================================================
-- === 1-ABRINDO BANCO DE DADOS
-- =========================================================
-- Antes de tudo, abra o banco no terminal com:
-- > sqlite3 db_hamburgeria.db
-- Iremos executar em formato de tabela dessa vez:
-- > .mode table
-- > .read query.sql

-- !!! Lembrente: sempre comente o comando anterior para
-- ver o que o próximo comando faz !!!

-- =========================================================
-- === 2-SELECIONANDO TODOS OS DADOS
-- =========================================================
-- A forma mais simples de consultar dados é utilizando:
SELECT * FROM Clientes;

-- O * significa que todas as colunas da tabela serão exibidas

-- =========================================================
-- === 3-SELECIONANDO COLUNAS ESPECIFICAS
-- =========================================================
-- Também podemos escolher quais colunas queremos visualizar
SELECT id, nome, telefone, email FROM Fornecedores;

-- =========================================================
-- === 4-RENOMEANDO COLUNAS NO RESULTADO
-- =========================================================
-- Podemos alterar o nome das colunas exibidas utilizando AS
SELECT
    id AS Codigo,
    nome AS Lanche,
    descricao AS Ingredientes,
    preco AS Valor
FROM Lanches;

-- Isso não altera a tabela, apenas o nome exibido no resultado
-- da consulta

-- =========================================================
-- === 5-FILTRANDO DADOS COM WHERE
-- =========================================================
-- O comando WHERE permite filtrar os dados com base em
-- condições
-- EXEMPLO 1: QUANTIDADE MENOR QUE 20
SELECT * FROM Ingredientes_estoque
WHERE quantidade < 20;

-- EXEMPLO 2: CATEGORIA ESPECIFICA
SELECT * FROM Ingredientes_estoque
WHERE categoria = 'Diversos';

-- =========================================================
-- === 6-UTILIZANDO OPERADORES LÓGICOS
-- =========================================================
-- Podemos combinar condições usando operadores
-- OPERADOR AND (E): Retorna resultados que atendem a
-- todas as condições
SELECT * FROM Ingredientes_estoque
WHERE categoria = 'Diversos' AND quantidade < 25;

-- OPERADOR OR (OU): Retorna resultado que atendem a pelo
-- menos uma condição
SELECT * FROM Ingredientes_estoque
WHERE categoria = 'Diversos' OR quantidade < 25;

-- OPERADOR IN: Verifica se um valor pertence a um conjunto
SELECT * FROM Ingredientes_estoque
WHERE categoria IN ('Carnes', 'Frutas');