# ! /bin/bash
# Programa para ejemplificar el uso de expresiones condicionales
# Autor: Juan Esteban Pamplona Mesa
edad=0
pais=""
pathArchivo=""
read -p "Ingrese su edad: " edad
read -p "Ingrese su pais: " pais
read -p "Ingrese la dirección de su archivo: " pathArchivo

echo -e "\nExpreciones condicionales con números"
if [ $edad -lt 10 ]; then
    echo "La persona es un niño o niña"
elif [ $edad -ge 10 ] && [ $edad -lt 17 ]; then
    echo "La persona es un adolecente"
else
    echo "la persona es mayor de edad"
fi

echo -e "\nExpreciones condicionales con cadenas"
if [ $pais = "EEUU" ]; then
    echo "La persona es americana"
elif [ $pais = "Ecuador" ] || [ $pais = "Colombia" ]; then
    echo "La persona es de Sur America"
else
    echo "Se desconoce la nacionalidad"
fi

echo -e "\nExpreciones condicionales con archivos"
if [ -d $pathArchivo ]; then
    echo "El directorio $pathArchivo existe"
else
    echo "El directorio $pathArchivo NO existe"
fi
