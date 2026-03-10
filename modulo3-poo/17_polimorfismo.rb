# =========================================================
=begin
    ruby 17_polimorfismo.rb
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

class DownloadGame < Game
    attr_accessor :download_tamanho

    def initialize(nome, genero, multiplayer, versao, preco, download_tamanho)
        super(nome, genero, multiplayer, versao, preco)
        @download_tamanho = download_tamanho
    end

    # Aqui iremos implementar o Polimorfismo, onde
    # devemos colocar o mesmo nome do método da classe pai
    def dados_tecnicos
        super # Isso trás tudo o que tem dentro do método da classe pai
        puts "Tamanho do Download: #{download_tamanho} GB"
    end
end

game1 = Game.new("Fifa", "Esporte", true, [2018, 2019, 2020], 100)
puts game1
puts game1.dados_tecnicos

game2 = DownloadGame.new("Call of Duty", "Ação", true, ["Black Ops"], 100, 60)
puts game2
puts game2.dados_tecnicos