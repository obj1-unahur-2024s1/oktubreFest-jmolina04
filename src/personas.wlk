class Personas {
	var property peso
	var property cantJarras =[]
	var property musicaTradicional
	var property aguante
	const property nacionalidad
	
	method estaEbria(){
		return (cantJarras.sum({algo => algo.contenidoAlcohol()}) * peso) > aguante
	}
	
	method totalAlcohol(){
		return cantJarras.sum({algo =>algo.contenidoALcohol()})
	}
	
	method leGusta(cerveza)
	
}



class Belga inherits Personas{
	override method leGusta(cerveza){
		return cerveza.lupulo() > 0.04
	}
}

class Checo inherits Personas{
	override method leGusta(cerveza){
		return cerveza.graduacion() > 0.08
	}
}

class Alemanes inherits Personas{
	override method leGusta(cerveza) = true
}