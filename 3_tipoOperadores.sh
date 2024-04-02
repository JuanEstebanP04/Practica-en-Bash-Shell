# ! /bin/bash
# Programa para revisar los tipos de operadores
# Autor: Juan Esteban Pamplona Mesa

numA=10
numB=4

echo "Operadores aritméticos"
echo "Números: A=$numA y B=$numB"
echo "Sumar A+B=" $((numA+numB))
echo "Restar A-B=" $((numA-numB))
echo "Multiplicar A*B=" $((numA*numB))
echo "Dividir  A/B=" $((numA/numB))
echo "Residuo A%B=" $((numA%numB))


echo -e "\n Operadores relacionales"
echo "Números: A=$numA y B=$numB"
echo "A>B =" $((numA > numB))
echo "A<B =" $((numA < numB))
echo "A>=B =" $((numA >= numB))
echo "A<=B =" $((numA <= numB))
echo "A==B =" $((numA == numB))
echo "A<=B =" $((numA <= numB))

echo -e "\n Operadores de asignación"
echo "Números: A=$numA y B=$numB"
echo "Sumar A+= B" $((numA +=  numB))
echo "Restar  A-= B" $((numA -=  numB))
echo "Multiplicar A*= B" $((numA *=  numB))
echo "Dividir A/= B" $((numA /=  numB))
echo "Residuo A%= B" $((numA %=  numB))
