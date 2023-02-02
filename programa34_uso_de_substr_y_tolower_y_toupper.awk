
BEGIN {
	FS=";"
	OFS=" "
	VTITULO="--- reporte II de emails sugeridos para empleados  ---"
	VPIE="--- FIN DEL REPORTE ---"
	VSEPARADOR="---------------------------------------------------"
	print toupper(VTITULO)
	print VSEPARADOR
}
{
	vnombre = tolower(substr($2,1,1))
	vapellidos = tolower(substr($3,1))
	vmail = vnombre vapellidos "@miempresa.com"
	vlinea = vmail "\t sugerido para " $2 " " $3
	print vlinea
}
END {
	print VSEPARADOR
	print VPIE
}

