object galvan {
	var sueldo = 15000
	var dineroTotal = 0
	var deudaTotal = 0
	
	method consultarSueldo() {return sueldo}
	method aumentarSueldo(cantidad) {sueldo = cantidad}
	method cobrarSueldo() {gimenez.pagarSueldo(sueldo) dineroTotal += sueldo}
	method gastar(cuanto) {
		if(cuanto > dineroTotal) {deudaTotal = cuanto - dineroTotal
			                      dineroTotal = 0}
		if(cuanto < dineroTotal) {dineroTotal -= cuanto}	                      
	}
	method deuda() {return deudaTotal}
	method dinero() {return dineroTotal}
	method pagarDeudas() {
		if(deudaTotal > dineroTotal) {deudaTotal = deudaTotal - dineroTotal
			                          dineroTotal = 0}
		if(deudaTotal < dineroTotal) {dineroTotal = dineroTotal - deudaTotal
			                          deudaTotal = 0}
    }
	
}

object baigorria {
	var empanadasVendidas = 0
	const sueldoBase = 15
	var sueldoPorVentas 
	var fondoCobrado
	
	method venderEmpanadas(cantidad) {empanadasVendidas += cantidad self.calcularSueldo()}
	method calcularSueldo() {sueldoPorVentas = sueldoBase * empanadasVendidas}
	method cobrarSueldo() {gimenez.pagarSueldo(sueldoPorVentas)}
	method consultarSueldo() {return sueldoPorVentas}
	method nuevoMes() {empanadasVendidas = 0}
	method finDelMes() {fondoCobrado = sueldoPorVentas self.nuevoMes() self.calcularSueldo()}
	method totalCobrado() {return fondoCobrado}
}

object gimenez {
	var fondoParaSueldos = 300000
	
	method consultarFondo() {return fondoParaSueldos}
	method pagarSueldo(cantidad) {fondoParaSueldos -= cantidad}
	
}