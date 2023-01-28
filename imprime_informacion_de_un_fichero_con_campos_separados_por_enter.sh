# en la variable FS se indica el separador de campos que utiliza el fichero y la variable RS el separador de registros que utiliza el fichero a tratar.
 
awk 'BEGIN {FS="\n"; RS=""} {print $4,$2,$3}' datos4.txt 

