i = 0

while i < 5
    puts i
    i += 1
end

print "Digite o nome do filme: "
nome = gets.chomp
qtd_nota = 0
total_nota = 0
nota = 0
media = 0

while nota != -1
    print "Informe a nota do filme: "
    nota = gets.chomp.to_f

    if nota != -1
        total_nota += nota
        qtd_nota += 1
        media = total_nota / qtd_nota
    end
end

puts "Média das avaliações do filme #{nome} é #{media.round 2}"