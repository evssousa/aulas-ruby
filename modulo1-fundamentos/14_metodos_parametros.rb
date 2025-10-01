# =========================================================
puts "= " * 10 # 1-Métodos que recebe dois parâmetros sobre nome
# =========================================================
def nome_completo(nome, sobrenome)
    puts "Nome completo: #{nome} #{sobrenome}"
end

nome_completo("John", "Wick")

# =========================================================
puts "= " * 10 # 2-Método que soma dois números
# =========================================================
def soma(a, b)
    return a + b
end

puts soma(2, 5)

# =========================================================
puts "= " * 10 # 3-Argumentos default num método
# =========================================================
def endereco(cidade="Brasil")
    puts "Eu moro no #{cidade}"
end

endereco()
endereco("Canadá")

# =========================================================
puts "= " * 10 # 4-Avaliação do filme
# =========================================================
def classificacao_filme(vlr_classificacao)
    print "Informe o nome do filme: "
    nome_filme = gets.chomp

    soma = 0

    vlr_classificacao.times do
        print "Digite a nota para o filme: "
        nota = gets.chomp.to_f
        soma += nota
    end

    puts "Média de avaliação do filme #{nome_filme} é #{soma / vlr_classificacao}"
end

print "Deseja fazer quantas avaliações: "
classificacao = gets.chomp.to_i

classificacao_filme(classificacao)