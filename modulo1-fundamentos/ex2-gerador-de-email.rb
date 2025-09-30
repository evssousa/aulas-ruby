=begin
Escreva um programa Ruby para lê três variáveis: first name, last name e company. A despeito desses valores você deve concatenar as informações para gerar um endereço de e-mail. A variável entre firstname e lastname deve ser separado por ponto e a variável lastname e company deve ser separado por @.

Ex:
firstname: fulano
lastname: sicrano
company: obc
fulano.sicrano@obc.com
=end

print "Digite seu primeiro nome: "
nome = gets.chomp

print "Digite seu sobrenome: "
sobrenome = gets.chomp

print "Digite o nome da sua empresa: "
empresa = gets.chomp

puts "#{nome.downcase}.#{sobrenome.downcase}@#{empresa.downcase}.com"