BEGIN {
	print "EJEMPLOS DE FUCNUIONES MATEMATICAS EN AWK"
	print "-----------------------------------------"
	#numero al azar
	VMINIMO=1
	VMAXIMO=50
	srand()
	x=int(VMINIMO+rand() * (VMAXIMO-VMINIMO-1))
	#seno
	VSENO=sin(x)
	#coseno
	VCOSENO=cos(x)
	#raiz
	VRAIZ=sqrt(x)
	#exponencial
	VEXPON=exp(x)

	print "la funcion rand() devolvio el numero: " x
	print "la funcion sin("x") devolvio el numero: " VSENO
	print "la funcion cos("x") devolvio el numero: " VCOSENO
	print "la funcion sqrt("x") devolvio el numero: " VRAIZ
	print "la funcion exp("x") devolvio el numero: " VEXPON
}


