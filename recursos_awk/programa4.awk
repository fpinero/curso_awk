BEGIN {
  print "REPORTE DE ANTIGUEDAD DE EMPLEDOS"
  FS="\n"
  RS=""
  OFS=" "
}
{
  print $4, $2, $3
}
END {
  print "FIN DEL REPORTE"
}

