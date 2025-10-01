# =========================================================
puts "= " * 10 # 1-Método para imprimir Hello World
# =========================================================
def hello
    puts "Hello World"
end

hello()

# =========================================================
puts "= " * 10 # 2-Método para somar dois números
# =========================================================
def soma()
    puts 5 + 4
end

soma()

# =========================================================
puts "= " * 10 # 3-Método para cadastrar filme
# =========================================================
def criar_filme
    print "Digite o nome do filme: "
    nome = gets.chomp

    print "Digite o ano de lançamento do filme: "
    ano_lancamento = gets.chomp.to_i

    print "Digite o preço do filme: "
    preco = gets.chomp.to_f

    puts "#{nome} de #{ano_lancamento} - R$#{preco}"
    puts "=" * 20
end

criar_filme()
criar_filme()
criar_filme()