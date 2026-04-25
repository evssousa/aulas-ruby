# =========================================================
=begin
    Iremos aprender a utilizar o ActiveRecord com Ruby
    para desenvolver um sistema simples de gerenciamento de
    estoque de produtos.
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

# Configurar banco de dados
ActiveRecord::Base.establish_connection(
    adapter: 'sqlite3',
    database: 'estoque.db'
)

# Definir o esquema do banco
ActiveRecord::Schema.define do
    create_table :categorias, if_not_exists: true do |t|
        t.string :nome
    end

    create_table :produtos, if_not_exists: true do |t|
        t.string :nome
        t.integer :categoria_id
        t.integer :quantidade_estoque, default: 0
    end
end

# Definir modelos
class Categoria < ActiveRecord::Base
    # Força o ActiveRecord a reconhecer o nome das tabelas
    self.table_name = "categorias"
    # Relacionamento: uma categoria possui vários produtos
    has_many :produtos
end

class Produto < ActiveRecord::Base
    self.table_name = "produtos"
    # Relacionamento: um produto pertence a uma categoria
    belongs_to :categoria

    def decrementar_estoque(valor)
        if quantidade_estoque >= valor
            self.quantidade_estoque -= valor
            save
        else
            puts "Não há estoque suficiente para realizar a operação."
        end
    end

    def incrementar_estoque(valor)
        self.quantidade_estoque += valor
        save
    end
end

# Utilizar modelos
categoria = Categoria.create(nome: 'Eletronicos')

produto1 = categoria.produtos.create(
    nome: 'Smartphone',
    quantidade_estoque: 10
)

produto2 = categoria.produtos.create(
    nome: 'Notebook',
    quantidade_estoque: 5
)

# Movimentação do estoque
produto1.decrementar_estoque(3)
produto2.incrementar_estoque(5)

# Recuperação de dados
todos_produtos = Produto.all

todos_produtos.each do |produto|
    puts "Nome: #{produto.nome}, Categoria: #{produto.categoria.nome}, Estoque: #{produto.quantidade_estoque}"
end