# ejemplo del uso de gsub para sustituir cadenas (es sensible a mayusculas/minusculas

awk 'BEGIN {
str = "Hola Mundo, Hola Mundo, Hola Mundo"
print "Texto antes del cambio = " str
gsub("Mundo", "Tierra", str)
print "Texto habiendo aplicado gsub sustituyendo Mundo por Tierra"
print str
}'

