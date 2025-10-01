print "Digite o número de vezes que irá gerar a sequência de Fibonacci: "
num_vezes = gets.chomp.to_i

fibo1 = 0
fibo2 = 1

num_vezes.times do
    puts fibo1
    soma = fibo1 + fibo2
    fibo2 = fibo1
    fibo1 = soma
end
