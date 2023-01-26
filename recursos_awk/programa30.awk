BEGIN {
  cadena = "Uno;Dos;Tres;Cuatro;Cinco;Seis;Siete;Ocho;Nueve;Diez;Once;Doce"
  split(cadena, vector, ";")

  printf "La cadena original es \"%s\" \n", cadena
  print "El vector resultado contiene los siguientes valores:"

  for (i in vector) {
    print vector[i]
  }
}

