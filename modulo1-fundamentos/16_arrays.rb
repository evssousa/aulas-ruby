# =========================================================
puts "= " * 10 # 1-Criação do array
# =========================================================
array1 = []
puts array1.class # conferir o tipo da variável

array2 = Array.new
puts array2.class

filmes_teste = ["Homem Aranha", "Super Mario Bros"]
puts filmes_teste

dois_array = Array.new(2, "De Volta para o Futuro") # repetindo a informação do array 2x
puts dois_array

# =========================================================
puts "= " * 10 # 2-Utilizando exponenciação
# =========================================================
expo = Array.new(5) { |x| x ** 2 }
puts expo

# =========================================================
puts "= " * 10 # 3-Array de números
# =========================================================
num = Array.[](1,2,3)
puts num

# =========================================================
puts "= " * 10 # 4-Arrays com múltiplos valores
# =========================================================
filmes = ["Homem Aranha", 2010, 50.00, true]
puts filmes

# =========================================================
puts "= " * 10 # 5-Iterando itens (for, while, each)
# =========================================================
# for
for filme in filmes_teste
    puts filme
end

# while
i = 0
while i < filmes_teste.length
    puts filmes_teste[i]
    i += 1
end

# each
filmes_teste.each { |a| puts a }