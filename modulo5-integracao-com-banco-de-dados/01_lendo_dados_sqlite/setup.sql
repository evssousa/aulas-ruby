-- =========================================================
-- === 3-CRIANDO DADOS PARA TESTE
-- =========================================================
CREATE TABLE IF NOT EXISTS jogo (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  year INTEGER,
  score INTEGER
);

INSERT INTO jogo (name, year, score) VALUES
('Mario', 1985, 95),
('Zelda', 1986, 98),
('Sonic', 1991, 90);

-- Execute no terminal: >sqlite3 fliperama.db < setup.sql