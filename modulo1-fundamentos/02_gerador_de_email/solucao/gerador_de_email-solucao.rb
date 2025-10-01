print "Digite seu primeiro nome: "
nome = gets.chomp

print "Digite seu sobrenome: "
sobrenome = gets.chomp

print "Digite o nome da sua empresa: "
empresa = gets.chomp

puts "#{nome.downcase}.#{sobrenome.downcase}@#{empresa.downcase}.com"