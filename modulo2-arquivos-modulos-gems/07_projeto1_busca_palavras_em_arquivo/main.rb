# =========================================================
=begin
    Esse pequeno projeto tem objetivo buscar palavras 
    em arquivos de texto.
=end
# =========================================================

# =========================================================
puts "= " * 10 # 1-Forma 1
# =========================================================
def procurar(chave)
    Dir.glob("data/*.txt") do |arquivo|         # procurando tudo que contém .txt na pasta data
        arq = File.open(arquivo)                # abre o arquivo e atribui a palavra lida na variável
        arq.each_with_index do |linha, index|   # pega a linha e o index da palavra procurada
            if linha.include?(chave)            # verificação se o que foi procurado existe
                return arquivo, index           # retorna qual arquivo e o index da palavra
            end
        end
        arq.close                               # fecha o arquivo
    end
end

puts "= = = Busca palavras em arquivos = = ="   
print "Digite uma palavra a ser procurada: "    # palavra a ser digitada
chave = gets.chomp                              # palavra digitada atribuida a variável chave

nomeArquivo, numeroLinha = procurar(chave)      # a chamada vai retornar as duas informações: arquivo e index (linha 16)
puts "Arquivo: #{nomeArquivo} | Linha: #{numeroLinha + 1}"

# Resultado:
# = = = Busca palavras em arquivos = = =
# Digite uma palavra a ser procurada: Fifa
# Arquivo: data/games.txt | Linha: 4