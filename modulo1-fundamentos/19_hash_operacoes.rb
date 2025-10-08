filmes = ["Homem Aranha", "Super Mario Bros", "O Máscara"]

# =========================================================
puts "= " * 10 # 1-Indexação e atribuição
# =========================================================
puts filmes[0]      # primeiro item do array filmes
puts filmes[-1]     # último item do array
puts filmes[1, 2]   # segundo e terceiro item

filmes[2] = "Top Gun Maverick" # altera o index 2
puts filmes # "Homem Aranha", "Super Mario Bros", "Top Gun Maverick"

filmes << "Avatar" # adiciona no final do array
puts filmes # "Homem Aranha", "Super Mario Bros", "Top Gun Maverick", "Avatar"

# =========================================================
puts "= " * 10 # 2-Métodos úteis
# =========================================================
puts filmes.length              # tamanho do array
puts filmes.first               # mostra primeiro item do array
puts filmes.last                # mostra o último item do array

puts filmes.include?("Homem Aranha")    # true (mostra se está incluso no array)

filmes.append("Procurando Nemo")    # adiciona no final do array
puts filmes 
# "Homem Aranha", "Super Mario Bros", "Top Gun Maverick", "Avatar", "Procurando Nemo"

puts filmes.sort()              # organiza o array por ordem alfabética
puts filmes.shuffle()           # embaralha o array

# =========================================================
puts "= " * 10 # 3-Conversões
# =========================================================
=begin
.to_i -> converte para inteiro
.to_s -> converte para string
.to_f -> converte para float
.to_a -> converte para array
=end