# Dados do filme
nome = "De Volta para o Futuro"
nome2 = "de volta para o furuto"

descricao = "O filme trata de uma viagem no tempo"
descricao2 = <<Texto
    O filme #{nome} é um clássico
    de 1985 que trata sobre ficção científica.
Texto

# Formatos de saída
puts descricao
puts descricao2

puts nome == nome2 # comparativo true e false

# 1-Tamanho da string
puts descricao.length
puts descricao.size