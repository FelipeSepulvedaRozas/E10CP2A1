module Formula
	def perimetro(ladoA, ladoB)
		perimetro = ((ladoA.to_i*2) + (ladoB.to_i*2))
	end

	def area(ladoA, ladoB)
		area = (ladoA.to_i*ladoB.to_i)
	end
end

class Rectangulo
	include Formula
  def initialize(base, altura)
    @base = base
    @altura = altura
  end

  def lado
  	puts "su rectangulo mide de base: #{@base} y de altura: #{@altura}"
  end
  
end

class Cuadrado
	include Formula
  def initialize(lado)
    @lado = lado
  end

  def self.lado(lado)
  	puts "Los lados de su cuadrado miden: #{lado} cada uno"
  end

end

cuadradoA = Cuadrado.new(5)
puts cuadradoA.perimetro(5,5)
puts cuadradoA.area(5,5)

rectanguloA = Rectangulo.new(3,6)
puts rectanguloA.perimetro(3,6)
puts rectanguloA.area(3,6)
