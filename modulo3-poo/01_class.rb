# =========================================================
=begin
    01_class.rb
    Iremos aprender a criar a primeira classe e intanciá-la
    em novos objetos.
=end
# =========================================================
# =========================================================
puts "= " * 10 # 1-Entendendo...
# =========================================================
class Game # criação da classe

end

# Instanciando a classe
pes = Game.new
resident_evil = Game.new
zelda = Game.new

puts pes, resident_evil, zelda
#<Game:0x000075087d0e7bd0>
#<Game:0x000075087d0e7b58>
#<Game:0x000075087d0e7b08>

puts pes.class, resident_evil.class, zelda.class
# Game
# Game
# Game
# Isso mostra qual a classe responsável pela instância