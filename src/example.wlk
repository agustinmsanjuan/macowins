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