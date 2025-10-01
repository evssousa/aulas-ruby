print "Informe o nome do filme: "
nome = gets.chomp

print "Informe o ano do filme: "
ano = gets.chomp.to_i

print "Informe o preço do filme: "
preco = gets.chomp.to_f

# 1 - Contacatenação e exibição dos valores
puts "Nome do filme: #{nome}"
puts "Ano de lançamento #{ano.to_s}"
puts "Preço do filme: #{preco.to_s}"

# 2 - String Multilinha
puts <<~MULTILINHA
    ==========================
    Nome do filme: #{nome}
    Ano de lançamento: #{ano}
    Preço do filme: #{preco}
MULTILINHA