# !/bin/bash
# Programa para ejemplificar como escribir en un archivo
echo "Escribir un archivo"
echo "Valores escritos con el comando echo" >> $1
#Adición multilinea
cat <<EOM>>$1
$2
EOM
