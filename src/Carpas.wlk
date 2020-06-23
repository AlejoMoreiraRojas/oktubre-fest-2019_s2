class Carpa {
	const property genteAdentro = []
	var property limiteDeGente = 0
	var property tieneBanda = true
	var property marcaEnVenta = null
	
	method dejaIngresar(unaPersona){
		return 	self.genteAdentro().size() + 1 <= self.limiteDeGente()
				&&
				not unaPersona.estaEbria()
	}
	
	method servir(unaJarra, unaPersona){
		unaJarra.marca(self.marcaEnVenta())
		if(self.genteAdentro().contains(unaPersona)){
			unaPersona.comprarJarra(unaJarra)
		}
		else{
			throw new Exception(message = ("La persona no se encuentra en la carpa"))
		}
	}
	
	method cantidadDeEbriosEmpedernidos(){
		const esEbrio = {persona => persona.esEbrioEmpedernido()}
		return self.genteAdentro().count(esEbrio)
	}
}