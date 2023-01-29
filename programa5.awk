BEGIN {
	print "--- MOSTRANDO VARIABLES DEL SISTEMA UTILIZANDO ENVIRON DE AWK PARA LEER VARS DEL SISTEMA ---"
	print "El PATH de mi usuario es: \t " ENVIRON["PATH"]
	print "Mi terminal es: \t " ENVIRON["TERM"]
	print "Mi usuario es: \t " ENVIRON["LOGNAME"]
}

