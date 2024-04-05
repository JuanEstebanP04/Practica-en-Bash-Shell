# !/bin/bash
# Programa que permite instalar y desintalar postgres

opcion=0
#funcion para instalar postgres
instalar_postgres(){
    echo -e  "\n Verificar instalación de postgres ..."
    verifyInstall=$(which psql)
    if [ $? -eq 0  ]; then
        echo -e "\n Postgres ya se encuentra instalado en el equipo"
    else
        read -s -p "Ingresar contraseña de sudo: " password
        read -s -p "Ingresar contraseña a utilizar en Postgres: " passwordPostgres
        echo "$password" | sudo -S apt update
        echo "$password" | sudo -S apt-get -y install postgresql postgresql-contrib
        sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '{$passwordPostgres}';"
        echo "$password" | sudo -S systemctl enable postgresql.service
        echo "$password" | sudo -S systemctl start postgresql.service
    fi
    read -n1 -s -r -p "Presione [ENTER] para continuar..."
}
#Funcion para desintalar postgres
desintalar_postgres () {
    read -s -p "Ingresar contraseña de sudo: " password
    echo -e "\n"
    echo "$password" | sudo -S systemctl stop postgresql.service
    echo "$password" | sudo -S apt-get -y --purge remove postgresql\*
    echo "$password" | sudo -S rm -r /etc/postgresql
    echo "$password" | sudo -S rm -r /etc/postgresql-common
    echo "$password" | sudo -S rm -r /var/lib/postgresql
    echo "$password" | sudo -S userdel -r postgres
    echo "$password" | sudo -S goupdel postgresql 
    read -n1 -s -r -p "Presione [ENTER] para continuar..."

}
#FUncion para sacar un respaldo
sacar_respaldo () {
    echo "Sacar respaldo..."
    echo "Directorio de Backup: $1"
}
#Funcion para restaurar un respaldo
restaurar_respaldo () {
    echo "Restaurar respaldo..."
    echo "Directorio de respaldo: $1"
}
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
            
            instalar_postgres
            sleep 3
            ;;
        2)
            desintalar_postgres
            sleep 3
            ;;
        3) 
            read -p "Directorio de Backup" directorioBackup
            sacar_respaldo $directorioBackup
            sleep 3
            ;;
        4)
            read -p "Directorio de respaldo" directorioRespaldo
            restaurar_respaldo $directorioRespaldo
            sleep 3
            ;;
        5) 
            echo  -e "\nSalir del programa..."
            exit 0
            ;;
    esac
done
