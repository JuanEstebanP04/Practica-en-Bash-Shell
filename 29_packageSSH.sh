# !/bin/bash
# Programa para ejemplificar ella forma de como transferir por la red utilizando el comando rsync, con las opciones de empaquetamiento para optimizar la velocidad de transferencia

echo "Empaquetar todos los scripts de la carpeta shellcourse y transferirlos por la red a otro equipo ytilizando el comando rsync"

host=""
usuario=""
read -p "Ingrese el host: " host
read -p "Ingrese el usuario: " usuario
echo -e "\nEn este momento se procederá a empaquetar la carpeta y transferir segun los datos ingresados"
rsync -avz $(pwd) $usuario@$host:/Users/ASUS/Desktop
