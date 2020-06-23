import Paises.*
import MarcasYJarras.*
import Carpas.*

class Persona {
	var property peso = 0
	const property jarrasCompradas = []
	var property leGustaLaMusica = false
	var property aguante = 0
	var property paisDeOrigen = null
	
	method comprarJarra(unaJarra){
		jarrasCompradas.add(unaJarra)
	}
	
	method totalDeAlcoholIngerido(){
		const litrosDeAlcohol = {jarra => jarra.capacidad()}
		return jarrasCompradas.sum(litrosDeAlcohol)
	}
	
	method estaEbria(){
		return (self.totalDeAlcoholIngerido() * self.peso()) > self.aguante()
	}
	
	method leGustaLaCerveza(unaCerveza){
		return self.paisDeOrigen().leGustaLaCerveza(unaCerveza)
	}
	
	method quiereEntrarA(unaCarpa){
		return 	self.leGustaLaCerveza(unaCarpa.marcaEnVenta())
				&&
				self.leGustaLaMusica() == unaCarpa.tieneBanda()
				&&
				self.paisDeOrigen().requiereParaEntrar(unaCarpa)
				}
	
	method puedeEntrar(unaCarpa){
		return 	self.quiereEntrarA(unaCarpa)
				&&
				unaCarpa.dejaIngresar(self)
	}
	
	method entrarA(unaCarpa){
		if(self.puedeEntrar(unaCarpa)){
			unaCarpa.genteAdentro().add(self)
		}
		else{
			throw new Exception(message = ("Rebotaste"))
		}
	}
	
	method esEbrioEmpedernido(){
		const masDeUnLitro = {jarra => jarra.capacidad() >= 1}
		return self.jarrasCompradas().all(masDeUnLitro)
	}
	
	method esPatriota(){
		const sonDe = {jarra => jarra.marca().pais() == self.paisDeOrigen()}
		return self.jarrasCompradas().all(sonDe)
	}
}



