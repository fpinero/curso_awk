BEGIN {
FS=";"
OFS=" "
VTITULO="REPORTE DE EMPLEADOS Y SALARIOS"
VPIE="FIN DEL REPORTE"
VSEPARADOR="--------------------------------------"
print VTITULO
print VSEPARADOR
}
{
texto = $3 ", " $2 " $ " $NF
print texto
}
END {
print VSEPARADOR
print VPIE
}
