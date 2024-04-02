# ! /bin/bash
# Programa para ejemplificar el uso de la sentencia de iteración for loop


arregloNumeros=(1 2 3 4 5 6)

echo "Iterar la lista de números"
for num in ${arregloNumeros[*]}
do
    echo "Número: $num"
done

echo "Iterar en la lista de cadenas"
for nom in "Marco" "Pedro" "Luis" "Daniela"
do
    echo "Nombre: $nom"
done

echo "Iterar en archivos"
for fill in *
do
    echo "Nombre de archivo: $fill"
done

echo "Iterar utilizando un comando"
for fill in $(ls)
do
    echo "Nombre archivo: $fill"
done

echo "Iterar utilizando el formato tradicional"
for ((i=1; i<10; i++))
do
    echo "Número: $i"
done
