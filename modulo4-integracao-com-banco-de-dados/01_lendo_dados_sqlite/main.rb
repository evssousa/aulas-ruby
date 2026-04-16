# =========================================================
=begin
    Iremos aprender como ler dados de um banco de dados
    SQLite utilizando Ruby.
=end
# =========================================================

# =========================================================
# === 1-INSTALANDO A BIBLIOTECA NECESSÁRIA
# =========================================================
# Para trabalhar com banco de dados SQLite no Ruby,
# precisamos instalar a gem: > gem install sqlite3

# =========================================================
# === 2-LEITURA DE DADOS
# =========================================================
require 'sqlite3'

# Conectando ao banco de dados (arquivo.db)
# Abre ou cria o banco
# No SQLite não é necessário usuário, senha ou host
db = SQLite3::Database.new 'fliperama.db'

# Faz com que os resultados sejam retornados como hash
# (nome das colunas). Permite acessar os dados assim: row['name']
db.results_as_hash = true

# Consulta SQL
query = "SELECT * FROM jogo"

begin
    # Executa a consulta
    result = db.execute(query)

    # Itera sobre os resultados
    result.each do |row|
        puts "ID: #{row['id']} - Nome: #{row['name']} - Ano: #{row['year']} - Score: #{row['score']}"
    end

ensure
    # Fecha a conexão com o banco
    db.close if db
end

# =========================================================
# === 4-EXECUTANDO O SCRIPT RUBY
# =========================================================
# No terminal execute: >ruby main.rb

# Saída esperada:
=begin
    ID: 1 - Nome: Mario - Ano: 1985 - Score: 95
    ID: 2 - Nome: Zelda - Ano: 1986 - Score: 98
    ID: 3 - Nome: Sonic - Ano: 1991 - Score: 90
=end