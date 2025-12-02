# =========================================================
=begin
    Iremos aprender a trabalhar com operações em
    diretórios.
=end
# =========================================================

# =========================================================
puts "= " * 10 # 1-Verificando o diretório atual
# =========================================================
puts Dir.pwd
# /workspaces/aulas-ruby/modulo2-arquivos-modulos-gems/06_diretorio

# =========================================================
puts "= " * 10 # 2-Criando diretório
# =========================================================
#Dir.mkdir "teste" # cria uma pasta chamada "teste"
puts "Diretório teste criado!"

# =========================================================
puts "= " * 10 # 3-Lista arquivos e pastas
# =========================================================
puts Dir.glob "*" # mostra os diretórios e arquivos

# =========================================================
puts "= " * 10 # 4-Lista apenas arquivos rb
# =========================================================
puts Dir.glob "*.rb"

# =========================================================
puts "= " * 10 # 5-Outro exemplo
# =========================================================
Dir.glob("*") do |arquivo|
    puts arquivo
end

# =========================================================
puts "= " * 10 # 6-Navegando entre diretórios
# =========================================================
Dir.chdir "teste"
puts Dir.pwd
# /workspaces/aulas-ruby/modulo2-arquivos-modulos-gems/06_diretorio/teste