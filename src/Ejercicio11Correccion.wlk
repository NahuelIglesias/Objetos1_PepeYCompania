object pepe {
	var categoria = gerente
	var situacionSindical = noSindicalizado
	var presentismo = normal
	var /*property*/ faltas = 0
	
	method sueldo() = self.sueldoNeto() - self.descuentoSindical() + self.extraPorPresentismo()
	
	method sueldoNeto() = categoria.sueldo()
	method descuentoSindical() = situacionSindical.descuento(self)
	method extraPorPresentismo() = presentismo.bono(self)
	
	method categoria(nuevaCategoria) {
		categoria = nuevaCategoria
	}
	
	method situacionSindical(nuevaSituacion) {
		situacionSindical = nuevaSituacion
	}
	
//	El "property" en la variable faltas resumiria lo siguiente:	
	method faltas() = faltas
	method faltas(nuevasFaltas) {
		faltas = nuevasFaltas
	}
}

//----------

object gerente {
	method sueldo() = 15000
}

object cadete {
	method sueldo() = 20000
}

//----------

object porcentual {
	method descuento(empleado) = empleado.sueldoNeto() * 3 / 100
}

object comprometido {
	method descuento(empleado) = empleado.sueldoNeto() * 1 / 100 + 1500
}

object noSindicalizado {
	method descuento(empleado) = 0
}

//----------

object normal {
	method bono(empleado) {
		return if (empleado.faltas() == 0) 2000
		else if (empleado.faltas() == 1) 1000
		else 0
	}
}

object ajuste {
	method bono(empleado) {
		return if (empleado.faltas() == 0) 10 else 0
	}
}

object demagogico {
	method bono(empleado) {
		return if (empleado.sueldoNeto() < 18000) 500 else 350
	}
}