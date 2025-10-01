print "Informe sua idade: "
idade = gets.chomp.to_i

case idade
when 0..2
    puts "Bebê"
when 3..6
    puts "Criança"
when 7..12
    puts "Pré-adolescente"
when 13..17
    puts "Jovem"
else
    puts "Adulto"
end