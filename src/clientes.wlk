object ludmila {

	method precioPactadoPorKm() {
		return 18
	}

}

object anaMaria {

	method precioPactadoPorKm() {
		return 30
	}

}

object teresa {

	method precioPactadoPorKm() {
		return 22
	}

}

object melina {

	var property trabajaPara

	method precioPactadoPorKm() {
		return trabajaPara.precioPactadoPorKm() - 3
	}

}

