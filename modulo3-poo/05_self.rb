# =========================================================
=begin
    05_self.rb
    Iremos aprender e entender a palavra reservada self.
=end
# =========================================================
# =========================================================
puts "= " * 10 # 1-Entendendo...
# A palavra chave self no contexto do código refere-se à
# instância atual da classe Game. Ela pode ser usada para
# se referir a métodos ou variáveis de instância.
# =========================================================
class Game
    # Colocando o puts fora do def initialize.
    puts "Novo objeto de jogo foi criado #{self}"
    # Retorno: Novo objeto de jogo foi criado Game
    # Game é a classe onde o self está referênciando.
    def initialize 
        @nome = "Pes"
        @genero = "Esporte"
        @multiplayer = true
        @versao = [2018, 2019, 2020]
        @preco = 100
    end

    def informacao
        puts "O jogo é o gênero #{@genero} e as versões: #{@versao}"
    end

    def dados_tecnicos
        puts "## Dados do Jogo ##"
        puts "Nome do jogo: #{@nome}"
        puts "Gênero do jogo: #{@genero}"
        puts "Preço do jogo: R$#{@preco}"
    end

    def to_s
      "#{@nome}-#{@genero}-#{@multiplayer}-#{@versao}"
    end

    # Outro exemplo, agora dentro de um método.
    def detalhes
      puts "Detalhes do jogo: #{self}"
      # Retorno: Detalhes do jogo: Pes-Esporte-true-[2018, 2019, 2020]
    end
end

game = Game.new
puts game.detalhes