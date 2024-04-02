# !/bin/bash
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
