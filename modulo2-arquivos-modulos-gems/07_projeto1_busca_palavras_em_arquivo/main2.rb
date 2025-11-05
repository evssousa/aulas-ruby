# =========================================================
=begin
    Esse pequeno projeto tem objetivo buscar palavras 
        em arquivos de texto.
=end
# =========================================================

# =========================================================
puts "= " * 10 # 1-Forma 2 (melhorada)
# =========================================================
def procurar(chave)
    result = {}                                 # criação de um hash
    Dir.glob("data/*.txt") do |arquivo|         # procurando tudo que contém .txt na pasta data
        arq = File.open(arquivo)                # abre o arquivo e atribui a palavra lida na variável
        arq.each_with_index do |linha, index|   # pega a linha e o index da palavra procurada
            if linha.include?(chave)            # verificação se o que foi procurado existe
                result[index + 1] = arquivo     # para que se for achado index 0, ele se torna 1 (ex linha 1)
            end
        end
        arq.close                               # fecha o arquivo
    end
    result                                      # retornando a hash result
end

puts "= = = Busca palavras em arquivos = = ="   
print "Digite uma palavra a ser procurada: "    # palavra a ser digitada
chave = gets.chomp                              # palavra digitada atribuida a variável chave

result = procurar(chave)
if result.length > 0                            # se for encontrado alguma ocorrência. 0 indica nenhuma palavra encontrada
    for chave, valor in result                  # faz um loop (busca) em todo o arquivo, pegando todos os resultados
        puts "Arquivo: #{valor} | Linha: #{chave}"
    end
else
    puts "Não encontrado"
end

# Resultado:
# = = = Busca palavras em arquivos = = =
# Digite uma palavra a ser procurada: Mario
# Arquivo: data/games.txt | Linha: 1
# Arquivo: data/games.txt | Linha: 4