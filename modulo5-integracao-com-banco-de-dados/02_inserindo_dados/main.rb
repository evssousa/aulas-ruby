# =========================================================
=begin
    Iremos aprender como inserir dados em uma tabela
    utilizando Ruby com SQLite.
=end
# =========================================================

# =========================================================
# === 1-INSTALANDO A BIBLIOTECA NECESSÁRIA
# =========================================================
# Para trabalhar com banco de dados SQLite no Ruby,
# precisamos instalar a gem: > gem install sqlite3

# =========================================================
# === 2-INSERÇÃO DE DADOS
# =========================================================
require 'sqlite3'

db = SQLite3::Database.new 'fliperama.db'

# Array de registros que serão inseridos
registros = [
  { name: 'Resident Evil 4', year: 2023, score: 9.5 },
  { name: 'Spider Man 2', year: 2023, score: 9.0 }
]

begin
  # Itera sobre os registros e insere no banco
  registros.each do |registro|
    name = registro[:name]
    year = registro[:year]
    score = registro[:score]

    # Cria a instrução SQL de inserção
    insert_query = "INSERT INTO jogo (name, year, score)
                    VALUES ('#{name}', #{year}, #{score})"

    # Executa a instrução SQL
    db.execute(insert_query)
  end

  puts "Registros inseridos com sucesso!"

ensure
    db.close if db
end

# =========================================================
# === 3-EXECUTANDO O SCRIPT RUBY
# =========================================================
# No terminal execute: >ruby main.rb