# =========================================================
=begin
    Iremos aprender a passar valores como argumentos.
=end
# =========================================================

# =========================================================
puts "= " * 10 # 1-Utilizando argumentos
# =========================================================
ARGV.each { |argumento| puts argumento }
ARGV.each { |argumento| puts argumento.class }
# aqui, você poderá digitar algo a mais no console
# tipo: ruby main.rb Olá mundo

# =========================================================
puts "= " * 10 # 2-Outro exemplo
# =========================================================
ARGV.each do |argumento|
    quadrado = argumento.to_i ** 2
    puts "A raiz quadrada de #{argumento} é #{quadrado}"
end # no console: ruby main.rb 4, por exemplo

# =========================================================
puts "= " * 10 # 3-Salvar conteúdo do argumento em arquivo
# =========================================================
File.open("data/games.txt", "a") do |arquivo|
    ARGV.each do |game|
        arquivo.puts game
    end
end # no final, irá adicionar a informação ao arquivo games.txt