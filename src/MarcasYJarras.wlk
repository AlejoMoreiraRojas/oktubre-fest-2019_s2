import Paises.*

class Marcas {
	var property lupulo = 0
	var property pais = null
	
	method graduacion()
}

class CervezaRubia inherits Marcas {
	var property gradoDeAlcohol = 0
	
	override method graduacion(){
		return gradoDeAlcohol
	}
}

class CervezaNegra inherits Marcas {
	
	override method graduacion(){
		return graduacionDeCervezaNegra.graduacion().min(self.lupulo() * 2)
	}
}

object graduacionDeCervezaNegra {
	var property graduacion = 0
}

class CervezaRoja inherits CervezaNegra {
	override method graduacion(){
		return super() * 1.25
	}
}

class Jarra {
	var property capacidad = 0
	var property marca = null
	
	method contenidoDeAlcohol(){
		return self.capacidad() * (self.marca().graduacion() / 100)
	}
}