BEGIN {
	#FIELDWIDTHS -> define los anchos de los campos a tratar en el fichero
	FIELDWIDTHS="4 11 11 13 16 6"
	print "--- REPORTE DEL SALARIO DE LOS EMPLEADOS ---"
}
{
	texto = $3 $2 $6
	print texto
}
END {
	print "--- FIN DEL REPORTE ---"
}

