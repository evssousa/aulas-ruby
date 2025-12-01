# =========================================================
=begin
    Iremos aprender mais detalhes sobre utilização do
    módulo Math.
=end
# =========================================================

# =========================================================
puts "= " * 10 # 1-Exemplos de uso
# =========================================================
puts Math.class
# puts Math.methods.sort # ver os métodos

puts Math.sqrt(4)
puts Math.sin(5)
puts Math::PI

# =========================================================
puts "= " * 10 # 2-Calculo da área de um círculo
# =========================================================
def calcular_area(raio)
    return Math::PI * raio ** 2
end

# =========================================================
puts "= " * 10 # 2-Calculo perímetro de um círculo
# =========================================================
def calcular_perimetro(raio)
    return 2 * Math::PI * raio
end

# =========================================================
puts "= " * 10 # 2-Retorno com exemplo de uso
# =========================================================
print "Digite o raio do círculo: "
raio = gets.chomp.to_f

area = calcular_area(raio)
perimetro = calcular_perimetro(raio)

puts "Área do círculo com raio #{raio} é #{area.round(2)}"
puts "Perímetro do círculo com raio #{raio} é #{perimetro.round(2)}"
