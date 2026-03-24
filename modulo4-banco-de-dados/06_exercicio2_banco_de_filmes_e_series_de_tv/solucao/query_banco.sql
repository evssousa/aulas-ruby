CREATE TABLE IF NOT EXISTS Filmes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    titulo TEXT NOT NULL,
    diretor TEXT NOT NULL,
    ano INTEGER NOT NULL,
    genero TEXT NOT NULL,
    duracao INTEGER NOT NULL,
    avaliacao REAL NOT NULL,
    bilheteria TEXT NOT NULL,
    custo TEXT NOT NULL
);

INSERT INTO Filmes (titulo, diretor, ano, genero, duracao, avaliacao, bilheteria, custo)
VALUES
    ('Mad Max: Fury Road', 'George Miller', 2015, 'Ação', 120, 8.1, '375.2000.000,00', '150.000.000,00'),
    ('Star Wars', 'George Lucas', 1977, 'Sci-Fi', 121, 8.6, '775.398.007,00', '11.000.000,00'),
    ('Super Mario, Bros', 'Aaron Horvath, Michael Jelenic', 2023, 'Animação', 92, 7.3, '1.3000.000.000,00', '100.000.000,00')

CREATE TABLE IF NOT EXISTS Series_TV (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    titulo TEXT NOT NULL,
    ano INTEGER NOT NULL,
    temporadas INTEGER NOT NULL,
    episodios INTEGER NOT NULL,
    avaliacao REAL NOT NULL,
    canal TEXT NOT NULL,
    situacao TEXT NOT NULL
);