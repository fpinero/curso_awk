BEGIN {
  FIELDWIDTHS="4 11 11 13 16 6"
  print "REPORTE DE SALARIOS DE EMPLEADOS"
}
{
  texto = $3 $2 $6
  print texto
}
END {
  print "FIN DEL REPORTE"
}


