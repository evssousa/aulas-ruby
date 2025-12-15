# =========================================================
=begin
    04_sobrescrever_metodos.rb
    Iremos aprender a sobrescrever o método to_s para
    melhorar a mensagem que é retornada quando uma instância
    de uma classe é criada.
=end
# =========================================================
# =========================================================
puts "= " * 10 # 1-Entendendo...
# =========================================================
class Game
    def initialize 
        puts "Novo objeto de jogo foi criado"
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

    # Método que evita está parecendo uma msg tipo:
    # #<Game:0x00007c7316dac770> quando chamamos 
    # puts game (linha 45)
    def to_s
      "#{@nome}-#{@genero}-#{@multiplayer}-#{@versao}"
      # Resultado: Pes-Esporte-true-[2018, 2019, 2020]
      # OBS: esse método deve ser escrito to_s obrigatório
      # para que o valor seja sobrescrito e mais fácil de
      # ser lido.
    end
end

game = Game.new
puts game