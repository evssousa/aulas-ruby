module TamanhoConversao
    def self.milhas_para_pes(milhas)
        milhas * 5280
    end

    def self.milhas_para_polegadas(milhas)
        pes = milhas_para_pes(milhas)
        pes * 12
    end

    def self.milhas_para_centimetros(milhas)
        polegadas = milhas_para_polegadas(milhas)
        polegadas * 2.54
    end
end