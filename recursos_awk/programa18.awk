BEGIN {
FS=";"
VTITULO="EJEMPLO DE CARGA Y VISUALIZACION DE ARRAY EN AWK CON ARCHIVO DE DATOS"
VPIE="FIN DEL REPORTE"
VSEPARADOR="------------------------------------------------------------------------"
print VTITULO
print VSEPARADOR
}

{
  x[$1] = $2
}

END {
for (llave in x) { print x[llave] }
print VSEPARADOR
print VPIE
}

