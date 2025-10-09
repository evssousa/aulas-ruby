# =========================================================
=begin
    Iremos trabalhar com a leitura de arquivos de texto.
    Antes de tudo, crie o arquivo de texto com nome
    "filmes.txt" dentro de uma pasta chamada "data"
=end
# =========================================================

# =========================================================
puts "= " * 10 # 1-Alternativa 1
# =========================================================
filmes = File.open("data/filmes.txt")
puts filmes.class # File (mostrando o tipo de arquivo)

# mostra o que contem nas linhas do arquivo (incluindo espaços)
filmes.each { |linha| puts linha.strip }

# =========================================================
puts "= " * 10 # 1-Alternativa 2
# =========================================================
# extrai apenas linhas não vazias
caminho_arquivo = "data/filmes.txt"
File.open(caminho_arquivo, "r") do |arquivo| 
    # o "r" significa o modo de abertura do arquivo, sendo:
    # "r" -> read (ler)
    # "w" -> write (sobrescrever)
    # "a" -> append (acrescentar)
    # "r+" -> read/write (ler e escrever, sem apagar nada)
    # "w+" -> read/write (ler e escreve, apagando conteúdo existente)
    # "a+" -> read/append (ler e escrever, mas só permite escrever no final)
    
    # lê o arquivo linha por linha, remove linhas vazias
    # e imprime as não vazias
    arquivo.each_line { |linha| puts linha.strip unless linha.strip.empty? }
end