# =========================================================
=begin
    02_inicializacao.rb
    Iremos aprender a utilizar métodos de instância.
=end
# =========================================================
# =========================================================
puts "= " * 10 # 1-Entendendo...
# =========================================================
class Game
    def initialize 
        puts "Novo objeto de jogo foi criado"
        # Variáveis de instância
        @nome = "Pes"
        @genero = "Esporte"
        @multiplayer = true
        @versao = [2018, 2019, 2020]
        @preco = 100
    end

    # Criando métodos na classe Game
    # Para utilizar os atributos da classe, é necessário
    # adicionar o @ na expessão, parecido com o this no javascript
    def informacao
        puts "O jogo é o gênero #{@genero} e as versões: #{@versao}"
    end

    def dados_tecnicos
        puts "## Dados do Jogo ##"
        puts "Nome do jogo: #{@nome}"
        puts "Gênero do jogo: #{@genero}"
        puts "Preço do jogo: R$#{@preco}"
    end
end

game = Game.new
puts game.informacao
puts game.dados_tecnicos