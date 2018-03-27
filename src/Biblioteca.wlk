object libro {
	var usuariosRetiraron = #{}
	
	method agregarUsuario(usuario) {
		usuariosRetiraron.add(usuario)
	}
	method usuariosRetiraron() {
		return usuariosRetiraron
	}
	
	method cuantoRetiro(usuario) {
		return usuario.cuantoLeyo()
	}
	
//	method agregarRetiros(usuario) {
//		if (usuariosRetiraron.contains(usuario)){
//			return usuario
//		}
//	}
}

//------Curso------

object jorge {
	var retiro = 0
	
	method retirarLibro() {
		retiro += 1
		libro.agregarUsuario(self)
	}
	
	method cuantoLeyo() {
		return retiro
	}
}

object maria {
	var retiro = 0
	
	method retirarLibro() {
		retiro += 1
		libro.agregarUsuario(self)
	}
	
	method cuantoLeyo() {
		return retiro
	}
}

object laura {
	var retiro = 0
	
	method retirarLibro() {
		retiro += 1
		libro.agregarUsuario(self)
	}
	
	method cuantoLeyo() {
		return retiro
	}
}