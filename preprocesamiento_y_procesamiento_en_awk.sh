# cada bloque en awq se definen dentro de los corchetes, en este el primer bloque preprocesa mostrando un texto y el segundo bloque mustra el contenido de un fichero


awk 'BEGIN {print "Reporte de Empleados"} {print $0}' datos.txt

