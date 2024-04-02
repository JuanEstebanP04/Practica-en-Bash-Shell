# ! /bin/bash
# Programa para capturar la información del usuario utilizando echo, read y reply
# Autor: Juan Esteban Pamplona Mesa

option=0
backupName=""

echo "Programa de utilidades Postgres"
echo -n"Ingresar una opción:"
read
option=$REPLY
echo -n"Ingresar el nombre del archivo del backup:"
read
backupName=$REPLY
echo "Opción : $option, backupname: $backupName"



