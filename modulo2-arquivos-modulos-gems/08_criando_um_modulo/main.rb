# =========================================================
=begin
    Iremos aprender a utilizar um módulo que vamos criar
    em Ruby.

    Módulos podem ser importados usando a palavra reservada
    require. Também permitem a reutilização de código.
=end

# =========================================================
puts "= " * 10 # 1-Módulo criado pelo arquivo TamanhoConversao.rb
# =========================================================
require "./TamanhoConversao"
# require_relative "TamanhoConversao"

puts TamanhoConversao.milhas_para_pes(10)
puts TamanhoConversao.milhas_para_polegadas(20)
puts TamanhoConversao.milhas_para_centimetros(30)