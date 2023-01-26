BEGIN {
FS=";"
OFS=" - "
VTITULO="EJEMPLO DE CARGA Y VISUALIZACION DE ARRAY EN AWK CON ARCHIVOS DE DATOS"
VPIE="FIN DEL REPORTE"
VSEPARADOR="--------------------------------"
print VTITULO
printf "%-15s %-15s %-10s %-15s %s \n", "---------------", "---------------", "----------", "---------------", "----------"
printf "%-15s %-15s %-10s %-15s %s \n", "Nombre","Apellidos","F.Ingreso","Area","Salario"
printf "%-15s %-15s %-10s %-15s %s \n", "---------------", "---------------", "----------", "---------------", "----------"
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
  printf "%-15s %-15s %-10s %-15s %.2f \n", datos[i]["nombre"], datos[i]["apellidos"], datos[i]["ingreso"], datos[i]["area"], datos[i]["salario"]
}

printf "%-15s %-15s %-10s %-15s %s \n", "---------------", "---------------", "----------", "---------------", "----------"
print VPIE

}
