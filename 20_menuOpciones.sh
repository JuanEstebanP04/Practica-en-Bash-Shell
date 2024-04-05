# !/bin/bash
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
