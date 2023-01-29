BEGIN {
	str="Estamos validado la utilidad del comando index para localizar cadenas de texto"
	subs="utilidad"
	ret=index(str, subs)

	printf "La cadena original \"%s\", \n", str

	if (str = 0) {
		printf "La subcadena \"%s\" no se encuentra en la cadena original \n", subs
	} else {
		printf "La subcadena \"%s\" se encuentra enla posicion %d en la cadena original \n", subs , ret
	}
}

