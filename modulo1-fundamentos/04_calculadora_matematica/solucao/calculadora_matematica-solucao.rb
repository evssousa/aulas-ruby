# = FUNÇÃO DAS OPERAÇOES ============
soma = lambda do |x, y|
    x + y
end

subt = lambda do |x, y|
    x - y
end

mult = lambda do |x, y|
    x * y
end

divi = lambda do |x, y|
    x / y
end

# = EXECUÇÃO DO PROGRAMA ============
print "Digite o número 1: "
num1 = gets.chomp.to_i

print "Digite o número 2: "
num2 = gets.chomp.to_i

opcao = ""

while opcao != "0"
    print <<~PROMPT
    ===============================
        Calculadora Matemática
        1 - Soma
        2 - Subtração
        3 - Multiplicação
        4 - Divisão
        0 - Sair

        Agora selecione a operação: 
    PROMPT
    opcao = gets.chomp

    case opcao
    when "1"
        puts "Soma | #{num1} + #{num2} = #{soma.call(num1, num2)}"
    when "2"
        puts "Subtração | #{num1} + #{num2} = #{subt.call(num1, num2)}"
    when "3"
        puts "Multiplicação | #{num1} + #{num2} = #{mult.call(num1, num2)}"
    when "4"
        puts "Divisão | #{num1} + #{num2} = #{divi.call(num1, num2)}"
    else
        puts "Opção inválida. Programa finalizado."
    end
end