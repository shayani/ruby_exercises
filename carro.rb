class Carro
  attr_accessor :kilometragem

  def initialize
    @kilometragem = 0
  end
  #
  # def kilometragem
  #   @kilometragem
  # end
  #
  # def kilometragem=(valor)
  #   @kilometragem = valor
  # end

  def dirigir(km)
    @kilometragem += km
    nil
  end
end

class Moto < Carro
  def empinar
    puts "Empinando a moto!!!"
  end
end

fiat = Carro.new
puts "Kilometragem inicial: #{fiat.kilometragem}"
puts "Dirigindo 10km... #{fiat.dirigir(10)}"
puts "Nova kilometragem: #{fiat.kilometragem}"
puts "Dirigindo mais 5km... #{fiat.dirigir(5)}"
puts "Nova kilometragem: #{fiat.kilometragem}"

puts "_" * 30
yamaha = Moto.new
puts "Kilometragem inicial: #{yamaha.kilometragem}"
puts "Dirigindo 55km... #{yamaha.dirigir(10)}"
puts "Nova kilometragem: #{yamaha.kilometragem}"
yamaha.empinar
puts "Mudando manualmente a kilometragem: #{yamaha.kilometragem = 200}"
puts yamaha.kilometragem
