BEGIN {
FS=";"
VTITULO="EJEMPLO DE USO DE CONVERSION MAYUSCULAS A MINUSCULAS EN AWK"
VSEPARADOR="-----------------------------------------------------------"
print VTITULO
print VSEPARADOR
}
{
  vcadena = $3 " " $2
  print vcadena

  print tolower(vcadena)
  print toupper(vcadena)

  print VSEPARADOR
}

