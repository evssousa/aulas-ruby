puts "Digite o primeiro número:"
num1 = gets.chomp.to_i
puts "Digite o segundo número"
num2 = gets.chomp.to_i

# 1-Operadores Aritméticos
sum = num1 + num2
subt = num1 - num2
div = num1 / num2
mult = num1 * num2
mod = num1 % num2
exp = num1 ** num2

# 2-Operadores Atribuição
num1 += 1 # num1 = num1 + 1
num1 -= 1 # num1 = num1 - 1
num1 *= 1 # num1 = num1 * 1
num1 /= 1 # num1 = num1 / 1 

# 3-Atribuição paralela
a, b = 5, 4
a, b = b, a # inverte valores
puts a
puts b

# 4-Operadores de Comparação
bigger = num1 > num2
smaller = num1 < num2
equal = num1 == num2
different = num1 != num2
bigger_equal = num1 >= num2
smaller_equal = num1 <= num2

# 5-Operadores Lógicos
puts ((2 > 4) && (3 > 1))   # Retorna false, porque 2 > 4 é falso.
puts ((2 > 4) || (3 > 1))   # Retorna true, porque 3 > 1 é verdadeiro.
puts !((2 > 4) && (3 > 1))  # Retorna true, porque o "e" é falso, e "!" inverte.


# 6-Operadores Especiais
print (1..5).to_a
print (1...5).to_a
# puts ('a'..'z').to_a
print ('ab'...'yz').to_a

# 7-Precedência de Operadores
puts 3 + 2 * 5
puts (3+2) *5
puts 2 ** (2 + 2)
puts 2 ** (3 * 2)

# 8-Operador Binary Left Shit
name = ""
name << "Fulano"
name << "Sicrano"
puts name