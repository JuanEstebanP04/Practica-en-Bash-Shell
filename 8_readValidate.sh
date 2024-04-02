# ! /bin/bash
# Programa para validar la información capturada del usuario con read
# Autor: Juan Esteban Pamplona Mesa

opcion=0
backupName=""
clave=""

echo "Programa utilidades Postgres"
#Acepta el ingreso de información de solo un caracter
read -n1  -p "Ingrese una opción: " opcion
echo -e "\n"
read -n10  -p "Ingrese el nombre del archivo backup:" backupName
echo -e "\n"
read -s -p "Clave" clave
echo "Clave : $clave"
