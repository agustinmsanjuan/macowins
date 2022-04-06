class Prenda {
	var estado
	var property precioBase
	var property tipo
	method precio() = self.precioBase() - estado.efecto(self.precioBase())
	}

object nueva {
	method efecto(precioBase) = 0
}

class Promocion {
	const descuento
	method efecto(precioBase) = descuento 
}

object liquidacion {
	method efecto(precioBase) = precioBase * 0.5
}

class Dia {
	var ventas = []
	var fecha
	method gananciaTotal() = ventas.sum{venta => venta.precio()}
}

class Venta {
	var dia
	var metodoPago
	var prendas = []
	
	method ganancia() = self.preciosTotales() + metodoPago.efectoMetodoPago(self.preciosTotales())
	method preciosTotales() = prendas.sum{prenda => prenda.precio()} 

}

class Tarjeta {
	var cuotas
	const coeficiente
	method efectoMetodoPago(precio) = cuotas * coeficiente + 0.01 * precio //recargo
}

class Efectivo {
	method efectoMetodoPago(precio) = 0
}