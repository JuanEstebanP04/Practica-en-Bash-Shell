# !/bin/bash
# Reto N°2 Curso programación en Bash Shell
# Solicitar la información de cada uno de ustedes como nombres, 
# apellidos, edad, dirección y números telefónicos; 
# y posterior imprima toda la información.

read -p "Ingrese su nombre: " nombre
read -p "Ingrese su Apellido: " apellido
read -p "Ingrese su edad: " edad
read -p "ingrese su dirección: " direccion
read -p "ingrese su numero de telefono: " telefono

echo "los datos"
echo "Nombre: $nombre"
echo "Apellido: $apellido"
echo "Edad: $edad"
echo "Dirección: $direccion"
echo "Telefóno: $telefono"
