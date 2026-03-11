class Veiculo
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
  def initialize(placa, marca, cilindrada)
    super(placa, marca)
    @cilindrada = cilindrada
  end

  def detalhes
    super
    puts "Cilindrada: #{@cilindrada}"
  end
end

veiculo1 = Veiculo.new("ABC123", "Honda")
puts veiculo1.detalhes

carro1 = Carro.new("DEF456", "BYD", 4)
puts carro1.detalhes

moto1 = Moto.new("GHI789", "Yamaha", 150)
puts moto1.detalhes