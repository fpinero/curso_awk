BEGIN {
FS=";"
OFS=" ";
print "REPORTE DE EMPLEADOS Y SALARIOS"
}
{
texto = $3 ", " $2 " $ " $NF
print texto
}
END {
  print "FIN DEL REPORTE"
}
