# la variable NF muestra el contenido del ultimo campo de cada registro, util para cuando no sabemos cuantos campos tiene cada registro.

awk 'BEGIN {FS=";"; OFS=" "} {print $NF}' datos.txt
