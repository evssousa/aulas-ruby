-- Todos os filmes em ordem alfabética.
SELECT * FROM Filmes ORDER BY titulo ASC;

-- Todos os filmes com bilheteria acima de US$ 500 milhões.
SELECT * FROM Filmes WHERE bilheteria > 500000000.00;

-- Todas as séries já finalizadas ordenadas da melhor avaliação para a pior.
SELECT * FROM Series_TV WHERE situacao == 'Finalizada' ORDER BY avaliacao DESC;

-- Os IDs, nomes, anos de lançamento, gêneros, número de temporadas e episódios, avaliações e situações das séries, ordenadas da mais recente para a mais antiga.
SELECT id, titulo, ano, genero, temporadas, episodios, avaliacao, situacao FROM Series_TV ORDER BY ano DESC;

-- Todos os filmes lançados antes dos anos 2000.
SELECT * FROM Filmes WHERE ano < 2000;

-- Os títulos, anos de lançamento, gênero e avaliação dos filmes ordenados por sua avaliação pela crítica.
SELECT titulo, ano, genero, avaliacao FROM Filmes ORDER BY avaliacao ASC;

-- A média de avaliação entre os filmes de até 2 horas e a média de avaliação dos filmes de mais de 2 horas (em colunas separadas).
SELECT AVG(avaliacao) AS Media_Avaliação_Filme_Menor_Que_2_Horas FROM Filmes WHERE duracao <= 120;
SELECT AVG(avaliacao) AS Media_Avaliação_Filme_Maior_Que_2_Horas FROM Filmes WHERE duracao >= 120;