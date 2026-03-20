-- =========================================================
/*
    Iremos aprender comandos avançados de consulta utilizando
    SELECT no SQLite.
*/

-- Antes de tudo, abra o banco no terminal com:
-- > sqlite3 db_hamburgeria.db
-- Iremos executar em formato de tabela dessa vez:
-- > .mode table
-- > .read query.sql

-- !!! Lembrente: sempre comente o comando anterior para
-- ver o que o próximo comando faz !!!

-- =========================================================
-- =========================================================
-- === 1-INSERINDO DADOS PARA TESTES
-- =========================================================
-- Antes de realizar as consultas, iremos inserir alguns
-- registros na tabela Clientes
INSERT INTO Clientes (nome, telefone, endereco)
VALUES
    ('Nadeen Nassy', '(894) 3770999', '344 Comanche Circle'),
    ('Rufe Woolforde', '(876) 3190195', '1199 Garrison Junction'),
    ('Erl Bumphrey', '(828) 4611193', '279 Carey Way'),
    ('Libbey Allbut', '(780) 9682663', '0 Tennyson Pass'),
    ('Vick Saterthwait', '(858) 2707342', '8098 Carpenter Crossing'),
    ('Valma Leathlay', '(988) 1855788', '52 Pankratz Point'),
    ('Cathrin Balcers', '(854) 2908154', '58 Kipling Alley'),
    ('Fidelity Hurleston', '(169) 2896946', '99412 Nova Place'),
    ('Lane Beggio', '(102) 4251437', '625 Mcguire Place'),
    ('Abigale Ofield', '(414) 2709709', '4526 Ronald Regan Point'),
    ('Melisse Stappard', '(828) 1752818', '4 Sunnyside Lane'),
    ('Vito Breach', '(516) 2554781', '86120 Towne Court'),
    ('Jessalin Duckett', '(333) 6498842', '02 Artisan Center'),
    ('Bo Collie', '(163) 2032492', '0 Straubel Terrace'),
    ('Raphaela Krates', '(916) 8872820', '7798 3rd Street'),
    ('Lucian Draxford', '(827) 4937186', '739 Toban Way'),
    ('Philippa Sidon', '(475) 4933015', '64985 Clarendon Way'),
    ('Cordie Voce', '(937) 6629079', '767 Prairieview Road'),
    ('Easter Petrescu', '(135) 9137473', '32 Dayton Crossing');

-- !!! OBS: Execute essa query somente uma vez, se não você
-- irá adicionar várias informações toda vez que executar
-- seu query.sql !!!

-- =========================================================
-- === 2-ORDENANDO RESULTADOS COM ORDER BY
-- =========================================================
-- Podemos ordenar os dados retornados pelo SELECT
-- Ordem decrescente (Z-A)
SELECT * FROM Clientes
ORDER BY nome DESC;

-- Ordem crescente (A-Z)
SELECT * FROM Clientes
ORDER BY nome ASC;

-- =========================================================
-- === 3-LIMITANDO RESULTADOS COM LIMIT
-- =========================================================
-- Podemos limitar a quantidade de resultados retornados
SELECT * FROM Clientes
LIMIT 4;

-- =========================================================
-- === 4-PAGINAÇÃO COM OFFSET
-- =========================================================
-- Podemos pular registros utilizando OFFSET
SELECT * FROM Clientes
LIMIT 4 OFFSET 4;

-- Isso retorna 4 registros começando a partir do 5º

-- =========================================================
-- === 5-FUNÇÕES DE AGREGAÇÃO
-- =========================================================
-- Essas funções permitem realizar cálculos sobre dados
-- Contagem de registros
SELECT COUNT(id) AS Usuarios FROM Clientes;

-- Soma de valores
SELECT SUM(quantidade) AS Total FROM Ingredientes_estoque;

-- Média dos valores
SELECT AVG(quantidade) AS Media FROM Ingredientes_estoque;

-- =========================================================
-- === 6-BUSCAS COM LIKE
-- =========================================================
-- O operador LIKE permite buscar padrões em textos
-- Regras:
-- %: qualquer quantidade de caracteres
-- _: exatamente um caractere

-- Nome começando com "V"
SELECT * FROM Clientes
WHERE nome LIKE 'V%';

-- Segunda letra "a"
SELECT * FROM Clientes
WHERE nome LIKE '_a%';

-- Nome terminando com "d"
SELECT * FROM Clientes
WHERE nome LIKE '%d';

-- Nome contendo "an"
SELECT * FROM Clientes
WHERE nome LIKE '%an%';

-- =========================================================
-- === 7-BUSCAS SEM DIFERENCIAR MAIÚSCULAS E MINÚSCULAS
-- =========================================================
-- No SQLite, o LIKE já funciona sem diferenciar maiúsculas
-- e minúsculas na maioria dos casos
SELECT * FROM Clientes
WHERE nome LIKE '%b%';

-- Esse comando encontrará nomes com "b" ou "B"