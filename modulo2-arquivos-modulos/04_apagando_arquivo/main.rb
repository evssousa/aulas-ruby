# =========================================================
=begin
    Iremos aprender como apagar arquivos de texto.
=end
# =========================================================

if File.exist?("data/arquivo.txt")
    File.delete("data/arquivo.txt")
end