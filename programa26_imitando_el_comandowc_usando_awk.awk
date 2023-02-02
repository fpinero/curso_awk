BEGIN {
  archivo = ARGV[1] #ARGV[1] contiene el valor del argumento 1, que es nombre del fichero a procesar
}
{
  nc = nc + length($0) + 1  # nc va almacenando la suma de la longitud de cada linea +1, +1 por el return
  nw = nw + NF # NF es una variable interna de awk que contiene el numero total de campos (palabras) que tiene el registro actual, de este modo obtengo el numero total de palabras que contiene el fichero q estoy tratando
}
END {
  print NR, " lineas", nw, " palabras", nc " caracteres", " en ", archivo # NR es una variable de awk que almacena el numero de lineas que contiene el archivo
}

