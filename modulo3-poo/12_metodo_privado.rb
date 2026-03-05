# =========================================================
=begin
    12_metodo_privado.rb
    Iremos aprender a utilizar método privado.
=end
# =========================================================
# =========================================================
puts "= " * 10 # 1-Entendendo...
# Método Privado: Só podem ser chamados a partir da mesma
# classe onde foram definidos.
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

    # Para um método privado utiliza-se o comando "private" 
    private
    def aplicar_desconto(porcentagem_desconto)
      @preco -= (@preco * porcentagem_desconto / 100)
    end

    # Para conseguir chamar o método privado, precisamos
    # criar um método público. Para criar um método público,
    # utiliza-se o comando "public"
    public
    def aplicar_10_porcento_desconto
      aplicar_desconto(10)
    end
end

game1 = Game.new("Alan Wake", "Suspense", false, [], 150)
puts game1

# Ao tentar executar, é nos retornado um erro "private method"
# caso não tenha sido feito ainda o método público
# OBS: descomente a linha abaixo para testar antes de criar
# o método público
# game1.aplicar_desconto(10)

# Agora por termos o método público...
puts game1.preco
game1.aplicar_10_porcento_desconto
puts game1.preco

