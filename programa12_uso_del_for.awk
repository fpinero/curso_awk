BEGIN {
	FS=" "
	OFS=" "
	VTITULO="--- REPORTE DE ANTIGUEDAD DE EMPLEADOS ---"
	VPIE="--- FIN DEL REPORTE ---"
	VSEPARADOR="-------------------------------------------------"
	print VTITULO
	print VSEPARADOR
}
{
	VINICIO=$4 # campo que contiene en el fichero el año de ingreso
	VACTUAL = strftime("%Y", systime()) # funcion q devuleve el año actual (%Y) actual (systime)
	VANOS=0
	for (vantiguedad = VINICIO; vantiguedad <= VACTUAL; vantiguedad++) {
		VANOS+=1
	}
	texto = $3 ", " $2 " desde " VINICIO " al " VACTUAL " ,lleva " VANOS " en la empresa"
        print texto
}END {
	print VSEPARADOR
	print VPIE
}



