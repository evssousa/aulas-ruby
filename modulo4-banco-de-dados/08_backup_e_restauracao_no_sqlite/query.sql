-- =========================================================
/*
    Iremos aprender como realizar backup e restauração de 
    banco de dados utilizando o SQLite.
*/

-- Como o SQLite utiliza um arquivo .db, o processo de
-- backup é simples e direto.

-- Antes de tudo, abra o banco no terminal com:
-- > sqlite3 database.db
-- Iremos executar em formato de tabela dessa vez:
-- > .mode table
-- > .read query.sql

-- !!! Lembrente: sempre comente o comando anterior para
-- ver o que o próximo comando faz !!!

-- =========================================================
-- =========================================================
-- === 1-CRIANDO UM BACKUP DO BANCO
-- =========================================================
-- No SQLite, o banco de dados é um arquivo. Portanto, fazer
-- backup significa copiar esse arquivo.

-- Método 1: Copiando o arquivo
-- No terminal: >cp database.db backup_database.db
-- Isso cria uma cópia completa do banco.

-- Método 2: Usando o comando .backup
-- Abra o banco com: sqlite3 database.db
-- Execute: >.backup backup_database.db
-- Esse comando cria um backup seguro do banco atual.

-- =========================================================
-- === 2-RESTAURANDO UM BANCO DE DADOS
-- =========================================================
-- Método 1: Substituindo o arquivo
-- Restaurar o banco: >cp backup_database.db database.db
-- Isso substitui o banco atual pelo backup.

-- Método 2: Usando .restore
-- Abra o banco com: sqlite3 database.db
-- Execute: >.restore backup_database.db
-- Esse comando cria um backup seguro do banco atual.

-- =========================================================
-- === 3-EXPORTANDO BANCO PARA ARQUIVO SQL
-- =========================================================
-- Também podemos gerar um arquivo .sql com toda a
-- estrutura e dados.
-- Abra o banco com: sqlite3 database.db
-- Execute: >.dump > backup.sql
-- Isso gera um arquivo com todos os comandos SQL necessários
-- para criar o banco

-- =========================================================
-- === 4-RESTAURANDO A PARTIR DE UM ARQUIVO SQL
-- =========================================================
-- Para restaurar usando o arquivo .sql:
-- sqlite3 novo_banco.db < backup.sql
-- Isso cria um novo banco com todos os dados restaurados.

-- =========================================================
-- === 5-BACKUP DE UMA TABELA ESPECÍFICA
-- =========================================================
-- Podemos exportar apenas uma tabela:
-- >.dump Filmes > Filmes_backup.sql

-- =========================================================
-- === 6-RESTAURANDO UMA TABELA ESPECÍFICA
-- =========================================================
-- >sqlite3 database.db < Filmes_backup.sql

-- =========================================================
-- === 7-EXCLUINDO DADOS PARA TESTE DE RESTAURAÇÃO
-- =========================================================
-- Antes de restaurar, você pode apagar dados para
-- simular perda:
DELETE FROM Filmes;
-- Depois restaure usando o backup.