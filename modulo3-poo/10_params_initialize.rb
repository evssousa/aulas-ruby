# =========================================================
=begin
    10_params_initialize.rb
    Iremos aprender a utilizar parâmetros no método
    initialize.
=end
# =========================================================
# =========================================================
puts "= " * 10 # 1-Entendendo...
# =========================================================
class Game
    attr_reader :nome, :genero, :preco
    attr_writer :nome, :genero, :preco
    attr_accessor :multiplayer, :versao

    # Parâmetros que estão sendo adicionados no initialize
    def initialize(nome, genero, multiplayer, versao, preco)
        @nome = nome
        @genero = genero
        @multiplayer = multiplayer
        @versao = versao
        @preco = preco
    end

    def to_s
      "#{@nome}-#{@genero}-#{@multiplayer}-#{@versao}-#{@preco}"
    end

    # Métodos que usarão os parâmetros quando for instânciar
    def dados_tecnicos
        puts "## Dados do Jogo ##"
        puts "Nome do jogo: #{@nome}"
        puts "Gênero do jogo: #{@genero}"
        puts "Preço do jogo: R$#{@preco}"
    end
end

# Parâmetros que são passados na instância devem ter a mesma
# quantidade repassada no initialize()
game1 = Game.new("Fifa", "Esporte", true, [2018, 2019, 2020], 100)
puts game1
puts game1.dados_tecnicos

game2 = Game.new("Alan Wake", "Suspense", false, [], 200)
puts game2
puts game2.dados_tecnicos