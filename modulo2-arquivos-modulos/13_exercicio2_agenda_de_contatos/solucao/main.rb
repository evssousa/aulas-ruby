require 'csv'

print "Digite o nome da pessoa: "
nome = gets.chomp
print "Digite a idade da pessoa: "
idade = gets.chomp
print "Digite a cidade que a pessoa mora: "
cidade = gets.chomp

CSV.open("data/contatos.csv", "a") do |csv|
    csv << [nome, idade, cidade]
end

CSV.foreach("data/contatos.csv", headers: true) do |row|
    puts "Nome: #{row["Nome"]}, Idade: #{row["Idade"]}, Cidade: #{row["Cidade"]}"
end