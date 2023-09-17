object registroAbatidosCOD {
	const property abatidos = []
	
	method agregarAbatidosDia(dia,cantidad){
		const registro = []
		registro.add(dia)
    	registro.add(cantidad)
		if (not self.seRegistroElDia(dia)){
    		abatidos.add(registro)
  		}
	}
	
	method agregarAbatidosVariosDias(unRegistroDeAbatidos) {
           unRegistroDeAbatidos.sortBy({a, b => a > b})
           unRegistroDeAbatidos.forEach({i => abatidos.add(i)})        
    }
    method eliminarElRegistroDelDia(dia){
    	abatidos.forEach({
    		i => if (i.get(0) == dia){
    			abatidos.remove(i)
    		}
    	})
    }
	
	method eliminarLosRegistrosDeDias(listaDias){
		listaDias.forEach({
			i=> self.eliminarElRegistroDelDia(i)
		})
	}
	
	method cantidadDeDiasRegistrados(){
		return abatidos.size()
	}
	
	method estaVacioElRegistro(){
		return abatidos.isEmpty() 
	}
	
	method algunDiaAbatido(cantidad){
		return abatidos.any({i => i.get(1) == cantidad})
    }	
    method seRegistroElDia(dia){
		return abatidos.any({i => i.get(0) == dia})
    }
    method primerValorDeAbatidos(){
    	return abatidos.first().get(1)
    }
    method ultimoValorDeAbatidos(){
    	return abatidos.last()
    }
    method cantidadesRegistradas(){
    	return abatidos.map({i => i.get(1)})
    }
    method maximoValorDeAbatidos(){
    	return self.cantidadesRegistradas().max()
    }
    method totalAbatidos(){
    	return self.cantidadesRegistradas().sum()
    }
    method cantidadDeAbatidosElDia(dia){
    	return abatidos.find({i=> i.get(0) == dia}).get(1)
    }
    method ultimoValorDeAbatidosConSize(){    //Aca no se que quisieron decir la verdad
        	return abatidos.last() == abatidos.size()-1
    }
    method diasConAbatidosSuperioresA(cuanto){
    	return abatidos.filter({i=> i.get(1) > cuanto}).map({i=> i.get(0)})
    }
    method valoresDeAbatidosPares(){
    	return self.cantidadesRegistradas().filter({i=> i%2 == 0})
    }
    method elValorDeAbatidos(cantidad){
    	
    }
    method abatidosSumando(cantidad){
    	return self.cantidadesRegistradas().map({i=> i+cantidad})
    }
    method abatidosEsAcotada(n1,n2){
    	return self.cantidadesRegistradas().all({i=> i < n2 and i > n1})
    }
    method algunDiaAbatioMasDe(cantidad){
    	return self.cantidadesRegistradas().all({i=> i > cantidad})
    }
}