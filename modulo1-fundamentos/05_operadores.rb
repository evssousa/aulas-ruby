# =========================================================
=begin
    Podemos utilizar para interagir com diferentes
    cálculos aritméticos e realizarmos comparações.
=end
# =========================================================

print "Digite o primeiro número:"
num1 = gets.chomp.to_i
print "Digite o segundo número"
num2 = gets.chomp.to_i

# =========================================================
puts "= " * 10 # 1-Operadores aritméticos
# =========================================================
sum = num1 + num2
subt = num1 - num2
div = num1 / num2
mult = num1 * num2
mod = num1 % num2
exp = num1 ** num2

# =========================================================
puts "= " * 10 # 2-Operadores de atribuição
# =========================================================
num1 += 1 # num1 = num1 + 1
num1 -= 1 # num1 = num1 - 1
num1 *= 1 # num1 = num1 * 1
num1 /= 1 # num1 = num1 / 1 

# =========================================================
puts "= " * 10 # 3-Atribuição paralela
# =========================================================
a, b = 5, 4
a, b = b, a # inverte valores
puts a
puts b

# =========================================================
puts "= " * 10 # 4-Operadores de comparação
# =========================================================
maior_que = num1 > num2
menor_que = num1 < num2
igual = num1 == num2
diferente = num1 != num2
maior_ou_igual = num1 >= num2
menor_ou_igual = num1 <= num2

# =========================================================
puts "= " * 10 # 5-Operadores lógicos
# =========================================================
puts ((2 > 4) && (3 > 1))   # Retorna false, porque 2 > 4 é falso.
puts ((2 > 4) || (3 > 1))   # Retorna true, porque 3 > 1 é verdadeiro.
puts !((2 > 4) && (3 > 1))  # Retorna true, porque o "e" é falso, e "!" inverte.

# =========================================================
puts "= " * 10 # 6-Operadores especiais
# =========================================================
puts (1..5).to_a
puts (1...5).to_a
# puts ('a'..'z').to_a
puts ('ab'...'yz').to_a

# =========================================================
puts "= " * 10 # 7-Precedência de operadores
# =========================================================
puts 3 + 2 * 5
puts (3 + 2) *5
puts 2 ** (2 + 2)
puts 2 ** (3 * 2)

# =========================================================
puts "= " * 10 # 8-Operador "Binary Left Shit"
# =========================================================
name = ""
name << "Fulano"
name << "Sicrano"
puts name