print "Digite sua altura (ex 1.80): "
altura = gets.chomp.to_f

print "Digite seu peso (ex: 80.5): "
peso = gets.chomp.to_f

imc = peso / (altura * altura)

print "Seu IMC é #{imc.round 2}."