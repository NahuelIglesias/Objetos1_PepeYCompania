object pepe {
	var sueldo = 0
	var faltas = 0
	
	method calcularSueldo(puesto, situacion, bono) {
		sueldo = puesto.sueldoNeto() - situacion.descuento(puesto)
		sueldo = bono.extra(faltas, sueldo)
	}
	
	method aniadirFaltas(cant) {
		faltas = faltas + cant
	}
	
	method sueldoFinal() {
		return sueldo
	}
}

//------Puestos de trabajo------

object gerente {
	method sueldoNeto() {
		return 15000
	}
}

object cadete {	
	method sueldoNeto() {
		return 20000
	}
}

//------Situaciones sindicales------

object porcentual {
	method descuento(puesto) {
		return puesto.sueldoNeto()*3/100
	}
}

object comprometido {
	method descuento(puesto) {
		return (puesto.sueldoNeto()*1/100) + 1500
	}
}

object noSindicalizado {
	method descuento(puesto) {
		return puesto.sueldoNeto()*0
	}
}

//------Bonos por presentismo------

object normal {
	method extra(faltas, sueldo) {
		if (faltas == 0) {
			return sueldo + 2000
		}
		if (faltas == 1) {
			return sueldo + 1000
		}
		return 0
	}
}

object epocaDeAjuste {
	method extra(faltas, sueldo) {
		if (faltas == 0) {
			return sueldo + 10
		} else { 
			return sueldo 
		}
	}
}

object demagogico {
	method extra(faltas, sueldo) {
		if (sueldo < 18000) {
			return sueldo + 500
		} else {
			return sueldo + 350
		}
	}
}