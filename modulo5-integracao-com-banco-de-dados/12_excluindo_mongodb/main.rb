# =========================================================
=begin
    Iremos aprender como excluir dados no MongoDB
    utilizando Ruby como MongoDB Atlas.
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
# === 3-EXCLUSÃO DE DADOS
# =========================================================
# delete_one remove apenas o primeiro documento encontrado
result = db[:products].delete_one({ 
  # Busca o document com nome 'Notebook'
  name: 'Notebook' 
})

# =========================================================
# === 4-VERIFICAÇÃO DO RESULTADO
# =========================================================
# result.deleted_count retorna quantos documentos foram
# removidos
if result.deleted_count > 0
  puts "Registro excluído com sucesso."
else
  puts "Nenhum documento foi atualizado."
end