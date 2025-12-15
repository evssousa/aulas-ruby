# =========================================================
=begin
    02_inicializacao.rb
    Iremos aprender a utilizar o método initialize e criar
    variáveis de instância.
=end
# =========================================================
# =========================================================
puts "= " * 10 # 1-Entendendo...
# =========================================================
class Game
    # Responsável por adicionar as configurações iniciais
    def initialize 
        puts "Novo objeto de jogo foi criado"
        # Variáveis de instância
        @nome = "Pes"
        @genero = "Esporte"
        @multiplayer = true
        @versao = [2018, 2019, 2020]
        @preco = 100
    end
end

game1 = Game.new
puts game1 #<Game:0x00007a8b9b04d110>

# Com p mostra as informações internas do objeto
p game1 
#<Game:0x00007a8b9b04d110 @nome="Pes", @genero="Esporte", 
#@multiplayer=true, @versao=[2018, 2019, 2020], @preco=100>