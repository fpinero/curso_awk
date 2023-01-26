BEGIN {
print "EJEMPLOS DE FUNCIONES MATEMATICAS EN AWK"
print "--------------------------------------------"
vminimo=1
vmaximo=50
srand()
x=int(vminimo+rand() * (vmaximo-vminimo+1))
vseno=sin(x)
vcoseno=cos(x)
vraiz=sqrt(x)
vexpon=exp(x)

print "La funcion rand() nos dio el numero " x
print "La funcion sin(" x ")=" vseno
print "La funcion cos(" x ")=" vcoseno
print "La function sqrt(" x ")=" vraiz
print "La funcion exp(" x ")=" vexpon
}

