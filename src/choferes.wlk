object roxana {

	method precioViaje(cliente, kms) {
		return cliente.precioPactadoPorKm() * kms
	}

}

object gabriela {

	method precioViaje(cliente, kms) {
		return cliente.precioPactadoPorKm() * kms * 1.2
	}

}

object mariela {

	method precioViaje(cliente, kms) {
		return 50.max(cliente.precioPactadoPorKm() * kms)
	}

}

object juana {

	method precioViaje(cliente, kms) {
		return if (kms <= 8) 100 else 200
	}

}

object lucia {

	var property reemplaza

	method precioViaje(cliente, kms) {
		return reemplaza.precioViaje(cliente, kms)
	}

}

