# =========================================================
=begin
    07_setter.rb
    Iremos aprender e entender sobre como alterar os 
    valores de variáveis de instância utilizando método 
    setter.
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

    # Métodos Getters
    def nome
      @nome
    end

    def genero
      @genero
    end

    def multiplayer
      @multiplayer
    end

    # Método Setter serve para alterar os valores de
    # variáveis de instância
    def nome=(novo_valor)
      @nome = novo_valor
    end
end

game = Game.new
game.nome = "Fifa"
puts game.nome #Era Pes, agora é Fifa