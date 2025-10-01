print "Digite um número: "
num1 = gets.chomp.to_f

print "Digite outro número: "
num2 = gets.chomp.to_f

print "Digite uma operação (+ - * /): "
operacao = gets.chomp

if operacao == "+"
    resultado = num1 + num2
elsif operacao == "-"
    resultado = num1 - num2
elsif operacao == "*"
    resultado = num1 * num2
elsif operacao == "/"
    resultado = num1 / num2
else
    puts "Operação inválida"
end

puts "Resultado é #{resultado.round 2}"