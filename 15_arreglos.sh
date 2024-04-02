# ! /bin/bash
# Programa para ejemplificar el uso de los arreglos


arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Marco, Antonio, Pedro, Susana)
arregloRangos=({A..Z} {10..20})

#Imprimir todos los valores
echo "Arreglo de Números: ${arregloNumeros[*]}"
echo "Arreglo de Cadenas: ${arregloCadenas[*]}"
echo "Arreglo de Rangos: ${arregloRangos[*]}"

#Imprimir tamaño de los arreglos
echo "Tamaño arreglo de Números:${#arregloNumeros[*]}"
echo "Tamaño arreglo de Cadenas:${#arregloCadenas[*]}"
echo "Tamaño arreglo de Rangos:${#arregloRangos[*]}"

#Imprimir la posición especifica del arreglo de numeros, cadenas y rango

echo "Posición 3 de arreglo de Números:${arregloNumeros[2]}"
echo "Posición 3 de arreglo de Cadenas:${arregloCadenas[2]}"
echo "Posición 3 de arreglo de Rangos:${arregloRangos[2]}"

#Añadir y eliminar valores en un arreglo
arregloNumeros[7]=20
unset arregloNumeros[0]
echo "Arreglo de numeros: ${arregloNumeros[*]}"
echo "Tamaño arreglo de numeros: ${#arregloNumeros[*]}"
