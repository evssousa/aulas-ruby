# =========================================================
puts "= " * 10 # 1-Indexação e atribuição
# =========================================================
filmes = ["Homem Aranha", "Super Mario Bros", "O Máscara"]
puts filmes[0]          # primeiro filme
puts filmes[-1]         # último filme
puts filmes[1, 2]       # mostra index 1 e 2

# substitui o index 2
filmes[2] = "Top Gun Maverick"
puts filmes

# adiciona no final do array
filmes << "Avatar"
puts filmes

# =========================================================
puts "= " * 10 # 2-Métodos úteis
# =========================================================
frutas = ["Maçã", "Abacaxi", "Goiaba"]
puts frutas.length              # ver tamanho do array
puts frutas.first               # ver o primeiro item do array
puts frutas.last                # ver o último item do array

# adiciona item no final do array
frutas.append("Morango")
puts frutas

puts frutas.sort()              # organiza em ordem alfabética
puts frutas.shuffle()           # embaralha a ordem do array

# =========================================================
puts "= " * 10 # 3-Recuperando índice e valor
# =========================================================
sistemas = ["Windows", "Linux", "iOS"]
sistemas.each_with_index{ |value, index| puts "#{index}-#{value}" }