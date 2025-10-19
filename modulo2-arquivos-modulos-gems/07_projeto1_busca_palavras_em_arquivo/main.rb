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
    # procurando tudo que contém .txt
    Dir.glob("data/*.txt") do |arquivo|
        arq = File.open(arquivo)
        arq.each_with_index do |linha, index|
            if linha.include?(chave)
                return arquivo, index
            end
        end
        arq.close
    end
end

puts "= = = Busca palavras em arquivos = = ="
print "Digite uma palavra a ser procurada: "
chave = gets.chomp

nomeArquivo, numeroLinha = procurar(chave)
puts "Arquivo: #{nomeArquivo} | Linha: #{numeroLinha + 1}"

# Resultado:
# = = = Busca palavras em arquivos = = =
# Digite uma palavra a ser procurada: Fifa
# Arquivo: data/games.txt | Linha: 4