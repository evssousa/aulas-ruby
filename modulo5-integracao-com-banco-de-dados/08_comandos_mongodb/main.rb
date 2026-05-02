# =========================================================
=begin
    Iremos aprender alguns comandos fundamentais do MongoDB
    utilizando o MongoDB Atlas com Ruby.

    Em vez de utilizar o Mongo Shell local, iremos executar
    tudo com Ruby conectado ao banco na nuvem.
=end
# =========================================================

# =========================================================
# === 1-INSTALANDO A BIBLIOTECA NECESSÁRIA
# =========================================================
# Iremos instalar as seguintes bibliotecas:
# > gem install mongo

# =========================================================
# === 2-CONECTANDO AO MONGODB ATLAS
# =========================================================
require 'mongo'

# client = Mongo::Client.new("SUA_URL")
client = Mongo::Client.new("mongodb+srv://db_teste:123456abc@teste.lemcume.mongodb.net/?appName=Teste")

# =========================================================
# === 3-MOSTRAR BANCO EXISTENTES
# =========================================================
puts "Bancos disponíveis"
puts client.database_names

# =========================================================
# === 4-SELECIONANDO BANCO
# =========================================================
db = client.use("fliperama")

puts "\nBanco selecionado: fliperama"

# =========================================================
# === 5-MOSTRAR COLLECTIONS
# =========================================================
# Collections no MongoDB seriam as tabelas
puts "\nCollections atuais:"
puts db.database.collection_names

# =========================================================
# === 6-CRIANDO COLLECTION
# =========================================================
db[:users]
puts "\nCollection users criada!"

puts "\nCollections agora:"
puts db.database.collection_names

# =========================================================
# === 7-INSERINDO DOCUMENTOS
# =========================================================
# Documentos no MongoDB seriam as linhas
users = db[:users]

users.insert_one({
    name: "Fulano",
    email: "fulano@email.com",
    phone: "3243432"
})

users.insert_one({
    name: "Test",
    email: "test@email.com",
    phone: "67687634"
})

puts "\nUsuários inseridos!"

# Comente o passo 7 quando for executar a partir daqui
# para que isso não gere registros duplicados!!!

# =========================================================
# === 8-BUSCANDO TODOS OS DOCUMENTOS
# =========================================================
puts "\nTodos os usuários:"
users.find.each do |user|
  puts user
end