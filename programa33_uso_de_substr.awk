
BEGIN {
	FS=";"
	OFS=" "
	VTITULO="--- REPORTE DE EMAILS SUGERIDOS PARA EMPLEADOS ---"
	VPIE="--- FIN DEL REPORTE ---"
	VSEPARADOR="-----------------------------------------------"
	print VTITULO
	print VSEPARADOR
}
{
	vnombre = substr($2,1,1)
	vapellidos = substr($3,1)
	vmail = vnombre vapellidos "@miempresa.com"
	vlinea = vmail "\t sugerido para " $2 " " $3
	print vlinea
}
END {
	print VSEPARADOR
	print VPIE
}

