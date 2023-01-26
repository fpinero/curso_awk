En mac instala gawk para usar la versión stadard de gnu

- brew install gawk

y añade a .zshrc o .bashrc lo siguiente para usar en la terminal el comando awk en lugar de gawk

-  PATH="/opt/homebrew/opt/gawk/libexec/gnubin:$PATH"


