object oficina {

	var choferPrimeraOpcion
	var choferSegundaOpcion

	method asignarChoferes(chofer1, chofer2) {
		choferPrimeraOpcion = chofer1
		choferSegundaOpcion = chofer2
	}

	method cambiarPrimerChoferPor(chofer) {
		choferPrimeraOpcion = chofer
	}

	method cambiarSegundoChoferPor(chofer) {
		choferSegundaOpcion = chofer
	}

	method intercambiarChoferes() {
		self.asignarChoferes(choferSegundaOpcion, choferPrimeraOpcion)
	}

	method convieneSegundoChofer(cliente, kms) {
		return choferSegundaOpcion.precioViaje(cliente, kms) + 30 < choferPrimeraOpcion.precioViaje(cliente, kms)
	}

	method choferElegidoParaViaje(cliente, kms) {
		return if (self.convieneSegundoChofer(cliente, kms)) choferSegundaOpcion else choferPrimeraOpcion
	}

}

