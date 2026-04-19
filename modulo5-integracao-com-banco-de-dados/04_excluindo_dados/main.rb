# =========================================================
=begin
    Iremos aprender como remover dados de uma tabela
    utilizando Ruby com SQLite.
=end
# =========================================================

# =========================================================
# === 1-INSTALANDO A BIBLIOTECA NECESSÁRIA
# =========================================================
# Para trabalhar com banco de dados SQLite no Ruby,
# precisamos instalar a gem: > gem install sqlite3

# =========================================================
# === 2-EXCLUSÃO DE DADOS
# =========================================================
require 'sqlite3'

db = SQLite3::Database.new 'fliperama.db'

# ID do registro que será excluído
id_do_registro = 4 # Altere conforme necessário

begin
  # Query de exclusão
  delete_query = "DELETE FROM jogo WHERE id = #{id_do_registro}"

  db.execute(delete_query)

  puts "Registro excluído com sucesso!"

ensure
  db.close if db
end

# =========================================================
# === 3-EXECUTANDO O SCRIPT RUBY
# =========================================================
# No terminal execute: >ruby main.rb