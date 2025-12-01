require 'csv'

CSV.open("data/contatos.csv", "w") do |csv|
    print "Digite o nome da pessoa: "
    nome = gets.chomp
    print "Digite a idade da pessoa: "
    idade = gets.chomp.to_i
    print "Digite a cidade que a pessoa mora: "
    cidade = gets.chomp

    csv << ["Nome", "Idade", "Cidade"]
    csv << [nome, idade, cidade]
end