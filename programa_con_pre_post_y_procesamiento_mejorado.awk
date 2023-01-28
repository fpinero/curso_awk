BEGIN { 
	print "REPORTE DE FECHAS DE INGRESO DE EMPLEADOS" 
	FS=";" # variable de awk para definir el limitador a emplear en el fichero a tratar
}
{
	# \t = inserta un tabulador, esto permite alinear las columnas en el reporte final
	texto = $2 " Ingreso el \t" $4
	print texto
}
END { 
	print "------- FIN DEL REPORTE -------"
}


