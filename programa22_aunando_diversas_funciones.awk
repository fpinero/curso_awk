# el reporte se ordena por la primera letra del nombre del empleado

BEGIN {
	FS=";"
	VTITULO="REPORTE DE EMPLEADOS ORDENADO POR NOMBRES"
	VPIE="FIN DEL REPORTE"
	print VTITULO
	printf "%-15s %-15s %-10s %-15s %s \n", "---------------", "---------------", "----------", "---------------", "----------"
	printf "%-15s %-15s %-10s %-15s %s \n", "Nombre", "Apellidos", "F.Ingreso", "Area", "Salario"
	
	printf "%-15s %-15s %-10s %-15s %s \n", "---------------", "---------------", "----------", "---------------", "----------"
	vindex=0
	vsuma_salarios=0
}

{
	vindex++
	datos[vindex]["nombre"] = $2
	datos[vindex]["apellidos"] = $3
	datos[vindex]["ingreso"] = $4
	datos[vindex]["area"] = $5
	datos[vindex]["salario"] = $6
	vsuma_salarios += $6

}

END {


	for (i = 1; i <= vindex; i++) { #se recorre todos los datos del array
   		for (j = 1; j <= vindex-1; j++) { #se recorre hasta el penultimo dato del array

      			if (datos[j]["nombre"] > datos[j+1]["nombre"]) # el > comparando cadenas ya implica comparar alfabeticamente 
      			{
         			c1=datos[j+1]["nombre"]
         			c2=datos[j+1]["apellidos"]
         			c3=datos[j+1]["ingreso"]
         			c4=datos[j+1]["area"]
         			c5=datos[j+1]["salario"]
         			datos[j+1]["nombre"]=datos[j]["nombre"]
         			datos[j+1]["apellidos"]=datos[j]["apellidos"]
         			datos[j+1]["ingreso"]=datos[j]["ingreso"]
         			datos[j+1]["area"]=datos[j]["area"]
         			datos[j+1]["salario"]=datos[j]["salario"]
         			datos[j]["nombre"]=c1
         			datos[j]["apellidos"]=c2
         			datos[j]["ingreso"]=c3
         			datos[j]["area"]=c4
         			datos[j]["salario"]=c5
      			}

  	 	}	
	}

	for (i = 1; i <= vindex; i++) {
   	printf "%-15s %-15s %-10s %-15s %s \n", datos[i]["nombre"], datos[i]["apellidos"], datos[i]["ingreso"], datos[i]["area"], datos[i]["salario"]

	}
	printf "%-15s %-15s %-10s %-15s %s \n", "---------------", "---------------", "----------", "---------------", "----------"
	printf "%-57s %d \n", " ", vsuma_salarios
	print VPIE

}
