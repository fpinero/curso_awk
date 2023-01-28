BEGIN {
	print "-- Reporte de antiguedad de empleados --"
	# variables
	# FS -> separador de campos en el fichero de entrada
	# RS -> separador de registros en el fichero de entrada
	# OFS=" " # el separador que queremos usar en la salida del reporte
	
	FS="\n" # el separador de campos en el fichero a tratar es el enter
	RS="" # "" el separador que utiliza el fichero a tratar para los registros
	OFS=" " # el separador que queremos usar en la salida del reporte
}
{
	print $4, $2, $3
}
END {
	print "--- FIN DEL REPORTE ---"
}

