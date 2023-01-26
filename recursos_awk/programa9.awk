BEGIN {
FS=";"
OFS=" "
VTITULO="REPORTE DE EMPLEADOS Y SALARIOS MAYORES A 300,000"
VPIE="FIN DEL REPORTE"
VSEPARADOR="---------------------------------------------"
print VTITULO
print VSEPARADOR
}
{
if ($6 < 300000) {
  texto = $3 ", " $2 " $ " $NF
  print texto
}
else
{
  texto = $3 ", " $2 " $ ******"
  print texto
}
}
END {
print VSEPARADOR
print VPIE
}
