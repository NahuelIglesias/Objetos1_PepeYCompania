object tateti {
	var conductoras = #{laura, eugenia, emilia}
	
	method cantidadDeConductoras() {
		return conductoras.size()
	}
	
	method puedeSerEmitidio() {
		return ! conductoras.isEmpty()
	}
	
	method conduce(conductora) {
		return conductoras.contains(conductora)
	}
	
	method agregarConductor(conductor) {
		conductoras.add(conductor)
	}
	
	method agregarConductores(conjuntoConductores) {
		conductoras.addAll(conjuntoConductores)
	}
	
	method sacarConductor(conductor) {
		conductoras.remove(conductor)
	}
	
	method sacarConductores(conjuntoConductores) {
		conductoras.removeAll(conjuntoConductores)
	}
}

object laura {
	
}

object eugenia {
	
}

object emilia {
	
}

object flavia {
	
}