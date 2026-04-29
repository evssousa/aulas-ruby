require 'mongo'

# Conexão com o banco de dados
client = Mongo::Client.new("mongodb+srv://db_teste:123456abc@teste.lemcume.mongodb.net/?appName=Teste")

# Informa qual o banco deve gravar a informação
db = client.use("fliperama")

# Informa em qual collection deve gravar a informação
collection = db[:jogos]

# Informação a ser inserida
collection.insert_one({
    nome: "Zelda",
    ano: 1998,
    nota: 9.8
})

puts "Jogo inserido com sucesso!"