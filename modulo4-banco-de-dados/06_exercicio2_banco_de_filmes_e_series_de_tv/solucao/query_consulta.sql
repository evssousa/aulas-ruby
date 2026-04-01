-- Todos os filmes em ordem alfabética.
SELECT * FROM Filmes ORDER BY titulo ASC;

-- Todos os filmes com bilheteria acima de US$ 500 milhões.
SELECT * FROM Filmes WHERE bilheteria > 500000000.00;

-- Os IDs, nomes, anos de lançamento, gêneros, número de temporadas e episódios, avaliações e situações das séries, ordenadas da mais recente para a mais antiga.
-- Todas as séries já finalizadas ordenadas da melhor avaliação para a pior.
-- Todos os filmes lançados antes dos anos 2000.
-- Os títulos, anos de lançamento, gênero e avaliação dos filmes ordenados por sua avaliação pela crítica.
-- A média de avaliação entre os filmes de até 2 horas e a média de avaliação dos filmes de mais de 2 horas (em colunas separadas).
-- Os nomes, anos de lançamento e avaliações dos filmes ordenados pelo lucro obtido, além do próprio lucro obtido (considere lucro como bilheteria - custo).