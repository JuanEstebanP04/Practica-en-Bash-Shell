# !/bin/bash
# Programa para ejemplificar como leer un archivo
echo "Leer un archivo"
cat $2
echo -e"\nAlmacenar los valores en una variable"
valorCat=`cat $1`
echo "valorCat"
# Se utiliza la variable especial IFS (Internal File Separator) para evitar que los espacios en blanco al inicio o al final se recorten
echo -e"\nLeer archivos linea por linea utilizando while"
while IFS = read linea
do
  echo "$linea "
done < $1 
