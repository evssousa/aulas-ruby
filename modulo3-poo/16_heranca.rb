# =========================================================
=begin
    ruby 16_heranca.rb
    Iremos aprender a utilizar herança.
=end
# =========================================================
# =========================================================
puts "= " * 10 # 1-Entendendo...
# =========================================================
class Game
    attr_reader :nome, :genero, :preco
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
end

# O símbolo < indica que DownloadGame está herdando as
# informações de Game, atributos, métodos, etc
# Classe Game chamamos de "classe Pai"
class DownloadGame < Game
    attr_accessor :download_tamanho

    def initialize(nome, genero, multiplayer, versao, preco, download_tamanho)
        # O método super faz com que herdemos os atributos 
        # da classe Pai sem precisarmos reescrever
        super(nome, genero, multiplayer, versao, preco)
        # Mas aqui precisamos criar um novo devido a este
        # não está na classe pai, ele é específico da classe
        # DownloadGame
        @download_tamanho = download_tamanho
    end
end

game1 = Game.new("Fifa", "Esporte", true, [2018, 2019, 2020], 100)
puts game1
puts game1.dados_tecnicos

game2 = DownloadGame.new("Call of Duty", "Ação", true, ["Black Ops"], 100, 60)
puts game2
puts game2.dados_tecnicos
# ATENÇÃO! Nesse exemplo não irá aparecer a informação
# de @download_tamanho isso será feito no Polimorfismo,
# então o resultado não aparecerá a informação do tamanho
# de download no terminal