# =========================================================
=begin
    06_getter.rb
    Iremos aprender e entender sobre como retornar 
    os valores de variáveis de instância utilizando método 
    getter.
=end
# =========================================================
# =========================================================
puts "= " * 10 # 1-Entendendo...
# =========================================================
class Game
    puts "Novo objeto de jogo foi criado #{self}"
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

    # Método get serve para retornar os valores 
    # das variáveis de instância.
    def nome
      @nome
    end

    def genero
      @genero
    end

    def multiplayer
      @multiplayer
    end
end

# Agora para instânciar
game = Game.new
puts game.nome, game.genero, game.multiplayer
# Pes
# Esporte
# true