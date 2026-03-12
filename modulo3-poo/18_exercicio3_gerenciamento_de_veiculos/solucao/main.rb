class Veiculo
  attr_accessor :placa, :marca

  def initialize(placa, marca)
    @placa = placa
    @marca = marca
  end

  def detalhes
    puts "== Detalhes do Veículo =="
    puts "Placa: #{@placa}"
    puts "Marca: #{@marca}"
  end
end

class Carro < Veiculo
  attr_accessor :portas

  def initialize(placa, marca, portas)
    super(placa, marca)
    @portas = portas
  end

  def detalhes
    super
    puts "Portas: #{@portas}"
  end
end

class Moto < Veiculo
  attr_accessor :cilindrada

  def initialize(placa, marca, cilindrada)
    super(placa, marca)
    @cilindrada = cilindrada
  end

  def detalhes
    super
    puts "Cilindrada: #{@cilindrada}"
  end
end

def exibir_detalhes(veiculo)
  puts veiculo.detalhes
end

carro1 = Carro.new("DEF456", "BYD", 4)
moto1 = Moto.new("GHI789", "Yamaha", 150)

exibir_detalhes(carro1)
exibir_detalhes(moto1)