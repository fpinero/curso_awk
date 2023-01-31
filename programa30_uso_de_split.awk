
BEGIN {
	CADENA = "Uno;Dos;Tres;cuatro;Cinco;Seis;Siete;Ocho;Nueve;diez;Once;Doce"
	split(CADENA, vector, ";")

	printf "La cadena original es \"%s\" \n", CADENA
	print "El vector resultante tras el split contiene los siguientes valores:"
	
	for (i in vector) {
		print vector[i]
	}
}


