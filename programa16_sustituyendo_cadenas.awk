BEGIN {
	FS=";"
	OFS=" "
	VTITULO="REPORTE DE SALARIOS DE EMPLEADOS Y SALAIOS MENORES A 300000"
	VPIE="--- FIN DEL REPORTE ---"
	VSEPARADOR="----------------------------------------------"
	print VTITULO
	print VSEPARADOR
}
{
	if ($6 < 300000) {
		texto = $3 ", " $2 " $" $NF " - " $5
	}else {
		texto = $3 ", " $2 " $******** - " $5
	}

	gsub(/a/, "A", texto)
	print texto
}
END {
	print VSEPARADOR
	print VPIE
}
	

