# este programa utiliza el fichero de datos13.txt

BEGIN {
print "EJEMPLOS DE SALIDA ESTANDAR CON FORMATO"
print "---------------------------------------------"
FS=" "
OFS="-"
}
{
   vformato=$1
   vvalor=$2
   print "Se recibe : Formato " vformato " valor del campo = " vvalor
   if (vformato == "NUMERICO")
   {
      printf "Formato entero es       : %d \n", vvalor
      printf "Notacion Cientifica     : %e \n", vvalor
      printf "Numero con Decimales    : %f \n", vvalor
      printf "Numero con dos decimales: %.2f \n", vvalor
      printf "En Octal seria          : %o \n", vvalor
   }
   if (vformato == "CADENA")
   {
      printf "Formato cadena es                                   : %s \n", vvalor
      printf "Formato cadena mostrado los tres primeros caracteres: %.3s \n", vvalor
   }
   print "------------------------------------------"
}
END {
  print "FIN DEL REPORTE"
}







