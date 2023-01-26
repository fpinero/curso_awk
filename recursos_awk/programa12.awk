BEGIN {
FS=" "
OFS=" ";
VTITULO="REPORTE DE ANTIGUEDAD DE EMPLEADOS"
VPIE="FIN DEL REPORTE"
VSEPARADOR="--------------------------------"
print VTITULO
print VSEPARADOR
}
{
VINICIO=$4
VACTUAL = strftime("%Y", systime())
VANOS=0
for (vantiguedad = VINICIO; vantiguedad <= VACTUAL; vantiguedad++)
{
   VANOS+=1
}
texto = $3 ", " $2 " desde " VINICIO " al " VACTUAL ", cumple " VANOS " años en la empresa este año"
print texto
}
END {
print VSEPARADOR
print VPIE
}

