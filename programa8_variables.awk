BEGIN { 
	FS=";"
	OFS=" "
	VTITULO="--- REPORTE DE EMPLEADOS Y SALARIOS ---"
	VPIE="--- FIN DEL REPORTE ---"
	VSEPARADOR="----------------------------------------------------------------"
	
	print VSEPARADOR
	print VTITULO
	print VSEPARADOR
}
{
	TEXTO = $3 ", " $2 " $" $NF
	# print VSEPARADOR
	print TEXTO
}
END {
	print VSEPARADOR
	print VPIE
}


