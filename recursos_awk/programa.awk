BEGIN { 
  print "REPORTE DE FECHAS DE INGRESO DE EMPLEADOS" 
  FS=";"
}
{
  texto = $2 " Ingreso el \t" $4
  print texto
}
END {
    print "FIN DEL REPORTE"
}
