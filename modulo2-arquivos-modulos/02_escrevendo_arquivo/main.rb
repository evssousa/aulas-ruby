# =========================================================
=begin
    Iremos aprender como trabalhar com a escrita de arquivos
    de texto. Crie uma pasta chamada "data", mas a deixe vazia.
    
    Diferença do w (que executa uma vez e sobrescreve)
    e do a (que vai adicioanndo os conteúdos abaixo)
=end
# =========================================================

# =========================================================
puts "= " * 10 # 1-Alternativa 1
# =========================================================
File.open("data/cursos1.txt", "w") do |arquivo|
    arquivo.puts "Criando arquivo de texto"
    arquivo.write "Hello World"
    arquivo.puts "Olá mundo"
end # cria um arquivo "cursos1.txt" com as informações das
    # strings acima (e sobrescreve)

# =========================================================
puts "= " * 10 # 2-Alternativa 2
# =========================================================
File.open("data/cursos2.txt", "a") do |arquivo|
    print "Qual curso você deseja fazer? "
    curso = gets.chomp
    arquivo.puts curso
end # cria um arquivo "cursos2.txt" com as informações digitadas
    # no print (mas adiciona abaixo uma nova informação toda vez
    # que for sendo executada)