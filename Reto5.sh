# !/bin/bash
#Solución reto N°5
#Modificar el archivo utilityHost.sh para escribir la información solicitada a un archivo de log 
#cuyo nombre será log donde yyyy representa el año, MM el mes, 
#DD el día, HH la hora, mm los minutos y SS los segundos

fecha=$(date +%Y%m%d%H%M%S)
usuario=$USER
archivo=log-$usuario-$fecha.log
echo "Creando el archivo.log..."
touch "$archivo"
ls -la "$archivo"
echo -e"\n"
echo -e"\nEl archivo: $archivo fue creado exitosamente\n"
cat "$archivo"
cat <<EOM >>$archivo
"Funciona ome perro maldito"
EOM
