BEGIN {
	archivo= "datos15.txt"
	FS=";"

	print "--> Leyendo el archivo de datos..."
	while((getline < archivo) > 0) {
		sec[$1] = $1 " " $2 "\t" $5
	}

	print "...Mostrando el archivo de datos cargado"
	for (i in sec) print sec[i]

	print "...Ordenando el array en destino"
	n = asort(sec, destino)

	print "...Mostrando el array destino ordenado con asort"
	for (i = 1; i<=n; i++) {
		print destino[i]
	}
}

