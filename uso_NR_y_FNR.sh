# NR es una variable de awk que te muestra el numero de ocurrencia del registro en el fichero tratado
# FNR es una variable de awk que te muentra el numero de ocurrencia del registro arrastrando la suma desde los archivos tratados previamente (util si se estan tratando más de un archivo a la vez)

awk 'BEGIN {FS=";"} {print $2, "FNR es " FNR, "NR es " NR} END {print NR, "lineas procesadas"}' datos.txt datos_presupuesto.txt


