descricao = "O filme trata de uma viagem no tempo"

# 1-Indexação
puts descricao[0]
puts descricao[-1]
puts descricao[0,4]
puts descricao[0..4]
puts descricao.slice(0)
puts descricao.slice(0,4)

# 2-Quebrando uma string
print descricao.split()
print descricao.split('uma')

# 3-Quebrando em caracteres
print descricao.chars

# 4-Conta ocorrência caracteres
puts descricao.count('a')

# 5-Maiúculo e Minúsculo
puts descricao.upcase
puts descricao.downcase
puts descricao.capitalize
puts descricao.swapcase # apenas primeira letra minúscula
puts descricao.chop #remove último caractere

# 6-Verifica índice
puts descricao.index('filme')

# 7-Altera nome
puts descricao.gsub("tempo", "espaço")

# 8-Outras operações
puts "Ruby".center(10, "-")
puts "=" * 20
puts descricao.include?("filme")
puts "    Ruby".lstrip
puts "Ruby     ".rstrip
puts "   Ruby  ".strip