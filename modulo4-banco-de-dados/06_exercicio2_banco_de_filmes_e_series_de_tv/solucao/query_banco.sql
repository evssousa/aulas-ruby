CREATE TABLE IF NOT EXISTS Filmes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    titulo TEXT NOT NULL,
    diretor TEXT NOT NULL,
    ano INTEGER NOT NULL,
    genero TEXT NOT NULL,
    duracao INTEGER NOT NULL,
    avaliacao REAL NOT NULL,
    bilheteria REAL NOT NULL,
    custo REAL NOT NULL
);

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