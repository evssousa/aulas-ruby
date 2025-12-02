# =========================================================
=begin
    Iremos aprender mais detalhes sobre utilização do
    módulo CSV. Crie uma pasta chamada "data" para receber
    o arquivo CSV.
=end
# =========================================================

# =========================================================
puts "= " * 10 # 1-Escrevendo dados em CSV
# =========================================================
require 'csv'

CSV.open("data/example.csv", "w") do |csv|
    # Colunas do CSV
    csv << ["Nome", "Idade", "Cidade"]
    # Linhas do CSV
    csv << ["Aline", 25, "São Paulo"]
    csv << ["Bob", 30, "Rio de Janeiro"]
    csv << ["Wick", 34, "Ceará"]
end

# =========================================================
puts "= " * 10 # 2-Lendo dados de CSV
# =========================================================
CSV.foreach("data/example.csv", headers: true) do |row|
    # Nome das colunas do arquivo CSV
    nome = row["Nome"]
    idade = row["Idade"]
    cidade = row["Cidade"]
    
    puts "Nome: #{nome}, Idade: #{idade}, Cidade: #{cidade}"
end