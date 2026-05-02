# =========================================================
=begin
    Iremos aprender como listar dados no MongoDB utilizando
    Ruby, conectando ao MongoDB Atlas.
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
# === 3-LEITURA DE DADOS
# =========================================================
# Acessa a collection products
collection = db[:products]

# Busca todos os documentos da collection
documents = collection.find

# =========================================================
# === 4-EXIBIÇÃO DOS DADOS
# =========================================================
puts "Produtos:"

documents.each do |document|
  # No MongoDB, usamos strings para acessar os campos do
  # documento
  puts "Nome: #{document['name']}, Categoira: #{document['category']['name']}"
end