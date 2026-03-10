# =========================================================
=begin
    ruby 15_variavel_classe.rb
    Iremos aprender a utilizar variável de classe.
=end
# =========================================================
# =========================================================
puts "= " * 10 # 1-Entendendo...
# =========================================================
class Game
    attr_reader :nome, :genero, :preco
    attr_accessor :multiplayer, :versao

    # Variável de classe para rastrear o número de jogos
    # Para criar variáveis de classe, utilizamos @@
    @@num_jogos = 0

    def initialize(nome, genero, multiplayer, versao, preco)
        @nome = nome
        @genero = genero
        @multiplayer = multiplayer
        @versao = versao
        @preco = preco

        # Incrementando o contador de jogos ao criar
        # um objeto e somar +1 quanto for criado uma instância
        @@num_jogos += 1
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

    # Método de classe para obter o número total de jogos
    def self.total_jogos
      @@num_jogos
    end
end

game1 = Game.new("Fifa", "Esporte", true, [2018, 2019, 2020], 100)
puts game1
puts game1.dados_tecnicos

# Chamando o método de classe self.total_jogos para verificar
# a quantidade de jogos foram instanciados
puts "Número total de jogos instanciados = #{Game.total_jogos}"