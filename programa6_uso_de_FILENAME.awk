
BEGIN {
	print "Aqui no se muestra FILENAME porque en el bloque BEGIN awk aun no sabe el fichero a tratar"
	print "FILENAME= \t " FILENAME
}
END {
	print "en el bloque END awk ya si conoce el valor de FILENAME"
	print "archivo de datos o FILENAME= \t " FILENAME
}

# ejecuta este programa como siempre awk -f programa6_uso_de_FILENAME.awk datos.txt 

