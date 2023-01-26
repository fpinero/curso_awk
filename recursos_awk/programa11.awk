BEGIN {
FS=";"
OFS=" "
VTITULO="REPORTE GENERAL DE SALARIOS"
VPIE="FIN DEL REPORTE"
VSEPARADOR="--------------------------------"
print VTITULO
print VSEPARADOR
VSUMA=0
VCALTOS=0
VALTOS=0
VCBAJOS=0
VBAJOS=0
vcantidad=0
}
{
VCAMPOS=0
vcantidad+=1
while (VCAMPOS < 6)
{
   VCAMPOS=VCAMPOS+1

   if (VCAMPOS = 6)
   {
     VSALARIO=$6
     VSUMA+=VSALARIO
  
     if (VSALARIO > 300000)
     {
        VCALTOS+=1
        VALTOS+=VSALARIO
     } else
     {
        VCBAJOS+=1
        VBAJOS+=VSALARIO
     }
   } 
}
}
END {
vtotal=VALTOS+VBAJOS
print "Cantidad de Empleados : " vcantidad
print "Total salario Empresa : " vtotal
print "Salarios Altos (" VCALTOS ") \t" VALTOS
print "Salarios Bajos (" VCBAJOS ") \t" VBAJOS
VPROMEDIO=vtotal/15
print "Promedio de salario   : " VPROMEDIO
print VSEPARADOR
print VPIE
}
