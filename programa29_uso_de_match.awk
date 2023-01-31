# la funcion match, a diferencia de index, ademas de indicar la posicion donde encontro la subcadena de busqueda
# también informa del numero de columna donde la ha enconrado y la longitud de caracteres eencotrados en la equivalencia
# estos dos datos los ofrece en las variables RSTART y RLENGTH respectivamente.
BEGIN {
	str = "Estamos aprendiendo a usar el comando match sobre cadenas"
	subs = "apren"
	ret = match(str, subs) # si devuelve 0 no encontro la palabra en caso contrario indica la posicion donde la encotro
	printf "La cadena original sobre la que realizar la busqueda es  \"%s\" \n", str
	print "\n"
	
        if (ret == 0) {
		printf "la subcadena \"%s\" no se encuentra en la cadena original", str
	} else {
		printf "la subcadena \"%s\" ha sido encontrada en la posicion %d dentro de la cadena original \n", subs, ret
		printf "RSTART= %s,\t RLENGTH= %s \n", RSTART, RLENGTH 

	}
}

