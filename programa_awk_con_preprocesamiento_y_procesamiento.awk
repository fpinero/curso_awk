BEGIN { print "REPORTE DE FECHAS DE INGRESO DE EMPLEADOS" }
{
	texto = $2 " Ingreso el " $4
	print texto
}

