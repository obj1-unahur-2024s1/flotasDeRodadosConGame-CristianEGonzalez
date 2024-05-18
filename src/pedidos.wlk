import rodados.*
import dependencias.*
import colores.*

class Pedido{
	var distancia
	var tiempo
	var pasajeros
	var coloresIncompatibles
	
	method distancia() = distancia
	method tiempo() = tiempo
	method pasajeros() = pasajeros
	method coloresIncompatibles() = coloresIncompatibles
	method velocidadRequerida() = self.distancia() / self.tiempo()
	method acelerar(){tiempo -= 1}
	method relajar(){tiempo += 1}
	
	method puedeLlevarseEn(auto){return
		self.velocidadRequerida() <= (auto.velMax()-10) and
		self.pasajeros() >= auto.capacidad() and
		!self.coloresIncompatibles().contains(auto.color())
	}
}