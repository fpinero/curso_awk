ls -l | awk '{vtotal+=$5} END {print "Total Kbs directorio = ", vtotal/1024 "Kb"}'

