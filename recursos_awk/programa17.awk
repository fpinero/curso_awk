BEGIN {
VTITULO="EJEMPLO DE ARRAY EN AWK"
VPIE="FIN DEL REPORTE"
VSEPARADOR="--------------------------------"
print VTITULO
print VSEPARADOR
}

{
i="A"; j="B"; k="C" 
x[i, j, k] = "hola, mundo\n"
print x[i, j , k]
}

END {
print VSEPARADOR
print VPIE
}
