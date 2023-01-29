# solo si el campo 2 del registro es superior a 200000 se imprime

awk -F";" '{if ($6 > 300000) print $2}' datos.txt
