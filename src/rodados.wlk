import colores.*

class Corsa{
	var color
	
	method capacidad() = 4
	method velMax() = 150
	method peso() = 1300
	method color() = color
}

class Kwid{
	var tanqueAdicional = true
	
	method capacidad() = if (tanqueAdicional) 3 else 4
	method velMax() = if (tanqueAdicional) 110 else 120
	method peso() = if (!tanqueAdicional) 1200 else 1350
	method color() = azul
}

object trafic{
	var interiorComodo = true
	var motorPulenta = false
	
	
	method colocarInteriorComodo(){interiorComodo = true}
	method colocarInteriorPopular(){interiorComodo = false}
	method colocarMotorPulenta(){motorPulenta = true}
	method colocarMotorBataton(){motorPulenta = false}
	
	method pesoMotor() = if (motorPulenta) 800 else 500
	method pesoInterior() = if (interiorComodo) 700 else 1000
	
	method capacidad() = if (interiorComodo) 5 else 7
	method velMax() = if (motorPulenta) 130 else 80
	method peso() = 4000 + self.pesoMotor() + self.pesoInterior()
	method color() = blanco
}

class AutoEspecial{
	var capacidad
	var velMax
	var peso
	var color
	
	method capacidad() = capacidad
	method velMax() = velMax
	method peso() = peso
	method color() = color
}