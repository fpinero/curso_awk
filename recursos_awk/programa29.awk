BEGIN {
  str = "Estamos aprendiendo a usar el comando match sobre cadenas."
  subs = "usar"
  ret = match(str, subs)

  printf "La cadena original es \"%s\" \n", str
  if (ret == 0) {
    printf "La subcadena \"%s\" NO se encuentra en la cadena original.\n", subs
  }
  else
  {
    printf "La subcadena \"%s\" se encuentra en la posicion %d \n", subs, ret
    printf "RSTART= %s, RLENGTH=%s \n", RSTART, RLENGTH
  }
}

