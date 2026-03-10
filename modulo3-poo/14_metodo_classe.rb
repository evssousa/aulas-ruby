# =========================================================
=begin
    ruby 14_metodo_classe.rb
    Iremos aprender a utilizar método de classe.
=end
# =========================================================
# =========================================================
puts "= " * 10 # 1-Entendendo...
# Método de classe: o objetivo dele é seja possível utilizar
# sem a necessidade de instânciar nenhuma classe.
# =========================================================
class Game
    attr_reader :nome, :genero, :preco
    attr_writer :nome, :genero, :preco
    attr_accessor :multiplayer, :versao

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

    def dados_tecnicos
        puts "## Dados do Jogo ##"
        puts "Nome do jogo: #{@nome}"
        puts "Gênero do jogo: #{@genero}"
        puts "Preço do jogo: R$#{@preco}"
    end

    # Método de classe para calcular o preço com desconto
    # Utilizamos o comando "self"
    def self.preco_desconto(preco, porcentagem_desconto)
      preco -= (preco * (porcentagem_desconto.to_f / 100))
    end
end

game1 = Game.new("Fifa", "Esporte", true, [2018, 2019, 2020], 100)
puts game1
puts game1.dados_tecnicos
# Fazendo a chamada do método de classe
puts Game.preco_desconto(game1.preco, 20) # 80.0