11_ifElse.sh                                                                                        0000644 0001750 0001750 00000000665 14602536442 013361  0                                                                                                    ustar   jpamplon                        jpamplon                                                                                                                                                                                                               # !/bin/bash
# Uso de la sentencia de desición if, else
notaClase=0
edad=0
echo "Ejemplo sentencia If-Else"
read -n1 -p "Indique cúal es su nota (1-9)" notaClase
echo -e "\n"
if (( $notaClase >= 7 )); then
  echo "El alumno aprueba la materia"
else
  echo "El alumno reprueba la materia"
fi
read -p "Indique cúal es su edad" edad
if [ $edad -le 18 ]; then
  echo "La persona no puede votar"
else
  echo "La persona puede votar"
fi
  
                                                                           11_ifElseIfElse.sh                                                                                  0000644 0001750 0001750 00000000521 14602536442 014440  0                                                                                                    ustar   jpamplon                        jpamplon                                                                                                                                                                                                               # !/bin/bash
# Uso de la sentencia de desición if, else if, else

edad=0
echo "Ejemplo sentencia If-Else if-Else"
read -p "Indique cúal es su edad" edad
if [ $edad -le 18 ]; then
  echo "La persona es adolecente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
  echo "La persona es adulta"
else
  echo "La persona es adulto mayor"
fi
                                                                                                                                                                               12_ifAnidados.sh                                                                                    0000644 0001750 0001750 00000000763 14602536442 014213  0                                                                                                    ustar   jpamplon                        jpamplon                                                                                                                                                                                                               # !/bin/bash
# Programa de ejemplo para if anidados
notaClase=0
continua=""
echo "Ejemplo sentencia If-Else"
read -n1 -p "Indique cúal es su nota (1-9)" notaClase
echo -e "\n"
if [ $notaClase -ge 7 ]; then
  echo "El alumno aprueba la materia"
  read -p "Si va continuar estudiando en el siguiente nivel (s/n): " continua
  if [ $continua = "s" ]; then
    echo "Bienvenido al siguiente nivel"
  else
    echo "Gracias por trabajar con nosotros"
  fi
else
  echo "El alumno reprueba la materia"
fi
             13_expresionesCondicionales.sh                                                                      0000755 0001750 0001750 00000001710 14602663727 017215  0                                                                                                    ustar   jpamplon                        jpamplon                                                                                                                                                                                                               # ! /bin/bash
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
                                                        14_sentenciaCase.sh                                                                                 0000755 0001750 0001750 00000000555 14602665106 014723  0                                                                                                    ustar   jpamplon                        jpamplon                                                                                                                                                                                                               # !/bin/bash
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
                                                                                                                                                   15_arreglos.sh                                                                                      0000755 0001750 0001750 00000001754 14602677044 014003  0                                                                                                    ustar   jpamplon                        jpamplon                                                                                                                                                                                                               # ! /bin/bash
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
                    16_forLoop.sh                                                                                       0000755 0001750 0001750 00000001153 14603004604 013562  0                                                                                                    ustar   jpamplon                        jpamplon                                                                                                                                                                                                               # ! /bin/bash
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
                                                                                                                                                                                                                                                                                                                                                                                                                     17_whileLoop.sh                                                                                     0000755 0001750 0001750 00000000304 14603006444 014106  0                                                                                                    ustar   jpamplon                        jpamplon                                                                                                                                                                                                               # ! /bin/bash
# Programa para ejemplificar el uso de la sentencia de iteración while loop
numero=1
while [ $numero -ne 10 ]
do
    echo "Imprimiendo $numero veces"
    numero=$((numero+1))
done

                                                                                                                                                                                                                                                                                                                            18_loopAnidado.sh                                                                                   0000755 0001750 0001750 00000000324 14603021137 014374  0                                                                                                    ustar   jpamplon                        jpamplon                                                                                                                                                                                                               # ! /bin/bash
# Programa para ejemplificar el uso de los loops anidados
echo "Loops anidados"
for fill in $(ls)
do
    for nombre in {1..4}
    do
        echo "Nombre del archivo: $fill _ $nombre"
    done
done
                                                                                                                                                                                                                                                                                                            19_breahContinue.sh                                                                                 0000755 0001750 0001750 00000000567 14603022011 014733  0                                                                                                    ustar   jpamplon                        jpamplon                                                                                                                                                                                                               # ! /bin/bash
# Programa para ejemplificar el uso de break y continue
echo "Sentencias break y continue"
for fill in $(ls)
do
    for nombre in {1..4}
    do
        if [ $fill = "10_download.sh" ]; then
            break;
        elif [[ $fill == 4* ]]; then
            continue;
        else
            echo "Nombre del archivo: $fill _ $nombre"
        fi
    done
done
                                                                                                                                         1_utilityPostgres.sh                                                                                0000775 0001750 0001750 00000000145 14602333124 015311  0                                                                                                    ustar   jpamplon                        jpamplon                                                                                                                                                                                                               # !/bin/bash
#Programa para realizar algunas operaciones utilitarias de Postgres

echo "Hola mundo!"
                                                                                                                                                                                                                                                                                                                                                                                                                           20_menuOpciones.sh                                                                                  0000755 0001750 0001750 00000002316 14603533314 014610  0                                                                                                    ustar   jpamplon                        jpamplon                                                                                                                                                                                                               # !/bin/bash
# Programa que permite manejar las utilidades de Postgres

opcion=0
while :
do
    #Limpiar la pantalla
    clear
    #Desplegar el menú de opciones
    echo "-----------------------------------------"
    echo "PGUTIL - Programa de utilidad de Postgres"
    echo "-----------------------------------------"
    echo "              Menú principal             "
    echo "-----------------------------------------"
    echo "1- Instalar Postgres"
    echo "2- Desintalar Postregres"
    echo "3- Sacar un respaldo"
    echo "4- Restar respaldo"
    echo "5- Salir"

    #Leer datos del usuario
    read -n1  -p "Ingrese una opción [1-5]: " opcion
    #Validar opción ingresada
    case $opcion in 
        1) 
            echo -e  "\nInstalar Postgres..."
            tar -cvf shellCourse.tar *.sh
            sleep 3
            ;;
        2)
            echo  -e "\nDesintalar Postgres..."
            sleep 3
            ;;
        3) 
            echo -e  "\nSacar respaldo..."
            sleep 3
            ;;
        4)
            echo  -e "\nRestar respaldo..."
            sleep 3
            ;;
        5) 
            echo  -e "\nSalir del programa..."
            exit 0
            ;;
    esac
done
                                                                                                                                                                                                                                                                                                                  21_crearArchivosDirectorios.sh                                                                      0000644 0001750 0001750 00000000533 14603413503 017140  0                                                                                                    ustar   jpamplon                        jpamplon                                                                                                                                                                                                               # !/bin/bash
# Programa para ejemplificar la creación de archivos y directorios

echo "Archivos - Directorios"
if[ $1 = "d"]; then
  mkdir -m 755 $2
  echo "Directorio creado correctamente"
  ls -la $2
elif [ $1 = "f" ]; then
  touch $2
  echo "Archivo creado correctamente"
  ls -la $2
else
  echo "No existe esta opción: $1"
fi
                                                                                                                                                                     22_writeFile.sh                                                                                     0000644 0001750 0001750 00000000305 14603413503 014066  0                                                                                                    ustar   jpamplon                        jpamplon                                                                                                                                                                                                               # !/bin/bash
# Programa para ejemplificar como escribir en un archivo
echo "Escribir un archivo"
echo "Valores escritos con el comando echo" >> $1
#Adición multilinea
cat <<EOM>>$1
$2
EOM
                                                                                                                                                                                                                                                                                                                           23_readFile.sh                                                                                      0000644 0001750 0001750 00000000665 14603413503 013661  0                                                                                                    ustar   jpamplon                        jpamplon                                                                                                                                                                                                               # !/bin/bash
# Programa para ejemplificar como leer un archivo
echo "Leer un archivo"
cat $2
echo -e"\nAlmacenar los valores en una variable"
valorCat=`cat $1`
echo "valorCat"
# Se utiliza la variable especial IFS (Internal File Separator) para evitar que los espacios en blanco al inicio o al final se recorten
echo -e"\nLeer archivos linea por linea utilizando while"
while IFS = read linea
do
  echo "$linea "
done < $1 
                                                                           24_operacionesArchivo.sh                                                                            0000644 0001750 0001750 00000000647 14603413503 015772  0                                                                                                    ustar   jpamplon                        jpamplon                                                                                                                                                                                                               # !/bin/bash
# Programa para ejemplificar las operaciones de un archivo

echo "Operaciones de un archivo"
mkdir -m 755 backupScripts
echo -e "\nCopiar los scripts del directorio actual al nuevo directorio BackupScripts"
cp *.* backupScripts/
ls -la backupScripts/

echo -e"\nMover el directorio de backupScripts a otra ubicación: $HOME"
mv backupScripts $HOME

echo -e"\nEliminar los archivos .txt"
rm *.txt
                                                                                         25_tar.sh                                                                                           0000755 0001750 0001750 00000000254 14603533707 012744  0                                                                                                    ustar   jpamplon                        jpamplon                                                                                                                                                                                                               # !/bin/bash
# Programa que permite manejar las utilidades de Postgres

echo "Empaquetar todos los scripts de la carpeta shellcourse en .tar"
tar -cvf shellCourse.tar *.sh
                                                                                                                                                                                                                                                                                                                                                    26_Gzip.sh                                                                                          0000755 0001750 0001750 00000000531 14603534301 013055  0                                                                                                    ustar   jpamplon                        jpamplon                                                                                                                                                                                                               # !/bin/bash
# Programa para ejemplificar el empaquetamiento con tar y  gzip 

echo "Empaquetar todos los scripts de la carpeta shellcourse en .tar"
tar -cvf shellCourse.tar *.sh

# Cuando se empaqueta con gzip el empaquetamiento anterior se elimina
gzip shellCourse.tar
echo "Empaquetar un solo archivo, con un ratio de 9"
gzip -9 9_options.sh
                                                                                                                                                                       27_pbzip2.sh                                                                                        0000755 0001750 0001750 00000000442 14603534713 013363  0                                                                                                    ustar   jpamplon                        jpamplon                                                                                                                                                                                                               # !/bin/bash
# Programa para ejemplificar el empaquetamiento con pbzip 

echo "Empaquetar todos los scripts de la carpeta shellcourse en .tar"
tar -cvf shellCourse.tar *.sh
pbzip2 -f shellCourse.tar

echo "Empaquetar un directorio con tar y pbzip2"
tar -cf *.sh -c > shellCourseDos.tar.bz2
                                                                                                                                                                                                                              2_variables.sh                                                                                      0000755 0001750 0001750 00000000446 14602344122 014032  0                                                                                                    ustar   jpamplon                        jpamplon                                                                                                                                                                                                               # !/bin/bash
#Programa para revisar la declaración de variables
opcion=0
nombre=Marco

echo "Opción: $opcion y nombre: $nombre"
#Exportar la variable nombre para que este disponible en los demas procesos
export nombre
#Llamar al siguiente script para recuperar la variable
./2_variables_2.sh
                                                                                                                                                                                                                          2_variables_2.sh                                                                                    0000755 0001750 0001750 00000000174 14602344303 014252  0                                                                                                    ustar   jpamplon                        jpamplon                                                                                                                                                                                                               # !/bin/bash
#Programa para revisar la declaración de variables

echo "Opción nombre pasada del script anterior :$nombre"
                                                                                                                                                                                                                                                                                                                                                                                                    3_tipoOperadores.sh                                                                                 0000755 0001750 0001750 00000001601 14602365263 015065  0                                                                                                    ustar   jpamplon                        jpamplon                                                                                                                                                                                                               # ! /bin/bash
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
                                                                                                                               4_argumentos.sh                                                                                     0000755 0001750 0001750 00000000421 14602366277 014260  0                                                                                                    ustar   jpamplon                        jpamplon                                                                                                                                                                                                                # ! bin/bash
 #Programa para ejemplificar el paso de argumentos

 nombreCurso=$1
 horarioCurso=$2

 echo "El nombre del curso es : $nombreCurso dictado en el horario de $horarioCurso"
 echo "El número de parámetros enviados es $#"
 echo "Los paámetros enviados son $*"
                                                                                                                                                                                                                                               5_sustitutionComand.sh                                                                              0000755 0001750 0001750 00000000455 14602370311 015620  0                                                                                                    ustar   jpamplon                        jpamplon                                                                                                                                                                                                               # ! /bin/bash
# Programa para ejecutar comandos dentro de un programa y almacenar el resultado en una variable
# Autor: Juan Esteban Pamplona Mesa

ubicacionActual=`pwd`
infoKernel=$(uname -a)

echo "La ubicación actual es la siguiente: $ubicacionActual"
echo "La info del kernel es : $infoKernel"


                                                                                                                                                                                                                   6_readEcho.sh                                                                                       0000755 0001750 0001750 00000000567 14602373575 013622  0                                                                                                    ustar   jpamplon                        jpamplon                                                                                                                                                                                                               # ! /bin/bash
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



                                                                                                                                         7_read.sh                                                                                           0000755 0001750 0001750 00000000537 14602374113 013006  0                                                                                                    ustar   jpamplon                        jpamplon                                                                                                                                                                                                               # ! /bin/bash
# Programa para capturar la información del usuario utilizando el comando read
# Autor: Juan Esteban Pamplona Mesa

option=0
backupName=""

echo "Programa de utilidades Postgres"
read -p "Ingresar una opción:" option
read -p "Ingresar el nombre del archivo del backup:" backupName

echo "Opción : $option, backupname: $backupName"



                                                                                                                                                                 8_readValidate.sh                                                                                   0000755 0001750 0001750 00000000654 14602376302 014463  0                                                                                                    ustar   jpamplon                        jpamplon                                                                                                                                                                                                               # ! /bin/bash
# Programa para validar la información capturada del usuario con read
# Autor: Juan Esteban Pamplona Mesa

opcion=0
backupName=""
clave=""

echo "Programa utilidades Postgres"
#Acepta el ingreso de información de solo un caracter
read -n1  -p "Ingrese una opción: " opcion
echo -e "\n"
read -n10  -p "Ingrese el nombre del archivo backup:" backupName
echo -e "\n"
read -s -p "Clave" clave
echo "Clave : $clave"
                                                                                    8_regularExpression.sh                                                                              0000644 0001750 0001750 00000001774 14602375325 015624  0                                                                                                    ustar   jpamplon                        jpamplon                                                                                                                                                                                                               # ! /bin/bash
# Programa para ejemplificar como capturar la información del usuario y validarla utilizando expresiones regulares


identificacionRegex='^[0-9]{10}$'
paisRegex='^EC|COL|US$'
fechaNacimientoRegex='^19|20[0-8]{2}[1-12][1-31]$'

echo "Expresiones regulares"
read -p "Ingresar una identificacion:" identificacion
read -p "Ingresar las iniciales de un país [EC, COL, US]:" pais
read -p "Ingresar la fecha de nacimiento [yyyyMMdd]:" fechaNacimiento 

#Validación Identificación
if [[ $identificacion =~ $identificacionRegex ]]; then
    echo "Identificación $identificacion válida"
else
    echo "Identificación $identificacion inválida"
fi

#Validación País
if [[ $pais =~ $paisRegex ]]; then
    echo "País $pais válido"
else
    echo "País $pais inválido"
fi

#Validación Fecha Nacimiento
if [[ $fechaNacimiento =~ $fechaNacimientoRegex ]]; then
    echo "Fecha Nacimiento $fechaNacimiento válida"
else
    echo "Fecha Nacimiento $fechaNacimiento inválida"
fi    Reto2.sh                                                                                            0000644 0001750 0001750 00000001101 14602536442 012626  0                                                                                                    ustar   jpamplon                        jpamplon                                                                                                                                                                                                               # !/bin/bash
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
                                                                                                                                                                                                                                                                                                                                                                                                                                                               Reto3.sh                                                                                            0000644 0001750 0001750 00000001603 14602536442 012636  0                                                                                                    ustar   jpamplon                        jpamplon                                                                                                                                                                                                               # !/bin/bash
# Reto N°3 Curso programación en Bash Shell
# 1- Solicitar que se ingrese un valor del 1 al 5.
# 2- Según el valor ingresado, hacer la validación utilizando las condicionales e imprimir el resultado.
# 3- Construir expresiones de validación numéricas, cadenas y archivos según la opción ingresada.
#!/bin/bash

option=0

# Verificar si la opción es un número
if [[ "$option" =~ ^[0-9]+$ ]]; then
  # Verificar si la opción está dentro del rango válido
  if [ $option -ge 0 ] && [ $option -le 5 ]; then
    echo "La opción seleccionada '$option' SÍ es una opción válida."
  else
    echo "La opción seleccionada '$option' NO es una opción válida."
    fi
else
  # Verificar si la opción es una cadena vacía
  if [ -z "$option" ]; then
    echo "No se ingresó ninguna opción."
  else
    echo "La opción seleccionada '$option' NO es un número válido."
  fi
fi

                                                                                                                             Reto5.sh                                                                                            0000755 0001750 0001750 00000001055 14603527475 012653  0                                                                                                    ustar   jpamplon                        jpamplon                                                                                                                                                                                                               # !/bin/bash
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
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   molestar.sh                                                                                         0000755 0001750 0001750 00000000255 14603432100 013460  0                                                                                                    ustar   jpamplon                        jpamplon                                                                                                                                                                                                               # !/bin/bash
echo -e "\nSusana la rana"
echo -e "\nTe quiero mucho" 
echo "---------------------------------------"
cowsay "Felicidades por tu camisa, niña hermosa"

                                                                                                                                                                                                                                                                                                                                                   reto4.sh                                                                                            0000755 0001750 0001750 00000003600 14603026016 012671  0                                                                                                    ustar   jpamplon                        jpamplon                                                                                                                                                                                                               # !/bin/bash
# Solución reto 4 curso Programación en Bash Shell
#Crear un menú con las siguientes opciones:

#Procesos Actuales,
#Memoria Disponible,
#Espacio en Disco,
#Información de Red,
#Variables de Entorno Configuradas,
#Información Programa
#Backup información

#Posterior a esto vamos  a recuperar la opción ingresada, 
#validarla e imprimir la opción y el título de acuerdo a lo ingresado

opcion=0
while :
do
    #Limpiar la pantalla
    clear
    #Desplegar el menú de opciones
    echo "-----------------------------------------"
    echo "           SOLUCIÓN RETO N°4"
    echo "-----------------------------------------"
    echo "             Menú principal              "
    echo "-----------------------------------------"
    echo "1- Procesos Actuales"
    echo "2- Memoria Disponible"
    echo "3- Espacio en Disco"
    echo "4- Información de Red"
    echo "5- Variables de Entorno Configuradas"
    echo "6- Backup información"
    echo "7- Salir del programa"

    #Leer datos del usuario
    read -n1  -p "Ingrese una opción [1-5]: " opcion
    #Validar opción ingresada
    case $opcion in 
        1) 
            echo -e  "\nOpción $opcion: Procesos Actuales..."
            sleep 3
            ;;
        2)
            echo  -e "\nOpción $opcion: Memoria Disponible..."
            sleep 3
            ;;
        3) 
            echo -e  "\nOpción $opcion: Espacio en Disco..."
            sleep 3
            ;;
        4)
            echo  -e "\nOpción $opcion: Información de Red..."
            sleep 3
            ;;
	5)
            echo  -e "\nOpción $opcion: Variables de Entorno Configuradas..."
            sleep 3
            ;;
	6)
            echo  -e "\nOpción $opcion: Backup información..."
            sleep 3
            ;;
        7) 
            echo  -e "\nOpción $opcion: Salir del programa..."
            exit 0
            ;;
    esac
done
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                