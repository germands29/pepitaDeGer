//ETAPA 1 Y 2
object pepita {
	var energia = 0
	method energia() = energia
	method volar(kilometros){
		energia = energia - (10 + kilometros)
	}	
	
	method comer(comida, gramos){
		energia = energia + (comida.energiaDeComida() * gramos) *4
	}
	
	method estaDebil(){
		return energia < 50
	}
	
	method estaFeliz(){
		return energia.between(500, 1000)
	}
	
	method cuantoQuiereVolar() { 
		var cuanto = self.energia() / 5
		if (energia.between(300, 400)) { cuanto + 10 }
		if (energia % 20 == 0) { cuanto =+ 15 }
		return cuanto
		}
		
		
	method salirAComer(){
		self.volar(5)	
		self.comer(alpiste, 80)
		self.volar(5)
	}
	
	method haceLoQueQuieras(){
		if(self.estaFeliz()){self.volar(8)}
		if(self.estaDebil()){self.comer(alpiste,20)}
	}
	
	method visitar(lugar){
		energia = energia + lugar.lugarVisitado()
	}
}
	
	
	object alpiste { 
		method energiaDeComida(){return 4}
	}
	object mondongo {  
		method energiaDeComida(){ return 100 }
	}
	object alcaulcil{ 
		method energiaDeComida(){ return 20}
	}
	object sorgo { 
		method energiaDeComida(){ return 9}
	}
	


object mijo{
	var energia = 0
	method energia(){return energia}
	method mojarse(){energia = 15}
	method secarse(){energia = 20}
	method energiaDeComida(){return energia}
}
	

object canelones {
	var energia = 20
	method energia(){return energia	}
	method ponerSalsa(){energia = energia + 5}
	method sacarSalsa(){energia= energia -5}
	method ponerQueso(){energia= energia+ 7}
	method sacarQueso(){energia= energia - 7}
	method energiaDeComida(){ return energia }
}


//ETAPA 3

object roque{
	var pupilo = pepita 
	method entrenar(){
		pupilo.volar(10)
		pupilo.comer(alpiste, 300)
		pupilo.volar(5)
		pupilo.haceLoQueQuieras()
	}
	
	method tuPupiloEs(unAve){
		pupilo = unAve
	}
}

//ETAPA 4

object pepon{
	var energia = 0
	method energia()= energia 
	method comer(comida, gramos){
		energia = energia + (((comida.energiaDeComida() * gramos) *4) / 2)
	}
	method volar(kilometros){energia = energia - 1 - (kilometros * 0.5)}
	method haceLoQueQuieras(){self.volar(1)}
}

object pipa{
	var kilometrosTotales= 0
	var gramosTotales=0
	method kmsRecorridos()= kilometrosTotales
	method gramosIngeridos()= gramosTotales 
	method volar(kilometros){kilometrosTotales = kilometrosTotales + kilometros}
	method comer(comida, gramos){gramosTotales= gramosTotales + gramos}
	method haceLoQueQuieras(){}
}





//ETAPA 5

object patagonia{
	method lugarVisitado(){return 30}
}

object sierrasCordobesas{
	method lugarVisitado(){return 70}
}

object marDelPlata{
	var temporada= 1
	method temporadaAlta(){ return temporada.between(1,3)}
	method lugarVisitado(){ if(self.temporadaAlta()){return -20} else {return 80}}
	method cambiarTemporada(unaTemporada) {temporada=unaTemporada } 
}	

object noroeste{
	var energia = pepita.energia()
	method lugarVisitado(){ return energia * 0.1	}
}
