# =========================================================
=begin
    08_attr.rb
    Iremos aprender e entender sobre como definir
    atributos.
=end
# =========================================================
# =========================================================
puts "= " * 10 # 1-Entendendo...
# =========================================================
class Game
    # Ler os atributos do método initialize
    attr_reader :nome, :genero, :preco

    # Escreve nos atributos do método initialize
    attr_writer :nome, :genero, :preco

    # Ler e escreve nos atributos do método initialize
    attr_accessor :multiplayer, :versao

    def initialize 
        @nome = "Pes"
        @genero = "Esporte"
        @multiplayer = true
        @versao = [2018, 2019, 2020]
        @preco = 100
    end

    def to_s
      "#{@nome}-#{@genero}-#{@multiplayer}-#{@versao}"
    end
end

game = Game.new
# attr_reader
p game.nome # "Pes"

# attr_writer
game.genero = "Futebol"
p game.genero

# attr_accessor
game.multiplayer = false
p game.multiplayer