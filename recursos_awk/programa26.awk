BEGIN {
  archivo = ARGV[1]
}
{
  nc = nc + length($0) + 1
  nw = nw + NF
}
END {
  print NR, " lineas", nw, " palabras", nc " caracteres", " en ", archivo
}

