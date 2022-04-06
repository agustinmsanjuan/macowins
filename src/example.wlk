class Prenda {
	var estado
	var property precioBase
	var property tipo
	method precio() = estado.precioAfectado(precioBase)
	}

object nueva {
	method precioAfectado(precioBase) = precioBase
}

class Promocion {
	const descuento
	method precioAfectado(precioBase) = precioBase - descuento 
}

object liquidacion {
	method precioAfectado(precioBase) = precioBase - (precioBase * 0.5)
}

class Dia {
	var ventas = []
	var fecha
	method gananciaTotal() = ventas.sum{venta => venta.ganancia()}
}

class Venta {
	var metodoPago
	var prendas = []
	
	method ganancia() = self.preciosTotales() + metodoPago.recargo(self.preciosTotales())
	method preciosTotales() = prendas.sum{prenda => prenda.precio()} 

}

class Tarjeta {
	var cuotas
	const coeficiente
	method recargo(precio) = cuotas * coeficiente + 0.01 * precio //recargo
}

class Efectivo {
	method recargo(precio) = 0
}