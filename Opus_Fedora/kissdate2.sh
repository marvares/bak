#!/bin/bash

# Obtener la hora actual del sistema en formato de 24 horas
hora=$(date +"%H")

# Comprobar si la hora actual está entre las 13:00 y 13:59 horas
if [ $hora -ge 13 ] && [ $hora -lt 14 ]; then
  # Si es así, ejecutar el comando "x"
  message="¡Hola cariño! 
Hoy es $(date '+%A, %d %B %Y y es la %I:%M %p'). 
Recuerda: tú eres mi Bu ;-)"
else
  # De lo contrario, ejecutar el comando "y"
  message="¡Hola cariño! 
Hoy es $(date '+%A, %d %B %Y y son las %I:%M %p'). 
Recuerda: tú eres mi Bu ;-)"
fi

# Ejecutar el comando correspondiente
chafa /home/mart/.config/poster_e1.jpg
echo $message
