a = 10
b = 20

if a > b
    puts "#{a} é maior que #{b}"
else
    puts "#{a} é menor que #{b}"
end

print "Digite o nome do filme: "
nome = gets.chomp

print "Digite o ano de lançamento do filme: "
ano = gets.chomp.to_i

print "Digite a nota de classificação do filme: "
nota = gets.chomp.to_f

if nota > 8.0 and ano > 2015
    puts "O filme #{nome} é bom. Recomendo assisti-lo."
else
    puts "O filme #{nome} ainda não atingiu uma boa nota. Por isso não recomendo."
end