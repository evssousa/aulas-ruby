# =========================================================
=begin
    Iremos aprender a utilizar o ActiveRecord, uma
    ferramenta ORM (Object Relational Mapping) muito popular
    no Ruby.

    O ActiveRecord permite trabalhar com banco de dados
    usando classes e objetos, sem precisar escrever SQL
    manualmente o tempo todo.

    VANTAGENS DO ACTIVERECORD
    - Menos SQL manual
    - Código mais organizado
    - Mais produtividade
    - Muito usado no Ruby on Rails
    - Facilita CRUD
=end
# =========================================================

# =========================================================
# === 1-INSTALANDO A BIBLIOTECA NECESSÁRIA
# =========================================================
# Iremos instalar as seguintes bibliotecas:
# > gem install activerecord
# > gem install sqlite3

# =========================================================
# === 2-ESTUDO DO CÓDIGO
# =========================================================
require 'active_record'

# Configuração do banco de dados
# Conecta o Ruby ao banco de dados SQLite
ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'fliperama.db'
)

# Criação da tabela
ActiveRecord::Schema.define do
  # Cria a tabela users, caso não exista irá criar
  create_table :users, if_not_exists: true do |t|
    # Campos/colunas da tabela
    t.string :nome
    t.string :email
  end
end

# Definição do modelo
# Essa classe representa a tabela users
class User < ActiveRecord::Base
end

# Inserindo dados
# Salva um registro no banco
user = User.new(nome: 'Fulano', email: 'fulano@email.com')
user.save

# Recuperando dados
# Busca todos os registros da tabela
users = User.all

users.each do |user|
  puts "Nome: #{user.nome}, Email: #{user.email}"
end