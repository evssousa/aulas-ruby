# =========================================================
=begin
    A estrutura de hash permite que possamos adicionar
    itens com propriedade de chave e valor
=end
# =========================================================

# =========================================================
puts "= " * 10 # 1-Criando Hash
# =========================================================
filme = Hash.new
puts filme.class # Hash

filmes = {
    # "chave" => "valor"
    "nome" => "Avatar",
    "ano" => 2023
}
puts filmes # {"nome" => "Avatar", "ano" => 2023}

# outra forma
filmes2 = {
    :nome => "Super Mario Bros",
    :ano => 2023
}
puts filmes2 # {nome: "Super Mario Bros", ano: 2023}

# (essa estrutura é bem similar ao Objeto no Javascript)

# =========================================================
puts "= " * 10 # 2-Iterando valores (for, while e each)
# =========================================================
puts filmes2.keys           # nome | ano
puts filmes2.values         # Super Mario Bros | 2023

for key, value in filmes2
    puts "#{key}-#{value}"
end # nome-Super Mario Bros | ano-2023

i = 0
while i < filmes2.length
    puts "#{filmes.keys[i]}-#{filmes2.values[i]}"
    i += 1
end # nome-Super Mario Bros | ano-2023

filmes2.each{ |key, value| puts "#{key}-#{value}" } # nome-Super Mario Bros | ano-2023