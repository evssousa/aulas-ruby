=begin
Escreva um programa em Ruby que realize a entrada de dados de duas variáveis: altura e peso. E por fim, calcule o IMC com base nos valores das duas variáveis criadas anteriormente.
=end

print "Digite sua altura (ex 1.80): "
altura = gets.chomp.to_f

print "Digite seu peso (ex: 80.5): "
peso = gets.chomp.to_f

imc = peso / (altura * altura)

print "Seu IMC é #{imc.round 2}."