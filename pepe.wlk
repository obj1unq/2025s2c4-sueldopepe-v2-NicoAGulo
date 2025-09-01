object pepe {

  var diasFaltando = 0

  method netoSegunCategoria(){
    return (categoria.cadete())
  }

  method faltarDias(_diasFaltando){
    diasFaltando+=_diasFaltando
  }

  method diasFaltando(){
    return diasFaltando
  }

}

object categoria {
  method cadete(){
    return 20000
  }

  method gerente() {
    return 15000
  }
}

object bonoPorResultado{
    const montoFijo=800

    method bonoPorPorcentaje(empleado){
        const porcentaje = 0.1 //10%

        return empleado.neto()*porcentaje
    }

    method montoFijo(){
      return montoFijo
    }

    method nada(){
      return 0
    }
}

object bonoPorPresentismo{

  method normal(empleado){
    if (empleado.diasFaltando()==0){
      return 2000
    }else if(empleado.diasFaltando()==1){
      return 1000
    }else{
      return 0
    }
  }
}


