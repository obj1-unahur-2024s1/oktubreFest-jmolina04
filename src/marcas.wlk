class MarcaCerveza{
	var property lupulo
	var property pais
	var property precioLitro
	
	method nombre()
	method graduacion()
	
}

class Rubia inherits MarcaCerveza{
	var property graduacion
	override method nombre() = "Corona"
}

class Negra inherits MarcaCerveza{
	override method nombre() = "Guiness"
	override method graduacion() {
		return graduacionReglamentaria.graduacion().min(lupulo * 2)
		
	}

}

class Roja inherits Negra{
	override method nombre() = "Hofbräu"
	override method graduacion() = super() * 1.25
}

object graduacionReglamentaria{
	var property graduacion = 0.04
}

class Jarra{
	var property capacidadLitros
	var property marca
	
	method contenidoAlcohol(){
		return capacidadLitros * marca.graduacion()
	}
}