import rodados.*
import colores.*

class Dependencia{
	var nombre
	var cantEmpleados
	const flota = []
	const pedidos = []
	
	method agregarAFlota(rodado) = flota.add(rodado)
	
	method quitarDeFlota(rodado) = flota.remove(rodado)
	
	method pesoTotalFlota() = flota.sum({ rodado => rodado.peso() })
	
	method estaBienEquipada() = flota.size() >= 3 and flota.all({rodado => rodado.velMax() >= 100})

	method capacidadTotalEnColor(color){
		const flotaColor = flota.filter({ rodado => rodado.color() == color })
		
		return flotaColor.sum({ rodado => rodado.capacidad() })
	}
	
	method colorDelRodadoMasRapido() = flota.max({ rodado => rodado.velMax() }).color()
	
	method capacidadFaltante() = 0.max( cantEmpleados - flota.sum({ rodado => rodado.capacidad() }) )
	
	method esGrande() = (cantEmpleados >= 40) and (flota.size() >= 5) 
	
	
	method agregarPedido(pedido){
		pedidos.add(pedido)
	}
	method quitarPedido(pedido){
		pedidos.remove(pedido)
	}
	
	method pasajerosEnTodosLosPedidos() = pedidos.sum({ pedido => pedido.pasajeros() })
	
	//FUNCIONA PARA TEST, PERO EN CONSOLA DEVUELVE [un/a pedido, un/a pedido]
	method pedidosImposibles() =
	pedidos.filter({ pedido =>
		flota.all({ auto => not pedido.puedeLlevarseEn(auto) })
	})
	
	method incompatibleParaTodos(color) = pedidos.all({ pedido => pedido.coloresIncompatibles().contains(color) })
	
	method relajarTodosLosPedidos(){
		pedidos.forEach{pedido => pedido.relajar()}
	}

}








