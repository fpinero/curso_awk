BEGIN {
FS=";"
OFS=" - "
VTITULO="EJEMPLO DE CARGA Y VISUALIZACION DE ARRAY EN AWK CON ARCHIVOS DE DATOS"
VPIE="FIN DEL REPORTE"
VSEPARADOR="--------------------------------"
print VTITULO
print VSEPARADOR
vindex=0
}

{
vindex++
datos[vindex]["nombre"] = $2
datos[vindex]["apellidos"] = $3
datos[vindex]["ingreso"] = $4
datos[vindex]["area"] = $5
datos[vindex]["salario"] = $6
}

END {

for (i in datos)
{
  print datos[i]["nombre"]
  print datos[i]["apellidos"]
  print datos[i]["ingreso"]
  print datos[i]["area"]
  print datos[i]["salario"]
  print VSEPARADOR
}

print VPIE

}
