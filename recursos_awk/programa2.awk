BEGIN {
  FS=" "
  OFS="-"
}
{
  print $2,$3,$5
}
END {
  print "FIN DEL REPORTE"
}

