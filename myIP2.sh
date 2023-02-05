#! /bin/bash

ifconfig | awk 'BEGIN{FS=" "; RS="\n"; vindex=0} {vindex++; x[vindex] = $1; vindex++; x[vindex] = $2}
END { for (i in x)
		{
  		# print i "=" x[i];
  		if (x[i] == "inet" && x[i+1] != "127.0.0.1") {
  		iface = x[i-2];
  		sub(":","",iface);

  		print "la IP de " iface " es: " x[i+1]
  		}
	}	;
  # if ($1 == "inet" && $2 != "127.0.0.1" ) {print "la IP del equipo es: " $2}
  }'

