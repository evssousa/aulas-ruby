# =========================================================
puts "= " * 10 # 1-Recebendo informações dinâmicas
# =========================================================
print "Informe o nome do filme: "
nome = gets.chomp # guarda informação digitada na variável (padrão: string)
puts nome

print "Informe o ano do filme: "
ano = gets.chomp.to_i # converte o número digitado em int
puts ano.class

print "Informe o preço do filme: "
preco = gets.chomp.to_f # converte o número digitado em float
puts preco.class

# =========================================================
# 2-Como seria no Javascript e Python?
# =========================================================
# let name = prompt("Informe o nome do filme")  // em Javascript
# name = input("Informe o nome do filme")       // em Python