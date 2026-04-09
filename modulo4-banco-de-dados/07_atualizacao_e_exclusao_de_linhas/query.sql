-- =========================================================
/*
    Iremos aprender como atualizar e remover dados de tabelas
    utilizando os comandos UPDATE e DELETE no SQLite.
*/

-- Antes de tudo, abra o banco no terminal com:
-- > sqlite3 database.db
-- Iremos executar em formato de tabela dessa vez:
-- > .mode table
-- > .read query.sql

-- !!! Lembrente: sempre comente o comando anterior para
-- ver o que o próximo comando faz !!!

-- =========================================================
-- =========================================================
-- === 1-ATUALIZANDO DADOS COM UPDATE
-- =========================================================
-- O comando UPDATE é utilizado para modificar dados existentes
-- em uma tabela
UPDATE nome_da_tabela
SET coluna1 = valor1, coluna2 = valor2
WHERE condicao;

-- Exemplo 1: atualizando registros com condição
UPDATE tvseries
SET status = 'Finalizado'
WHERE status = 'Em andamento';
-- Esse comando altera todos os registros onde o status
-- é 'Ongoing'

-- Exemplo 2: atualizando múltiplas colunas
UPDATE filmes
SET titulo = 'Star Wars: A New Hope'
    genero = 'Sci-Fi/Fantasy'
WHERE id = 2;
-- Nesse caso, estamos alterando duas colunas ao mesmo tempo
-- que se encontram no id 2

-- =========================================================
-- === 2-CUIDADO AO USAR UPDATE
-- =========================================================
-- Se você não usar o WHERE, todos os registros da tabela
-- serão modificados
UPDATE filmes
SET avaliacao = 8;

-- Esse campo altera o campo avaliacao de TODAS AS LINHAS
-- DA TABELA!

-- =========================================================
-- === 3-EXCLUINDO DADOS COM DELETE
-- =========================================================
-- O comando DELETE é utilizado para remover registros de uma
-- tabela
DELETE FROM nome_da_tabela
WHERE condicao;

-- Exemplo 1: excluindo um registro específico
DELETE FROM tvseries
WHERE titulo = 'The Office';

-- Exemplo 2: excluindo com múltiplas condições
DELETE FROM tvseries
WHERE ano_lancamento < 2000 AND temporadas > 5;

-- =========================================================
-- === 4-CUIDADO AO USAR DELETE
-- =========================================================
-- Se você não usar o WHERE, todos os registros serão apagados
DELETE FROM tvseries;

-- Esse comando remove TODOS OS DADOS DA TABELA, mas mantém
-- a estrutura!