# =========================================================
=begin
    Iremos aprender como atualizar dados de uma tabela
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

# ID do registro que será atualizado
id_do_registro = 1 # Altere conforme necessário

# Novos valores
new_name = 'Mortal Kombat 1'
new_year = 2023
new_score = 8.5

begin
  # Query de atualização
  update_query = "UPDATE jogo SET name = '#{new_name}',
                  year = #{new_year},
                  score = #{new_score}
                  WHERE id = #{id_do_registro}"
  db.execute(update_query)

  puts "Registro atualizado com sucesso!"

ensure
  db.close if db
end

# =========================================================
# === 3-EXECUTANDO O SCRIPT RUBY
# =========================================================
# No terminal execute: >ruby main.rb