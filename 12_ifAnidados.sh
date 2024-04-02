# !/bin/bash
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
