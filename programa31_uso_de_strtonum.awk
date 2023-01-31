BEGIN {
  print "EJEMPLOS DE LA FUNCION STRTONUM EN AWK"
  print "---------------------------------------"
}
{
  vtipo = $1
  vcadena = $2
 
  if (vtipo == "DECIMAL") {
    print "La cadena de texto contiene un numero decimal : " vcadena
    print "Convirtiendo a numerico el resultado seria : " strtonum(vcadena)
  }

  if (vtipo == "OCTAL") {
    print "La cadena de texto contiene un numero octal : " vcadena
    print "Convirtiendo a numerico el resultado seria : " strtonum(vcadena)
  }
  
  if (vtipo == "HEXADECIMAL") {
    print "La cadena de texto contiene un numero hexadecimal : " vcadena
    print "Convirtiendo a numerico el resultado seria : " strtonum(vcadena)
  }
}
END {
   print "FIN DEL REPORTE"
}


# este programa awk utiliza el fichero de datos datos31.txt





