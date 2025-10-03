# =========================================================
=begin
    Podemos deixar as mensagens mais formatadas, separando
    os textos dos respectivos valores das variáveis declaradas.
=end
# =========================================================

print "Informe o nome do filme: "
nome = gets.chomp

print "Informe o ano do filme: "
ano = gets.chomp.to_i

print "Informe o preço do filme: "
preco = gets.chomp.to_f

# =========================================================
puts "= " * 10 # 1-Concatenando e exibindo valores
# =========================================================
puts "Nome do filme: " + nome
puts "Ano de lançamento: " + ano.to_s
puts "Preço do filme: " + preco.to_s

# =========================================================
puts "= " * 10 # 2-Variável dentro da string (utilizando expressão #{})
# =========================================================
puts "Nome do filme: #{nome}"
puts "Ano de lançamento: #{ano}"
puts "Preço do filme: #{preco}"

# =========================================================
puts "= " * 10 # 3-String multilinha
# =========================================================
puts <<~MULTILINHA
    ==========================
    Nome do filme: #{nome}
    Ano de lançamento: #{ano}
    Preço do filme: #{preco}
MULTILINHA