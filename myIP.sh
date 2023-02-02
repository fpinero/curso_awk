#! /bin/bash

ifconfig | awk 'BEGIN{FS=" "; RS="\n"} { if ($1 == "inet" && $2 != "127.0.0.1" ) {print "la IP del equipo es: " $2}}'

