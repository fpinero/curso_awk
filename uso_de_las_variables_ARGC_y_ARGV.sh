# la variable ARGC es Argument Count (muestra el número de argumentos pasados a awk)
# la variable ARGV es Argument Value (muestra el valor del argumento que le indiquemos)

awk 'BEGIN {print ARGC, ARGV[1]}' datos.txt

echo "son dos el número de arumentos porque uno es awk y el dos es el fichero de entrada"

