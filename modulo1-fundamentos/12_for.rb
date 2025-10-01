# Forma 1
for a in 1..5
    puts a
end

# Forma 2
(3..5).each do |b|
    puts b
end

# =====================================================
lista_filmes = ["O Máscara", "Homem Aranha", "Batman", "Super Mario"]

puts "=" * 20 # 1-Iterando valores de uma lista
lista_filmes.each do |filme|
    puts filme
end

puts "=" * 20 # 2-Quando a condição for atendida, o loop será encerrado
lista_filmes.each do |filme|
    if filme == "Homem Aranha"
        break
    end
    
    puts filme
end

puts "=" * 20 # 3-Quando a condição for atendida, o loop vai para a próxima iteração
lista_filmes.each do |filme|
    if filme == "Homem Aranha"
        next
    end

    puts filme
end

puts "=" * 20 # 4-Avaliação do jogo (com times)
print "Digite o nome do filme: "
nome_filme = gets.chomp

print "Digite quantas avaliações deseja fazer no filme: "
filme_avaliacao = gets.chomp.to_i

soma = 0

filme_avaliacao.times do # .times executa o bloco um número específico de vezes
    print "Digite a nota para o filme: "
    nota = gets.chomp.to_f
    soma += nota
end

media = soma / filme_avaliacao

puts "Média de avaliação do filme #{nome_filme} é de #{media.round 2}"