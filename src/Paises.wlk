import Carpas.*

object belgica {
	
	method leGustaLaCerveza(unaCerveza){
		return unaCerveza.lupulo() > 4
	}
	
	method requiereParaEntrar(unaCarpa){return true}
}

object repCheca {
	
	method leGustaLaCerveza(unaCerveza){
		return unaCerveza.graduacion() > 8
	}
	
	method requiereParaEntrar(unaCarpa){return true}
}

object argentina {
	
	method leGustaLaCerveza(unaCerveza){return true}
	
	method requiereParaEntrar(unaCarpa){return true}
}


object alemania {
	
	method leGustaLaCerveza(unaCerveza){return true} //Le gustan todas
	
	method requiereParaEntrar(unaCarpa){
		return unaCarpa.genteAdentro().size().even()
	}
}

object mexico {
	
	method leGustaLaCerveza(unaCerveza){return true}
	
	method requiereParaEntrar(unaCarpa){return true}
}

object irlanda {
	
	method leGustaLaCerveza(unaCerveza){return true}
	
	method requiereParaEntrar(unaCarpa){return true}
}