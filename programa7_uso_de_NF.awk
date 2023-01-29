# la variable NF muestra el contenido del untimo campo del registro sin nosotros tener que saber en cual posicion esta el ultimo campo del registro
BEGIN {
	FS=";"
	OFS=" "
	print "--- REPORTE DE SALARIOS ---"
}
{
	texto = $3 ", " $2 " $"  $NF
	print texto
}
END {
	print "--- FIN DEL REPORTE ---"
}

