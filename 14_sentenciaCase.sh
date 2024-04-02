# !/bin/bash
# Programa de ejemplo para sentencia Case
opcion=""
echo "Ejemplo sentencia Case"
read -p "Ingrese una opción de la A-Z: " opcion
echo -e "\n"
case $opcion in
    "A") echo -e "\n Operación Guardar Archivo";;
    "B") echo "Operación Eliminar Archivo";;
    [C-E]) echo "No esta implementada la operación";;
    "*") echo "Opción incorrecta"
esac
