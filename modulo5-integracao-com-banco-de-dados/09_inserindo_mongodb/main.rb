# =========================================================
=begin
    Iremos aprender como inserir dados no MongoDB 
    utilizando Ruby, porém usando MongoDB Atlas, em vez
    de banco local.
=end
# =========================================================

# =========================================================
# === 1-INSTALANDO A BIBLIOTECA NECESSÁRIA
# =========================================================
# Iremos instalar as seguintes bibliotecas:
# > gem install mongo

# =========================================================
# === 2-CONFIGURAÇÃO DO BANCO
# =========================================================
require 'mongo'

client = Mongo::Client.new("mongodb+srv://db_teste:123456abc@teste.lemcume.mongodb.net/?appName=Teste")
db = client.use("ecommerce")

# =========================================================
# === 3-INSERINDO DADOS
# =========================================================
result = db[:products].insert_one({
    name: 'Notebook',
    category: {
        name: 'Eletronicos'
    }
})

puts "\nProduto adicionado!"

# =========================================================
# === 4-VERIFICANDO RESULTADO
# =========================================================
if result.inserted_id
  puts "Dados inseridos com sucesso! ID: #{result.inserted_id}"
else
    puts "Falha ao inserir os dados."
end