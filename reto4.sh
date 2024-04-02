# !/bin/bash
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
