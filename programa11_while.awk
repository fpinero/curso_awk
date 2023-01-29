BEGIN {
	FS=";"
	OFS=" "
	VTITULO="--- REPORTE GENERAL DE SALARIO ---"
	VPIE="--- FIN DEL REPORTE ---"
	VSEPARADOR="------------------------------------------------"
	print VTITULO
	print VSEPARADOR
	VSUMA=0 # suma total de salarios
	VCALTOS=0 # nuero de salarios altos
	VALTOS=0 # suma de salario altos
	VCBAJOS=0 # numero de salarios bajos
	VBAJOS=0 # suma salarios bajos
	VCANTIDAD=0 # cantitdad de empleados
}
{
	VCAMPOS=0
	VCANTIDAD+=1
	while (VCAMPOS < 6) { 
		VCAMPOS=VCAMPOS+1
		if (VCAMPOS = 6) { #campo que contine el salrio en el fichero a tratar
			VSALARIO=$6
			VSUMA+=VSALARIO
			
			if (VSALARIO > 300000) {
				VCALTOS+=1
				VALTOS+=VSALARIO
			} else {
				VCBAJOS+=1
				VBAJOS+=VSALARIO
			}
		}
	}
}
END {
	VTOTAL=VALTOS+VBAJOS
	print "Cantidad de empleados : " VCANTIDAD
	print "Total salario Empresa : " VTOTAL
	print "Salarios Altos (" VCALTOS ") \t" VALTOS
	print "Salarios Bajos (" VCBAJOS ") \t" VBAJOS
	VPROMEDIO=VTOTAL/VCANTIDAD
	print "Promedio de salario : " VPROMEDIO
	print VSEPARADOR
	print VPIE
}

