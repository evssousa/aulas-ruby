def frequencia_letras(texto)
    caracteres = ("a".."z").to_a + ("A".."Z").to_a

    frequencia = {}

    # .each_char percorre cada caractere individual de uma string, 
    # um por um, e executa um bloco de código para cada caractere.
    texto.each_char do |caractere|
        if caracteres.include?(caractere)
            unless frequencia.key?(caractere) # unless executa somente se for falso (é o oposto do if)
                frequencia[caractere] = 1
            else
                frequencia[caractere] += 1
            end
        end
    end
    return frequencia
end

puts "Frequência de Letras"
print "Digite um texto: "
texto = gets.chomp

puts frequencia_letras(texto)