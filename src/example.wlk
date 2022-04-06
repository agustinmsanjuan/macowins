class Prenda {
	var estado
	var property precioBase
	method precio() = self.precioBase() - estado.efecto(self.precioBase())
	}

class Nueva {
	method efecto(precioBase) = 0
}

class Promocion {
	const descuento
	method efecto(precioBase) = descuento 
}

class Liquidacion {
	method efecto(precioBase) = precioBase * 0.5
}

//object registrador {
//	var ventas = []
	// suma de ganancias de ventas = ganancia total
//}

class Venta {
	var fechaDeVenta
	var metodoPago
	var prendas = []
	
	method ganancia() = metodoPago.efectoMetodoPago(prenda.precio()) // prendas.sum{prenda => prenda.precio()} 
	 

}

class Tarjeta {
	var cuotas
	const coeficiente
	method efectoMetodoPago(precio) = cuotas * coeficiente + 0.01 * precio
}

class Efectivo {
	method efectoMetodoPago(precio) = precio
}