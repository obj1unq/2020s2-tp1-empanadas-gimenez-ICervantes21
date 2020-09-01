object galvan {
	var sueldo = 15000
	
	method consultarSueldo() {return sueldo}
	method aumentarSueldo(cantidad) {sueldo = cantidad}
	method cobrarSueldo() {gimenez.pagarSueldo(sueldo)}
}

object baigorria {
	var empanadasVendidas = 0
	const sueldoBase = 15
	var sueldoPorVentas 
	
	method venderEmpanadas(cantidad) {empanadasVendidas += cantidad self.aumentarSueldo()}
	method aumentarSueldo() {sueldoPorVentas = sueldoBase * empanadasVendidas}
	method cobrarSueldo() {gimenez.pagarSueldo(sueldoPorVentas)}
	method consultarSueldo() {return sueldoPorVentas}
}

object gimenez {
	var fondoParaSueldos = 300000
	
	method consultarFondo() {return fondoParaSueldos}
	method pagarSueldo(cantidad) {fondoParaSueldos -= cantidad}
	
}