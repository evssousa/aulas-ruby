# =========================================================
=begin
    Iremos aprender como atualizar dados no MongoDB
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
# === 3-ATUALIZAÇÃO DE DADOS
# =========================================================
# update.one atualiza apenas um documento
result = db[:products].update_one(
  { name: 'Notebook' }, # Busca o document com nome 'Notebook'
  {
    # Operador $set atualiza campos específicos do documento
    "$set" => { 
      category: {
        name: 'Laptop' # Novo valor
      }
    }
  }
)

# =========================================================
# === 4-VERIFICAÇÃO DO RESULTADO
# =========================================================
# result.modified_count retorna quantos documentos foram
# modificados
if result.modified_count > 0
  puts "Dados atualizados com sucesso."
else
  puts "Nenhum documento foi atualizado."
end