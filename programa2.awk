BEGIN {
	#Variables
	# FS -> especifica el separador q utilizar en el fichero a procesar
	# OFS -> especifica el separador a utilizar en el reporte de salida
	FS=" "
	OFS="-"
	print "----- INICIO DEL REPORTE -----"
}
{
	print $2,$3,$5
}
END {
	print "------ FIN DEL REPORTE ------"
}

