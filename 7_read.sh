# ! /bin/bash
# Programa para capturar la información del usuario utilizando el comando read
# Autor: Juan Esteban Pamplona Mesa

option=0
backupName=""

echo "Programa de utilidades Postgres"
read -p "Ingresar una opción:" option
read -p "Ingresar el nombre del archivo del backup:" backupName

echo "Opción : $option, backupname: $backupName"



