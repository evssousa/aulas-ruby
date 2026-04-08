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

INSERT INTO Filmes (titulo, diretor, ano, genero, duracao, avaliacao, bilheteria, custo)
VALUES
    ('Mad Max: Fury Road', 'George Miller', 2015, 'Ação', 120, 8.1, 375200000.00, 150000000.00),
    ('Star Wars', 'George Lucas', 1977, 'Sci-Fi', 121, 8.6, 775398007.00, 11000000.00),
    ('Super Mario Bros', 'Aaron Horvath, Michael Jelenic', 2023, 'Animação', 92, 7.3, 1300000000.00, 100000000.00),
    ('Pride and Prejudice', 'Joe Wright', 2005, 'Romance', 129, 7.8, 121147947.00, 28000000.00),
    ('Back to the Future', 'Robert Zemeckis', 1985, 'Sci-Fi', 116, 8.5, 381109762.00, 19000000.00),
    ('The Godfather', 'Francis Ford Coppola', 1972, 'Crime', 175, 9.2, 246120974.00, 6000000.00),
    ('The Lord of the Rings: The Return of the King', 'Peter Jackson', 2003, 'Fantasia', 201, 9.0, 1146030912.00, 94000000.00),
    ('Treasure Plane', 'Ron Clements, John Musker', 2002, 'Animação', 95, 7.2, 109578115.00, 140000000.00),
    ('Jurassic Park', 'Steven Spielberg', 1993, 'Aventura', 127, 8.1, 1043580597.00, 63000000.00),
    ('About Time', 'Richard Curtis', 2013, 'Romance', 123, 7.8, 87100000.00, 12000000.00),
    ('Transformers', 'Michael Bay', 2007, 'Ação', 144, 7.0, 709709780.00, 150000000.00);

CREATE TABLE IF NOT EXISTS Series_TV (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    titulo TEXT NOT NULL,
    criador TEXT NOT NULL,
    ano INTEGER NOT NULL,
    genero TEXT NOT NULL,
    temporadas INTEGER NOT NULL,
    episodios INTEGER NOT NULL,
    avaliacao REAL NOT NULL,
    canal TEXT NOT NULL,
    situacao TEXT NOT NULL
);

INSERT INTO Series_TV (titulo, criador, ano, genero, temporadas, episodios, avaliacao, canal, situacao)
VALUES
    ('Breaking Bad', 'Vince Gilligan', 2008, 'Drama', 5, 62, 9.5, 'AMC', 'Finalizada'),
    ('Game of Thrones', 'David Benioff, D.B. Weiss', 2011, 'Fantasia', 8, 73, 9.3, 'HBO', 'Finalizada'),
    ('Stranger Things', 'The Duffer Brothers', 2016, 'Sci-Fi', 4, 34, 8.7, 'Netflix', 'Em Andamento'),
    ('Friends', 'David Crane, Marta Kauffman', 1994, 'Comédia', 10, 236, 8.9, 'NBC', 'Finalizada'),
    ('The Office', 'Greg Daniels', 2005, 'Comédia', 9, 201, 8.8, 'NBC', 'Finalizada'),
    ('Vikings', 'Michael Hirst', 2013, 'Drama Histórico', 6, 89, 8.5, 'History Channel', 'Finalizada'),
    ('Lost', 'J.J. Abrams, Damon Lindelof', 2004, 'Mistério', 6, 121, 8.4, 'ABC', 'Finalizada'),
    ('Once Upon a Time', 'Edward Kitsis, Adam Horowitz', 2011, 'Fantasia', 7, 155, 7.7, 'ABC', 'Finalizada'),
    ('The Mentalist', 'Bruno Heller', 2008, 'Crime', 7, 151, 8.1, 'CBS', 'Finalizada'),
    ('Star Trek', 'Gene Roddenberry', 1966, 'Sci-Fi', 3, 79, 8.4, 'NBC', 'Finalizada'),
    ('Cobra Kai', 'Josh Heald, Jon Hurwitz, Hayden Schlossberg', 2018, 'Ação', 5, 50, 8.6, 'Netflix', 'Em Andamento');