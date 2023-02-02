# subs() sustituye la primera ocurrencia del texto a buscar en la cadena y vuelca el resultado sobre la variable que le indiquemos, que puede ser la misma que la que hemos utilizado para realizar la busqueda
  
awk 'BEGIN {
 str = "Hola Mundo, Mundo, Mundo"
 print "Texto antes el cambio = " str
 sub("Mundo", "Tierra", str)
 print "texto despues de pasar por sub = ", str
 }'

