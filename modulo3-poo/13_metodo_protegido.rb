# =========================================================
=begin
    13_metodo_protegido.rb
    Iremos aprender a utilizar método protegido.
=end
# =========================================================
# =========================================================
puts "= " * 10 # 1-Entendendo...
# Método protegido: os métodos podem ser chamados a partir
# de instâncias da mesma classe onde foram definidos, ou
# em suas subclasses.
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

    private
    def aplicar_desconto(porcentagem_desconto)
      @preco -= (@preco * porcentagem_desconto / 100)
    end
    
    public
    def aplicar_10_porcento_desconto
      aplicar_desconto(10)
    end

    # Para um método protegido utiliza-se o comando "protected" 
    protected
    def preco_desconto(porcentagem_desconto)
      @preco -= (@preco * (porcentagem_desconto.to_f / 100))
    end

end

game1 = Game.new("Alan Wake", "Suspense", false, [], 150)
puts game1
puts game1.dados_tecnicos
# procurando o método protegido (:método, parâmetro)
game1.send(:preco_desconto, 20) 
puts game1.dados_tecnicos