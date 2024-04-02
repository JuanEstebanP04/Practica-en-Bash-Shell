# !/bin/bash
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

